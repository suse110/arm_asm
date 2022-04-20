# #coding=utf-8
# #!/usr/bin/python3
# # 文件名：server.py

# 导入 socket、sys 模块
import socket
import sys
import os
import signal

def myexit(signum, frame):
    print('You choose to stop me.')
    os.exit()
    
# signal.signal(signal.SIGINT, myexit)
# signal.signal(signal.SIGTERM, myexit)

def udp_server():
    address=('127.0.0.1',10000)  
    s=socket.socket(socket.AF_INET,socket.SOCK_DGRAM)  
    s.bind(address)  
    while 1:  
        msg,addr=s.recvfrom(2048)  
        if not msg:
            break  
        print('来自[%s:%s]的消息: %s' % (addr[0], addr[1], str(msg)))#msg.decode('utf-8')
        # if msg.decode('utf-8') == 'q':
        #     break
        # inp = input('>>>')
        # s.sendto(inp.encode('utf-8'), addr)

    s.close()  

def udp_client():
    addr=('127.0.0.1',10000)  
    s=socket.socket(socket.AF_INET,socket.SOCK_DGRAM)  
    while 1:  
        msg = input('>>>')

        s.sendto(msg.encode('utf-8'), addr)
        # 接收数据报
        # msg_recv, addr = s.recvfrom(1024)
        # print(msg_recv.decode('utf-8'))
    s.close() 

def tcp_server():
    host = '192.168.137.1'
    port = 43300
    address=(host,port)  
    s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)  
    s.bind(address) 
    # 设置最大连接数，超过后排队
    s.listen(5)
    while 1:  
        try:
            clientsocket,addr = s.accept()
            print("连接地址: %s" % str(addr))
            msg='欢迎访问菜鸟教程！'+ "\r\n"
            clientsocket.send(msg.encode('utf-8'))
            clientsocket.close()
        except KeyboardInterrupt:
            print('KeyboardInterrupt.')
            # os.exit()
    s.close()  

def tcp_client():
    host = '192.168.137.1'
    port = 43300
    address=(host,port) 
    s=socket.socket(socket.AF_INET,socket.SOCK_DGRAM)  

    msg = "hello server! i'm client"
    s.send(msg.encode('utf-8'), address)
    # 接收数据报
    msg_recv, addr = s.recv(1024)
    print(msg_recv.decode('utf-8'))
    s.close() 


# 先执行服务端脚本，然后打开主机wireshark开始抓包，再执行客户端脚本

if __name__ == "__main__":
    
    arg1=sys.argv[1]
    if arg1 == "tc":
        tcp_client()
    elif arg1 == 'ts':
        tcp_server()
    elif arg1 == 'uc':
        udp_client()
    elif arg1 == 'us':
        udp_server()
    else:
        print("wrong arg:%s", arg1)