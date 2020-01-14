# -*- coding: utf-8 -*-
import paho.mqtt.client as mqtt
import time
import hashlib
import hmac
import random
import json
import api
import fill_light
import RPi.GPIO as GPIO
from rpi_ws281x import *


LED_COUNT = 60
LED_PIN = 18
strip = PixelStrip(LED_COUNT, LED_PIN)
strip.begin()
for i in range(strip.numPixels()):
    strip.setPixelColor(i, Color(255, 0, 0))
        
GPIO.setmode(GPIO.BCM)
GPIO.setup(4,GPIO.IN)

options = {
    'productKey': 'a1lwV5asSXB',
    'deviceName': 'fill_light',
    'deviceSecret': 'oNOjQVaF0CRWqwCSvh6IxfoEcC0DxTWI',
    'regionId': 'cn-shanghai'
}

HOST = options['productKey'] + '.iot-as-mqtt.' + options['regionId'] + '.aliyuncs.com'
PORT = 1883
PUB_TOPIC1 = "/sys/" + options['productKey'] + "/" + options['deviceName'] + "/thing/event/property/post"
PUB_TOPIC2 = "/sys/a1lwV5asSXB/fill_light/thing/event/TimeNotification/post"
PUB_TOPIC3 = "/sys/a1lwV5asSXB/fill_light/thing/event/Error/post"

# The callback for when the client receives a CONNACK response from the server.
def on_connect(client, userdata, flags, rc):
    print("Connected with result code " + str(rc))
    # client.sub


# The callback for when a PUBLISH message is received from the server.
def on_message(client, userdata, msg):
    print(msg.topic + " " + str(msg.payload))


def hmacsha1(key, msg):
    return hmac.new(key.encode(), msg.encode(), hashlib.sha1).hexdigest()


def getAliyunIoTClient():
    timestamp = str(int(time.time()))
    CLIENT_ID = "paho.py|securemode=3,signmethod=hmacsha1,timestamp=" + timestamp + "|"
    CONTENT_STR_FORMAT = "clientIdpaho.pydeviceName" + options['deviceName'] + "productKey" + options[
        'productKey'] + "timestamp" + timestamp

    USER_NAME = options['deviceName'] + "&" + options['productKey']
    PWD = hmacsha1(options['deviceSecret'], CONTENT_STR_FORMAT)
    client = mqtt.Client(client_id=CLIENT_ID, clean_session=False)
    client.username_pw_set(USER_NAME, PWD)
    return client


if __name__ == '__main__':
    client = getAliyunIoTClient()
    client.on_connect = on_connect
    client.on_message = on_message

    client.connect(HOST, 1883, 300)
    
    sunrise = api.getSunrise()
    sunset = api.getSunset()
    lightVal = 0
    lux = 0
    
    payload_json = {
        'id': int(time.time()),
        'params': {
            'PowerSwitch': 1,
            'TimeNotification': sunrise
        },
        'method': "thing.event.property.post",
        'method': "thing.event.TimeNotification.post"
    }

    print('start send data')
    client.publish(PUB_TOPIC1, payload=str(payload_json), qos=1)
    client.publish(PUB_TOPIC2, payload=str(payload_json), qos=1)
    client.loop_start()

    try:
        while fill_light.setSwitch(sunrise,sunset):
            lightVal = fill_light.turnON(strip)[0]
            lux = fill_light.turnON(strip)[1]
            print(lightVal,lux)
            payload_json = {
                'id': int(time.time()),
                'params': {
                    'LightLuminance': lightVal,
                    'LightLux': lux,
                },
                'method': "thing.event.property.post",
                'method': "thing.event.TimeNotification.post",
                'method': "thing.event.Error.post"
            }
            
            print('send data to iot server: ' + str(payload_json))
            client.publish(PUB_TOPIC1, payload=str(payload_json), qos=1)
            client.publish(PUB_TOPIC3, payload=str(payload_json), qos=1)
            client.loop_start()
            time.sleep(0.2)
        else:
            fill_light.turnOFF(strip)
            
    except KeyboardInterrupt:
        strip.setBrightness(0) 
        strip.show()
        GPIO.cleanup()
    


