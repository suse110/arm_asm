import serial

ser = serial.Serial("COM2", 921600)

def write_log(data):
    length = "%04x" % (len(data) + 4)
    data = '5A5B%s%s00000100' % (length[2:], length[:2])
    log = bytes.fromhex(data) + bytes(data, 'utf-8')
    ser.write(log)
    
    
def write_execption(payload, id, region):
    data_len = "%04x" % len(payload)
    length = "%04x" % (len(payload) + 4 + 4)
    
    data = '5A5B%s%s00000200%02x%02x%s%s' % (length[2:], length[:2], id, region, data_len[2:], data_len[:2])
    if id == 1:
        log = bytes.fromhex(data) + payload
    else:    
        log = bytes.fromhex(data) + bytes(payload, 'utf-8')
        
    ser.write(log)
    
write_execption("NVIC",0,0)
write_execption(b'\x12\x34',1,0)
write_execption(b'\x56\x78',1,1)
write_execption(b'\xcd\xbb',1,2)
write_execption("NVIC",2,0)

ser.close()