import smbus
import time

address = 0x48
A0 = 0x40
A1 = 0x41
A2 = 0X42
A3 = 0X43
value = 0

bus = smbus.SMBus(1)

def AD():
    while True:
        bus.write_byte(address,A0)
        value = bus.read_byte(address)
        return value
        
        

