import serial
import time
with serial.Serial("/dev/pty1",921600) as ser:
    while True:
        print(ser.read())
        time.sleep(1)
    