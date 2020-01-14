import smbus
import time

__DEV_ADDR=0x23

__CMD_PWR_OFF=0x00
__CMD_PWR_ON=0x01
__CMD_RESET=0x07
__CMD_CHRES=0x10
__CMD_CHRES2=0x11
__CMD_CLHRES=0x13
__CMD_THRES=0x20
__CMD_THRES2=0x21
__CMD_TLRES=0x23
__CMD_SEN100H=0x42
__CMD_SEN100L=0X65
__CMD_SEN50H=0x44
__CMD_SEN50L=0x6A
__CMD_SEN200H=0x41
__CMD_SEN200L=0x73

bus=smbus.SMBus(1)
bus.write_byte(__DEV_ADDR,__CMD_PWR_ON)
bus.write_byte(__DEV_ADDR,__CMD_RESET)
bus.write_byte(__DEV_ADDR,__CMD_SEN100H)
bus.write_byte(__DEV_ADDR,__CMD_SEN100L)
bus.write_byte(__DEV_ADDR,__CMD_PWR_OFF)

def getIlluminance():
    bus.write_byte(__DEV_ADDR,__CMD_PWR_ON)
    bus.write_byte(__DEV_ADDR,__CMD_THRES2)
    time.sleep(0.2)
    res=bus.read_word_data(__DEV_ADDR,0)
    res=((res>>8)&0xff)|(res<<8)&0xff00
    res=round(res/(2*1.2),2)
    result="光照强度: "+str(res)+"lux"
    return res