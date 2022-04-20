# Win32 Wireshark named pipes example
# Requires Python for Windows and the Python for Windows Extensions:
# http://www.python.org
# http://sourceforge.net/projects/pywin32/

from email import header
from socket import timeout
import win32pipe, win32file
import time
import datetime
import serial
import struct
import subprocess
import codecs
import pcapng.blocks as blocks
from pcapng import FileWriter


                         
class win32PipeWriter():
    def __init__(self, name=None):
        self.pipe = None
        self.pipe_name = name
        if name is not None:
            #create the named pipe \\.\pipe\wireshark
            self.pipe = win32pipe.CreateNamedPipe(
                self.pipe_name,
                win32pipe.PIPE_ACCESS_OUTBOUND,
                win32pipe.PIPE_TYPE_MESSAGE | win32pipe.PIPE_WAIT,
                1, 65536, 65536,
                300,
                None)

    def write(self, data):
        #send pcap data trough the pipe
        win32file.WriteFile(self.pipe, data)

    def create(self, name):
        self.pipe_name = name
        #create the named pipe \\.\pipe\wireshark
        self.pipe = win32pipe.CreateNamedPipe(
            self.pipe_name,
            win32pipe.PIPE_ACCESS_OUTBOUND,
            win32pipe.PIPE_TYPE_MESSAGE | win32pipe.PIPE_WAIT,
            1, 65536, 65536,
            300,
            None)

    def connect(self):        
        #connect to pipe
        win32pipe.ConnectNamedPipe(self.pipe, None)

def pcapng_format_write():
    shb = blocks.SectionHeader(
        options={
            "shb_hardware": "artificial",
            "shb_os": "python",
            "shb_userappl": "python-pcapng",
        }
    )
    idb = shb.new_member(
        blocks.InterfaceDescription,
        link_type=0xFFFF,
        options={
            "if_description": "Hand-rolled",
            "if_os": "Python",
            "if_filter": [(0, b"tcp port 23 and host 192.0.2.5")],
        },
    )

    
    # fmt: off
    # test_pl = (
    #         0xff, 0xff, 0xff, 0xff, 0xff, 0xff,     # dest MAC
    #         0x11, 0x22, 0x33, 0xdd, 0xaa, 0x00,     # src MAC
    #         0x08, 0x00,                             # ethertype (ipv4)
    #         0x45, 0x00, 0x00, 31,                   # IP start
    #         0x00, 0x00, 0x00, 0x00,                 # ID+flags
    #         0xfe, 17,                               # TTL, UDP
    #         0x00, 0x00,                             # checksum
    #         127, 0, 0, 1,                           # src IP
    #         127, 0, 0, 2,                           # dst IP
    #         0x12, 0x34, 0x56, 0x78,                 # src/dst ports
    #         0x00, 11,                               # length
    #         0x00, 0x00,                             # checksum
    #         0x44, 0x41, 0x50,                       # Payload
    # )
    # fmt: on
    test_pl = (0x5a, 0x08,0x00,0x01,0x00,0x31,0x32,0x33,0x34,0x35,0x36)    
    win32_pipe_writer = win32PipeWriter()
    win32_pipe_writer.create(r"\\.\pipe\wireshark")
    win32_pipe_writer.connect()

    # FileWriter() immediately writes the SHB and any IDBs you've added to it
    writer = FileWriter(win32_pipe_writer, shb)

    spb = shb.new_member(blocks.SimplePacket)
    # spb = shb.new_member(blocks.EnhancedPacket)
    spb.packet_data = bytes(test_pl)
    while True:
        writer.write_block(spb)
        time.sleep(1)
        break

class ws_pipe():
    def __init__(self, wireshark_abs_path=None, pipe_name=r'\\.\pipe\wireshark'):
        self.magic_num = 0xa1b2c3d4
        self.major_ver = 0x02
        self.minor_ver = 0x04
        self.link_type = 1# 802.11: 105
        self.pipe_name = pipe_name
        self.wireshark_abs_path = wireshark_abs_path
        
    def create_pipe(self):
        print("self.pipe_name:", self.pipe_name)
        self.pipe = win32pipe.CreateNamedPipe(
                    self.pipe_name,
                    win32pipe.PIPE_ACCESS_OUTBOUND,
                    win32pipe.PIPE_TYPE_MESSAGE | win32pipe.PIPE_WAIT,
                    1, 65536, 65536,
                    300,
                    None)
    
    def connect_pipe(self):
        '''
        struct pcap_file_header
        {
            uint32_t magic_number;  /* magic number */
            uint16_t version_major; /* major version number */
            uint16_t version_minor; /* minor version number */
            int32_t  thiszone;      /* GMT to local correction */
            uint32_t sigfigs;       /* accuracy of timestamps */
            uint32_t snaplen;       /* max length of captured packets, in octets */
            uint32_t linktype;      /* data link type */
        }
        '''
        win32pipe.ConnectNamedPipe(self.pipe, None)
        global_header = struct.pack('IHHiIII',
            self.magic_num,     # magic number 4
            self.major_ver,     # major version number 2
            self.minor_ver,     # minor version number 2
            0,                  # GMT to local correction 4
            0,                  # accuracy of timestamps 4
            0,                  # max length of captured packets, in octets 4
            self.link_type      # data link type 4
        )
        # win32file.WriteFile(self.pipe, global_header)

    def write_pipe(self, packet):
        packet_len = len(packet)
        if packet_len <= 0:
            return

        '''
        struct pcaprec_hdr {
            uint32_t ts_sec;        /* timestamp seconds */
            uint32_t ts_usec;       /* timestamp microseconds (nsecs for PCAP_NSEC_MAGIC) */
            uint32_t incl_len;      /* number of octets of packet saved in file*/
            uint32_t orig_len;      /* actual length of packet */
        };
        '''
        packet_header = struct.pack('IIII',
            int(time.time()),                       # timestamp seconds
            datetime.datetime.now().microsecond,    # timestamp microseconds
            packet_len,                             # number of octets of packet
            packet_len                              # actual length of packet
        )
        
        # win32file.WriteFile(self.pipe, packet_header)
        # win32file.WriteFile(self.pipe, packet)

    def write(self, data):
        #send pcap data trough the pipe
        win32file.WriteFile(self.pipe, data)

    def wireshark_start(self, file_size=20480):
        #open Wireshark, configure pipe interface and start capture (not mandatory, you can also do this manually)
        wireshark_cmd=[self.wireshark_abs_path, r'-i'+self.pipe_name,'-k','-b filesize:%d' % file_size]
        print(wireshark_cmd)
        proc=subprocess.Popen(wireshark_cmd)

        #wait 2 second (not mandatory, but this let watching data coming trough the pipe)
        time.sleep(2)
# struct header {
# uint8_t  head;
# uint8_t  type;
# uint16_t length;
# uint16_t flags;
# uint16_t id;
# }

'''
string to bytes
eg:
'0123456789ABCDEF0123456789ABCDEF'
b'0123456789ABCDEF0123456789ABCDEF'
'''
def s2b(str):
    return bytes(str,encoding='utf8')

'''
bytes to string
eg:
b'0123456789ABCDEF0123456789ABCDEF'
'0123456789ABCDEF0123456789ABCDEF'
'''
def b2s(bs):
    return bytes.decode(bs,encoding='utf8')

'''
hex string to bytes
eg:
'01 23 45 67 89 AB CD EF 01 23 45 67 89 AB CD EF'
b'\x01#Eg\x89\xab\xcd\xef\x01#Eg\x89\xab\xcd\xef'
'''
def hs2b(str):
    str = str.replace(" ", "")
    return bytes.fromhex(str)
    # return a2b_hex(str)
    
'''
bytes to hex string 
eg:
b'\x01#Eg\x89\xab\xcd\xef\x01#Eg\x89\xab\xcd\xef'
'01 23 45 67 89 AB CD EF 01 23 45 67 89 AB CD EF'
'''
def b2hs(bs):
    # hex_str = ''
    # for item in bs:
    #     hex_str += str(hex(item))[2:].zfill(2).upper() + " "
    # return hex_str
    return ''.join(['%02X' % b for b in bs])

class log_receiver():
    def __init__(self, log_source, log_writter):
        self.log_source = log_source
        self.log_writter = log_writter
        self.header_len = 8
        self.head = 0x5A
        self.LOGGING_ID = 0x0001
        self.EXCEPTION_ID = 0x0002
        
        self.EXECPTION_DUMP_ID_START = 0
        self.EXECPTION_DUMP_ID_DATA  = 1
        self.EXECPTION_DUMP_ID_END   = 2
        self.exec_fd = None
        
        self.ids = (self.LOGGING_ID, self.EXCEPTION_ID)
        self.dispatcher = {
            self.LOGGING_ID : self.logging,
            self.EXCEPTION_ID : self.exception}
        
    def log_bytes_formater(self, payload):
        length = "%04x" % (len(payload) + 4)
        data = '%02X01%s%s00000000' % (self.head, length[2:], length[:2])
        return bytes.fromhex(data) + payload
    
    def log_string_formater(self, payload):
        length = "%04x" % (len(payload) + 4)
        data = '%02X01%s%s00000000' % (self.head, length[2:], length[:2])
        return bytes.fromhex(data) + bytes(payload, 'utf-8')
    
    def logging(self, payload):
        # print("logging:", b2hs(payload))
        self.log_writter.write(self.log_bytes_formater(payload))
        
    def logging_string(self, payload):
        # print("[%d]logging_str:%s" % (len(payload), payload))
        self.log_writter.write(self.log_string_formater(payload))

    def exception_parser(self, data):
        id, region, length = struct.unpack("BBH", data[:4])
        # print("id=%d region=%d length=%d len(data)=%d" % (id, region, length, len(data)))
        if id == self.EXECPTION_DUMP_ID_START:
            start_addr = struct.unpack('I', data[4:8])
            name = data[8:].decode()
            # print("start_addr=0x%08x, name=%s" % (start_addr[0], name))
            self.logging_string("EXCEPTON!! id=%d region=%d length=%d start address=0x%08x" % (id, region, length, start_addr[0]))

            if self.exec_fd is None:
                self.exec_fd = open("%s.bin" % name, 'wb')
        elif id == self.EXECPTION_DUMP_ID_DATA:
            self.logging_string("EXCEPTON!! id=%d region=%d length=%d" % (id, region, length))
            self.exec_fd.write(data[4:])
        elif id == self.EXECPTION_DUMP_ID_END:
            self.exec_fd.close()
            self.exec_fd = None
            end_addr = struct.unpack('I', data[4:8])
            self.logging_string("EXCEPTON!! id=%d region=%d length=%d end address=0x%08x" % (id, region, length, end_addr[0]))
        return (id, region, length)
    
    def exception(self, payload):
        # print("exception:", b2hs(payload))
        id, region, length = self.exception_parser(payload)
        

    def check_header(self):
        count = self.log_source.inWaiting()
        if count > self.header_len:
            header = self.log_source.read(self.header_len)
            # print("header:", b2hs(header))
            head, type, length, flags, id = struct.unpack('BBHHH', header)  
            print("HEADER: head=0x%02x type=0x%02x length=%-4d flags=0x%04x id=0x%04x" % (head, type, length, flags, id))  
            if head == self.head:
                return (type, length, id)
        return None

    def recv_payload(self, header):
        length = header[1] - 4
        # print("payload start ...,inwaiting=%d" % (self.log_source.inWaiting()))
        while(length > self.log_source.inWaiting()):
            time.sleep(0.01)
        # print("payload end len=%d inwaiting=%d..." % (length, self.log_source.inWaiting()))
        return self.log_source.read(length)

    def parser(self, header, payload):
        id = header[2]
        if id not in self.ids:
            print("ID=0x%x is invalid!!" % id)
            return
        self.dispatcher[id](payload)
        
    def processer(self):
        header = self.check_header()
        
        if header is not None:
            # print("%x %x %x" % header)
            payload = self.recv_payload(header)
            # print("PAYLOAD:", b2hs(payload))
            self.parser(header, payload)

class logging():
    def __init__(self, wireshark_path):
        shb = blocks.SectionHeader(
            options={
                "shb_hardware": "artificial",
                "shb_os": "python",
                "shb_userappl": "python-pcapng",
            }
        )
        # linktype设置为162，在wireshark源码中表示保留给用户的USER15 类型
        idb = shb.new_member(
            blocks.InterfaceDescription,
            link_type=162,#251,
            options={
                "if_description": "Hand-rolled",
                "if_os": "Python",
                "if_filter": [(0, b"tcp port 23 and host 192.0.2.5")],
            },
        )
        
        
        w32_ws_pipe = ws_pipe(wireshark_path, r"\\.\pipe\wireshark")
        w32_ws_pipe.wireshark_start()
        w32_ws_pipe.create_pipe()
        print("wireshark start success!!!")
        print("start connect pipe...")
        w32_ws_pipe.connect_pipe()
        print("pipe connect success!!!")
        print("starting wireshark...")
        
        # # FileWriter() immediately writes the SHB and any IDBs you've added to it
        self.writer = FileWriter(w32_ws_pipe, shb)

        # self.spb = shb.new_member(blocks.SimplePacket)
        self.spb = shb.new_member(blocks.EnhancedPacket)

    def write(self, data):
        self.spb.packet_data = data
        
        # w32_ws_pipe.write_pipe(bytes(test_pl))
        self.writer.write_block(self.spb)


if __name__ == '__main__':
    # pcapng_format_write()  
    # wireshark_path = r'D:\src\Development\wsbuild64\run\RelWithDebInfo\Wireshark.exe'
    wireshark_path = r'D:\Tools\Wireshark\Wireshark.exe'

    ser = serial.Serial("COM3", 921600)
    log = logging(wireshark_path)
    receiver = log_receiver(ser, log)
    
    while True:
        receiver.processer()
        
################################## Simple Packet Block ################################

#   Offset: 00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F 
	
# 00000000: 0A 0D 0D 0A 50 00 00 00 4D 3C 2B 1A 01 00 00 00    ....P...M<+.....
# 00000010: FF FF FF FF FF FF FF FF 02 00 0A 00 61 72 74 69    ............arti
# 00000020: 66 69 63 69 61 6C 00 00 03 00 06 00 70 79 74 68    ficial......pyth
# 00000030: 6F 6E 00 00 04 00 0D 00 70 79 74 68 6F 6E 2D 70    on......python-p
# 00000040: 63 61 70 6E 67 00 00 00 00 00 00 00 50 00 00 00    capng.......P...
# 00000050: 01 00 00 00 58 00 00 00 01 00 00 00 00 00 00 00    ....X...........
# 00000060: 03 00 0B 00 48 61 6E 64 2D 72 6F 6C 6C 65 64 00    ....Hand-rolled.
# 00000070: 0C 00 06 00 50 79 74 68 6F 6E 00 00 0B 00 1F 00    ....Python......
# 00000080: 00 74 63 70 20 70 6F 72 74 20 32 33 20 61 6E 64    .tcp.port.23.and
# 00000090: 20 68 6F 73 74 20 31 39 32 2E 30 2E 32 2E 35 00    .host.192.0.2.5.
# 000000a0: 00 00 00 00 58 00 00 00 03 00 00 00 40 00 00 00    ....X.......@...
# 000000b0: 2D 00 00 00 FF FF FF FF FF FF 11 22 33 DD AA 00    -.........."3]*.
# 000000c0: 08 00 45 00 00 1F 00 00 00 00 FE 11 00 00 7F 00    ..E.......~.....
# 000000d0: 00 01 7F 00 00 02 12 34 56 78 00 0B 00 00 44 41    .......4Vx....DA
# 000000e0: 50 00 00 00 40 00 00 00 03 00 00 00 40 00 00 00    P...@.......@...
# 000000f0: 2D 00 00 00 FF FF FF FF FF FF 11 22 33 DD AA 00    -.........."3]*.
# 00000100: 08 00 45 00 00 1F 00 00 00 00 FE 11 00 00 7F 00    ..E.......~.....
# 00000110: 00 01 7F 00 00 02 12 34 56 78 00 0B 00 00 44 41    .......4Vx....DA
# 00000120: 50 00 00 00 40 00 00 00                            P...@...

#  Section Header Block
#    Block Type         0A 0D 0D 0A 
#    Block Total Length 50 00 00 00 
#    Byte-Order Magic   4D 3C 2B 1A 
#    Major version      01 00 
#    Minor version      00 00
#    Section Length     FF FF FF FF FF FF FF FF 
#    Options            
#       option code     02 00 
#       option length   0A 00 
#       option value    61 72 74 69 66 69 63 69 61 6C           artificial
#           pad         00 00 
#       option code     03 00 
#       option length   06 00 
#       option value    70 79 74 68 6F 6E                       Python
#           pad         00 00 
#       option code     04 00 
#       option length   0D 00 
#       option value    70 79 74 68 6F 6E 2D 70 63 61 70 6E 67  Python-pcapng
#           pad         00 00 00 
#       option code == opt_endifopt 00 00 
#       Option Length == 0          00 00 
#    Block Total Length 50 00 00 00    
# Interface Description Block
#   Block Type          01 00 00 00 
#   Block Total Length  58 00 00 00 
#   LinkType            01 00 
#   Reserved            00 00 
#   SnapLen             00 00 00 00    
#    Options            
#       option code     03 00 
#       option length   0B 00 
#       option value    48 61 6E 64 2D 72 6F 6C 6C 65 64        Hand-rolled
#           pad         00
#       option code     0C 00 
#       option length   06 00 
#       option value    50 79 74 68 6F 6E                       Python
#           pad         00 00 
#       option code     0B 00 
#       option length   1F 00
#       option value    00 74 63 70 20 70 6F 72 74 20 32 33 20 61 6E 64 20 68 6F 73 74 20 31 39 32 2E 30 2E 32 2E 35  tcp.port.23.and.host.192.0.2.5
#          pad          00 00 00 00 00 
#   Block Total Length  58 00 00 00 
#  Simple Packet Block              
#    Block Type         03 00 00 00 
#    Block Total Length 40 00 00 00    
#    Packet Len         2D 00 00 00 
#    Packet Data        FF FF FF FF FF FF 11 22 33 DD AA 00    
#                       08 00 45 00 00 1F 00 00 00 00 FE 11 00 00 7F 00    
#                       00 01 7F 00 00 02 12 34 56 78 00 0B 00 00 44 41    
#                       50 00 00 00 40 00 00 00 03 00 00 00 40 00 00 00    
#                       2D 00 00 00 FF FF FF FF FF FF 11 22 33 DD AA 00    
#                       08 00 45 00 00 1F 00 00 00 00 FE 11 00 00 7F 00    
#                       00 01 7F 00 00 02 12 34 56 78 00 0B 00 00 44 41    
#                       50 00 00 00 
#    Block Total Length 40 00 00 00                           

################################## Enhanced Packet Block ################################
# 
#   Offset: 00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F 	
# 00000000: 0A 0D 0D 0A 50 00 00 00 4D 3C 2B 1A 01 00 00 00    ....P...M<+.....
# 00000010: FF FF FF FF FF FF FF FF 02 00 0A 00 61 72 74 69    ............arti
# 00000020: 66 69 63 69 61 6C 00 00 03 00 06 00 70 79 74 68    ficial......pyth
# 00000030: 6F 6E 00 00 04 00 0D 00 70 79 74 68 6F 6E 2D 70    on......python-p
# 00000040: 63 61 70 6E 67 00 00 00 00 00 00 00 50 00 00 00    capng.......P...
# 00000050: 01 00 00 00 58 00 00 00 01 00 00 00 00 00 00 00    ....X...........
# 00000060: 03 00 0B 00 48 61 6E 64 2D 72 6F 6C 6C 65 64 00    ....Hand-rolled.
# 00000070: 0C 00 06 00 50 79 74 68 6F 6E 00 00 0B 00 1F 00    ....Python......
# 00000080: 00 74 63 70 20 70 6F 72 74 20 32 33 20 61 6E 64    .tcp.port.23.and
# 00000090: 20 68 6F 73 74 20 31 39 32 2E 30 2E 32 2E 35 00    .host.192.0.2.5.
# 000000a0: 00 00 00 00 58 00 00 00 06 00 00 00 50 00 00 00    ....X.......P...
# 000000b0: 00 00 00 00 00 00 00 00 00 00 00 00 2D 00 00 00    ............-...
# 000000c0: 2D 00 00 00 FF FF FF FF FF FF 11 22 33 DD AA 00    -.........."3]*.
# 000000d0: 08 00 45 00 00 1F 00 00 00 00 FE 11 00 00 7F 00    ..E.......~.....
# 000000e0: 00 01 7F 00 00 02 12 34 56 78 00 0B 00 00 44 41    .......4Vx....DA
# 000000f0: 50 00 00 00 50 00 00 00                            P...P...


#  Block Type           0A 0D 0D 0A 
#  Block Total Length   50 00 00 00 
#  Byte-Order Magic     4D 3C 2B 1A 
#  Major version        01 00 
#  Minor version        00 00
#  Section Length       FF FF FF FF FF FF FF FF 
#  Options
#    option code        02 00 
#    option length      0A 00 
#    option value       61 72 74 69 66 69 63 69 61 6C 
#         pad           00 00 
#    option code        03 00 
#    option length      06 00 
#    option value       70 79 74 68 6F 6E 
#         pad           00 00 
#    option code        04 00 
#    option length      0D 00 
#    option value       70 79 74 68 6F 6E 2D 70 63 61 70 6E 67 
#         pad           00 00 00 
#    option code == opt_endifopt    00 00 
#    Option Length == 0             00 00 
#  Block Total Length   50 00 00 00    
# Interface Description Block
#    Block Type         01 00 00 00 
#    Block Total Length 58 00 00 00 
#    LinkType           01 00 
#    Reserved           00 00 
#    SnapLen            00 00 00 00
#    Options  
#       option code     03 00 
#       option length   0B 00 
#       option value    48 61 6E 64 2D 72 6F 6C 6C 65 64 
#           pad         00 
#       option code     0C 00 
#       option length   06 00 
#       option value    50 79 74 68 6F 6E 
#           pad         00 00 
#       option code     0B 00 
#       option length   1F 00  
#       option value    00 74 63 70 20 70 6F 72 74 20 32 33 20 61 6E 64 20 68 6F 73 74 20 31 39 32 2E 30 2E 32 2E 35 
#           pad         00 00 00 00 00 
#    Block Total Length 58 00 00 00 
# Enhanced Packet Block 
#    Block Type         06 00 00 00 
#    Block Total Length 50 00 00 00
#    Interface ID       00 00 00 00 
#    Timestamp(High)    00 00 00 00 
#    Timestamp(Low)     00 00 00 00 
#    Captured Len       2D 00 00 00 
#    Packet Len         2D 00 00 00 
#    Packet Data        FF FF FF FF FF FF 11 22 33 DD AA 00 08 00 45 00 
#                       00 1F 00 00 00 00 FE 11 00 00 7F 00 00 01 7F 00 
#                       00 02 12 34 56 78 00 0B 00 00 44 41 50 00 00 00 
#    Block Total Length 50 00 00 00
