以下是 VirtualBox 中 Ubuntu 通过 NFS 挂载 Windows 文件夹的**完整可执行步骤**与**关键注意事项**，已按桥接模式验证可行，可直接套用。

---

### 一、前置准备（先做这3步）
| 设备 | 操作内容 | 目的 |
| :--- | :--- | :--- |
| Windows | 安装 haneWIN NFS Server（官网下载）| 提供 NFS 共享服务 |
| VirtualBox | 关闭 Ubuntu 虚拟机 | 准备修改网络模式 |
| Windows | 记录 IP：`ipconfig` 查 `192.168.5.22` | 用于挂载命令 |

---

### 二、Step 1：VirtualBox 桥接模式配置（核心）
1. 虚拟机→设置→网络→网卡1：
    - 连接方式：**桥接适配器**
    - 界面名称：选 Windows 当前上网网卡（无线/有线，如 Realtek、Intel 网卡）
    - 取消勾选“混杂模式”，保持默认
2. 启动 Ubuntu，执行 `ip a` 确认 IP 与 Windows 同网段（如 `192.168.5.x`）
3. 网络连通性测试：Ubuntu 执行 `ping 192.168.5.22`，能通则网络正常

---

### 三、Step 2：haneWIN NFS Server 配置（共享+授权）
1. 以管理员身份运行 haneWIN，进入 Exports 页：
    - 删除默认共享，点击“Add”新增
    - 路径：输入要共享的 Windows 目录（如 `D:\zephyr-src`）
    - 名称：填写共享名（如 `zephyr-src`，挂载时用）
    - 客户端：输入 `*`（允许所有 IP，测试用；稳定后可改 Ubuntu 具体 IP）
    - 权限：勾选 `-maproot:0:0`（映射 root 权限）、`rw`（读写）、`sync`（同步写入）
    - 编码：中文文件名务必勾选“UTF-8”
2. 保存并重启服务：点击“Save”→“Stop Server”→“Start Server”
3. 防火墙放行：允许 haneWIN 及端口 111、2049（TCP/UDP）通过防火墙

---

### 四、Step 3：Ubuntu NFS 客户端配置与挂载
1. 安装 NFS 客户端工具：
    ```bash
    sudo apt update && sudo apt install nfs-common -y
    ```
2. 创建挂载点：
    ```bash
    sudo mkdir -p /mnt/nfs-zephyr
    ```
3. 手动挂载（测试）：
    ```bash
    sudo mount -t nfs -o nfsvers=3,nolock,rw,exec 192.168.5.22:/zephyr-src /mnt/nfs-zephyr
    ```
4. 自动挂载（可选，开机生效）：
    - 编辑 `/etc/fstab`，添加：
        ```
        192.168.5.22:/zephyr-src /mnt/nfs-zephyr nfs defaults,nfsvers=3,nolock,_netdev 0 0
        ```
    - 测试自动挂载：`sudo mount -a`

---

### 五、Step 4：挂载成功验证
1. Ubuntu 执行 `df -h`，查看 `/mnt/nfs-zephyr` 是否存在
2. 读写测试：
    ```bash
    sudo touch /mnt/nfs-zephyr/test.txt
    ls /mnt/nfs-zephyr/
    ```
    Windows 端查看 `D:\zephyr-src` 下是否出现 `test.txt`

---

### 六、关键注意事项（避坑必看）
1. **网络层面**
    - 必须同网段：桥接模式下 Ubuntu 与 Windows 均为 `192.168.5.x`
    - 关闭 Windows/第三方防火墙，或放行 NFS 端口 111、2049（TCP/UDP）
2.  **haneWIN 配置**
    - 共享名必须与挂载命令一致（如 `/zephyr-src`）
    - `-maproot:0:0` 必须勾选，否则 Ubuntu root 无权限写文件
    - 中文文件名勾选“UTF-8”，避免乱码
3.  **Ubuntu 挂载参数**
    - 必带 `nfsvers=3`：兼容 haneWIN 旧版 NFS 协议
    - 必带 `nolock`：解决 NFSv3 锁机制问题
    - 可选 `rw,exec`：支持读写与执行二进制文件（Zephyr 编译需要）
4.  **权限问题**
    - Ubuntu 挂载点权限：`sudo chmod 777 /mnt/nfs-zephyr`（测试用）
    - 稳定后可设 `anonuid=1000,anongid=1000` 映射到普通用户

---

### 七、常见错误排查
| 错误信息 | 可能原因 | 解决方法 |
| :--- | :--- | :--- |
| access denied | 网段不同/客户端未授权 | 改桥接+haneWIN 设 `*` |
| mount.nfs: No route to host | 防火墙拦截 | 放行 111、2049 端口 |
| 中文乱码 | 编码不匹配 | haneWIN 勾选 UTF-8 |
| 无法写入 | 无 `-maproot:0` | 勾选 `-maproot:0:0` |

---

### 最终挂载命令（直接复制）
```bash
sudo mount -t nfs -o nfsvers=3,nolock,rw,exec 192.168.5.22:/zephyr-src /mnt/nfs-zephyr
```
