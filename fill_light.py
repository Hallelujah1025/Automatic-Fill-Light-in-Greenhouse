import PCF8591 as ADC
import illuminance as illu
import time
import datetime
import RPi.GPIO as GPIO
from rpi_ws281x import *

def setSwitch(sr,ass):
    nTime = datetime.datetime.now()
    nt = int(nTime.hour) *100 + int(nTime.minute)
    print(nt)
    if nt >= sr and nt <= ass:
        print('start')
        lightVal= ADC.AD() 
        lux = illu.getIlluminance()
        return True
            
    if nt >= ass:
        print('stop')
        return False
    
def turnON(strip):
    print ('turn on')
    lightVal= ADC.AD() 
    lux = illu.getIlluminance() 
    strip.setBrightness(lightVal) 
    strip.show() 
    print(lightVal,lux)
    return lightVal,lux

            
def turnOFF(strip):
    print('turn off')
    strip.setBrightness(0) 
    strip.show()
