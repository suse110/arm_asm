#!coding=utf-8
# Win32 Wireshark named pipes example
# Requires Python for Windows and the Python for Windows Extensions:
# http://www.python.org
# http://sourceforge.net/projects/pywin32/

from email import header
from fileinput import filename
from logging import exception
from socket import timeout
import win32pipe, win32file
import time
import datetime
import serial
import struct
import subprocess
import codecs
import os
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

def mkdir(path):
    # 去除首位空格
    path=path.strip()
    # 去除尾部 \ 符号
    path=path.rstrip("\\")
    # 判断路径是否存在
    # 存在     True
    # 不存在   False
    isExists=os.path.exists(path)
    # 判断结果
    if not isExists:
        # 如果不存在则创建目录
        # 创建目录操作函数
        os.makedirs(path) 
        print (path+' 创建成功')
        return True
    else:
        # 如果目录存在则不创建，并提示目录已存在
        print (path+' 目录已存在')
        return False


class log_receiver():
    def __init__(self, log_source, log_writter):
        self.log_source = log_source
        self.log_writter = log_writter
        self.header_len = 8
        self.exception_header_len = 4
        self.head = 0x5A
        self.LOGGING_ID = 0x0001
        self.EXCEPTION_ID = 0x0002
        
        self.EXECPTION_DUMP_ID_INIT         = 0
        self.EXECPTION_DUMP_ID_REGISTER     = 1
        self.EXECPTION_DUMP_ID_REGION_START = 2
        self.EXECPTION_DUMP_ID_REGION_DATA  = 3
        self.EXECPTION_DUMP_ID_REGION_END   = 4
        self.EXECPTION_DUMP_ID_DEINIT       = 5
        self.exception_dump_id_name = {
            self.EXECPTION_DUMP_ID_INIT        : "INIT  ",
            self.EXECPTION_DUMP_ID_REGISTER    : "REGS  ",
            self.EXECPTION_DUMP_ID_REGION_START: "START ",
            self.EXECPTION_DUMP_ID_REGION_DATA : "DATA  ",
            self.EXECPTION_DUMP_ID_REGION_END  : "END   ",
            self.EXECPTION_DUMP_ID_DEINIT      : "DEINIT",
        }
        self.exec_fd = None
        self.cwd = os.getcwd()
        self.load_cmm = 'load_main.cmm'
        self.load_cmm_fd = None
        
        self.ids = (self.LOGGING_ID, self.EXCEPTION_ID)
        self.dispatcher = {
            self.LOGGING_ID : self.logging,
            self.EXCEPTION_ID : self.exception}
        
        self.frames = None
    def log_bytes_formater(self, header, payload):
        """
        Args:
            header (tuple): (type, length, id)
            payload (bytes): payload

        Returns:
            bytes: header + payload
        """
        length = "%04x" % (len(payload) + 4)
        id = "%04x" % header[2]
        data = '%02X%02X%s%s0000%s%s' % (self.head, header[0], length[2:], length[:2],  id[2:], id[:2])
        return bytes.fromhex(data) + payload
    
    def log_string_formater(self, header, payload):
        """
        Args:
            header (tuple): (type, length, id)
            payload (str): payload

        Returns:
            bytes: header + payload
        """
        length = "%04x" % (len(payload) + 4)
        id = "%04x" % header[2]
        data = '%02X%02X%s%s0000%s%s' % (self.head, header[0], length[2:], length[:2],  id[2:], id[:2])
        return bytes.fromhex(data) + bytes(payload, 'utf-8')
    
    def logging(self, header, payload):
        # print("logging:", b2hs(payload))
        self.log_writter.write(self.log_bytes_formater(header, payload))
        
    def logging_string(self, payload):
        # print("[%d]logging_str:%s" % (len(payload), payload))
        self.log_writter.write(self.log_string_formater((0xaa, len(payload) + 4, 0), payload))
        
    def exception_parser(self, data):
        id, region, length = struct.unpack("BBH", data[:self.exception_header_len])
        # print("id=%d region=%d length=%d len(data)=%d" % (id, region, length, len(data)))
        if id == self.EXECPTION_DUMP_ID_INIT:
            self.logging_string("EXCEPTON!! %s" % self.exception_dump_id_name[id])

            #no data
            mkdir('dump')
            if self.load_cmm_fd is None:
                self.load_cmm_fd = open(".\\dump\\%s" % self.load_cmm, 'w')
            self.load_cmm_fd.write('title \"My Trace32\"\n')
            self.load_cmm_fd.write('sys.down\n')
            self.load_cmm_fd.write('system.cpu cortexm4\n')
            self.load_cmm_fd.write('sys.up\n')
            self.load_cmm_fd.write("\n\n")
            # self.load_cmm_fd.write('symbol.sourcepath.setbasedir \"D:\\\"\n')
            self.load_cmm_fd.write("\n\n")
        elif id == self.EXECPTION_DUMP_ID_REGISTER:
            # print(b2hs(data))
            # I 类型为4个byte，所以这里要除以4
            length = length >> 2
            fmt = '%dI' % length
            self.frames = struct.unpack_from(fmt, data[4:], 0)
            self.logging_string("R0       = 0x%08x" % self.frames[0])
            self.logging_string("R1       = 0x%08x" % self.frames[1])
            self.logging_string("R2       = 0x%08x" % self.frames[2])
            self.logging_string("R3       = 0x%08x" % self.frames[3])
            self.logging_string("R12      = 0x%08x" % self.frames[4])
            self.logging_string("LR       = 0x%08x" % self.frames[5])
            self.logging_string("PC       = 0x%08x" % self.frames[6])
            self.logging_string("XPSR     = 0x%08x" % self.frames[7])
            self.logging_string("R4       = 0x%08x" % self.frames[8])
            self.logging_string("R5       = 0x%08x" % self.frames[9])
            self.logging_string("R6       = 0x%08x" % self.frames[10])
            self.logging_string("R7       = 0x%08x" % self.frames[11])
            self.logging_string("R8       = 0x%08x" % self.frames[12])
            self.logging_string("R9       = 0x%08x" % self.frames[13])
            self.logging_string("R10      = 0x%08x" % self.frames[14])
            self.logging_string("R11      = 0x%08x" % self.frames[15])
            self.logging_string("SP       = 0x%08x" % self.frames[16])
            self.logging_string("MSP      = 0x%08x" % self.frames[17])
            self.logging_string("PSP      = 0x%08x" % self.frames[18])
            self.logging_string("CONTROL  = 0x%08x" % self.frames[19])
            self.logging_string("BASEPRI  = 0x%08x" % self.frames[20])
            self.logging_string("PRIMASK  = 0x%08x" % self.frames[21])
            self.logging_string("FAULTMASK= 0x%08x" % self.frames[22])
            self.logging_string("FPSCR    = 0x%08x" % self.frames[23])
            
        elif id == self.EXECPTION_DUMP_ID_REGION_START:
            #4B head + 4B start_addr + nB region name
            start_addr = struct.unpack('I', data[self.exception_header_len:8])[0]
            name = data[8:].decode()
            file_name = "%d_%s.bin" % (region, name)
            # print("start_addr=0x%08x, name=%s" % (start_addr[0], name))
            self.logging_string("EXCEPTON!! %s region=%-2d length=%-4d start address=0x%08x" % (self.exception_dump_id_name[id], region, length, start_addr))
            # 记录下bin 文件的加载地址
            if self.exec_fd is None:
                self.exec_fd = open(r".\dump\%s" % file_name, 'wb')
                self.load_cmm_fd.write("data.load.binary %s\\dump\\%s 0x%08x\n" % (self.cwd, file_name, start_addr))
        elif id == self.EXECPTION_DUMP_ID_REGION_DATA:
            #4B head + nB dump data
            self.logging_string("EXCEPTON!! %s region=%-2d length=%-4d" % (self.exception_dump_id_name[id], region, length))
            self.exec_fd.write(data[self.exception_header_len:])
        elif id == self.EXECPTION_DUMP_ID_REGION_END:
            #4B head + 4B start_addr
            self.exec_fd.close()
            self.exec_fd = None
            end_addr = struct.unpack('I', data[self.exception_header_len:8])[0]
            self.logging_string("EXCEPTON!! %s region=%-2d length=%-4d end   address=0x%08x" % (self.exception_dump_id_name[id], region, length, end_addr))
        elif id == self.EXECPTION_DUMP_ID_DEINIT:
            self.logging_string("EXCEPTON!! %s" % self.exception_dump_id_name[id])
            #相对位置是基于cmm文件
            # B::data.load.elf ~~~~~/../../../main/build/stm32f4xx/FreeRTOS_demo/FreeRTOS_demo.elf /strippart "arm_asm"
            self.load_cmm_fd.write('data.load.elf ~~~~~/../../../main/build/stm32f4xx/FreeRTOS_demo/FreeRTOS_demo.elf /strippart "arm_asm"\n')
            # self.load_cmm_fd.write('data.load.elf D:\\src\\os\\arm_asm\\main\\build\\stm32f4xx\\FreeRTOS_demo\\FreeRTOS_demo.elf\n')
            self.load_cmm_fd.write("r.s r0        0x%08x\n" % self.frames[0])
            self.load_cmm_fd.write("r.s r1        0x%08x\n" % self.frames[1])
            self.load_cmm_fd.write("r.s r2        0x%08x\n" % self.frames[2])
            self.load_cmm_fd.write("r.s r3        0x%08x\n" % self.frames[3])
            self.load_cmm_fd.write("r.s r12       0x%08x\n" % self.frames[4])
            self.load_cmm_fd.write("r.s lr        0x%08x\n" % self.frames[5])
            self.load_cmm_fd.write("r.s pc        0x%08x\n" % self.frames[6])
            self.load_cmm_fd.write("r.s xpsr      0x%08x\n" % self.frames[7])
            self.load_cmm_fd.write("r.s r4        0x%08x\n" % self.frames[8])
            self.load_cmm_fd.write("r.s r5        0x%08x\n" % self.frames[9])
            self.load_cmm_fd.write("r.s r6        0x%08x\n" % self.frames[10])
            self.load_cmm_fd.write("r.s r7        0x%08x\n" % self.frames[11])
            self.load_cmm_fd.write("r.s r8        0x%08x\n" % self.frames[12])
            self.load_cmm_fd.write("r.s r9        0x%08x\n" % self.frames[13])
            self.load_cmm_fd.write("r.s r10       0x%08x\n" % self.frames[14])
            self.load_cmm_fd.write("r.s r11       0x%08x\n" % self.frames[15])
            self.load_cmm_fd.write("r.s sp        0x%08x\n" % self.frames[16])
            self.load_cmm_fd.write("r.s msp       0x%08x\n" % self.frames[17])
            self.load_cmm_fd.write("r.s psp       0x%08x\n" % self.frames[18])
            self.load_cmm_fd.write("r.s control   0x%08x\n" % self.frames[19])
            self.load_cmm_fd.write("r.s basepri   0x%08x\n" % self.frames[20])
            self.load_cmm_fd.write("r.s primask   0x%08x\n" % self.frames[21])
            self.load_cmm_fd.write("r.s faultmask 0x%08x\n" % self.frames[22])
            # self.load_cmm_fd.write("r.s fpscr     0x%08x\n" % self.frames[23])

            self.load_cmm_fd.write("sYmbol.SourcePATH.SetBaseDir ~~~~~/../../.. \n")
            self.load_cmm_fd.write("\n\n")
            self.load_cmm_fd.write("TOOLBAR ON\n")
            self.load_cmm_fd.write("STATUSBAR ON\n")
            # trace32 在windows桌面的位置 left, up, hsize, vsize
            # self.load_cmm_fd.write("FramePOS 0% 0% 50% 50%\n") # 左上角
            # self.load_cmm_fd.write("FramePOS 50% 0% 100% 50%\n") # 右上角
            # self.load_cmm_fd.write("FramePOS 25% 0% 50% 50%\n") # 中上
            self.load_cmm_fd.write("FramePOS 0% 0% 50% 89%\n") # 左半屏
            # self.load_cmm_fd.write("FramePOS 0% 0% 75% 89%\n") # 左3/4
            # self.load_cmm_fd.write("FramePOS 50% 0% 50% 89%\n") # 右半屏
            # self.load_cmm_fd.write("FramePOS 25% 0% 100% 89%\n") # 右3/4
            # self.load_cmm_fd.write("FramePOS 0% 0% 100% 89%\n") #全屏, vsize 要考虑任务栏高度
            
            # All pages and windows are removed, including resistant windows.
            self.load_cmm_fd.write("WinPAGE.RESet\n")
            # If no parameters are set, all windows of one page are erased.
            self.load_cmm_fd.write("WinCLEAR\n")
            
            self.load_cmm_fd.write("WinPOS 50% 0% 50% 50%\n")
            self.load_cmm_fd.write("Var.Frame\n")
            
            self.load_cmm_fd.write("WinPOS 50% 50% 50% 60%\n")
            self.load_cmm_fd.write("Register /spotlight\n")
            
            self.load_cmm_fd.write("WinPOS 0% 0% 50% 100%\n")
            # self.load_cmm_fd.write("WinTABS 10. 10. 25. 62.\n")
            self.load_cmm_fd.write("Data.List\n")
            # If no parameters are set, the next page will be selected. Page names are case-sensitive.
            self.load_cmm_fd.write("WinPAGE.select P000\n")

            #no data
            if self.load_cmm_fd is not None:
                self.load_cmm_fd.close()
                self.load_cmm_fd = None
            
            trace32_base_path = r'D:\src\os\arm_asm\tools\trace32_simulation'
            trace32_executable_name=r't32marm.exe'
            script_arg = '%s\dump\load_main.cmm' % self.cwd
            os.chdir(trace32_base_path)
            trace32_cmd=[trace32_executable_name, '-s', script_arg]
            print(trace32_cmd)
            proc=subprocess.Popen(trace32_cmd)
        return (id, region, length)
    
    def exception(self, header, payload):
        # print("exception:", b2hs(payload))
        id, region, length = self.exception_parser(payload)
        

    def check_header(self):
        count = self.log_source.inWaiting()
        if count > self.header_len:
            header = self.log_source.read(self.header_len)
            # print("header:", b2hs(header))
            head, type, length, flags, id = struct.unpack('BBHHH', header)  
            print("HEADER: head=0x%02x type=0x%02x length=%-4d flags=0x%04x id=0x%04x" % (head, type, length, flags, id))  
            if head == self.head and id in self.ids:
                print("------: head=0x%02x type=0x%02x length=%-4d flags=0x%04x id=0x%04x" % (head, type, length, flags, id))  
                return (type, length, id)
                # self.recv_payload((type, length, id))
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
        self.dispatcher[id](header, payload)
        
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
