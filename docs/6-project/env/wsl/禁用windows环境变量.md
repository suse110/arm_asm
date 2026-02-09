# wsl 配置禁用 win系统环境变量
进入 wsl 的 /etc/wsl.conf 目录，增加以下配置：
```
[interop]
enabled=false
appendWindowsPath=false
```
然后退出wsl，并且执行关闭正在运行的 wsl，执行命令 wsl --shutdown
最后重新进入wsl 即可
[在WSL ubuntu中禁用windows下的环境变量的方法](https://blog.csdn.net/weixin_43698781/article/details/124792708)

