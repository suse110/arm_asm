import serial
import time
with serial.Serial("/dev/pty0",921600) as ser:
    while True:
        ser.write("hello\n".encode('utf-8'))
        time.sleep(1)
    