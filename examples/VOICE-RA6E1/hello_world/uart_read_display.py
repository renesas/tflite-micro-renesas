import serial
import numpy as np
import struct

import time
import matplotlib.pyplot as plt

SER_PORT = "COM6"

ser = serial.Serial(SER_PORT,bytesize=8,stopbits=1)
ser.baudrate = 9600
ser.flush()
while 1:
    s = ser.read(2*4)
    s = struct.unpack('<2f',s)
    print(s)
