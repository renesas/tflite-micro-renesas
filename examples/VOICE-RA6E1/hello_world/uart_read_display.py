import serial
import numpy as np
import struct

import time
import matplotlib.pyplot as plt

ser = serial.Serial('COM6',bytesize=8,stopbits=1)
ser.baudrate = 9600
ser.flush()
while 1:
    s = ser.read(2*4)
    s = struct.unpack('<2f',s)
    if(s[0] or s[1]): #avoid printing zeros when no bytes are received 
        print(s)
