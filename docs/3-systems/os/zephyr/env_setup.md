参考链接: [Getting_started](https://docs.zephyrproject.org/3.7.0/develop/getting_started/index.html)


# 初始化时直接指定 Zephyr 3.7.0 版本，工作区目录仍为 ~/zephyrprj
west init -m https://github.com/zephyrproject-rtos/zephyr --mr v3.7.0 ~/zephyrprj
* 作用：在 ~/zephyrproject 目录下初始化一个 Zephyr 项目工作区（workspace）。
* 关键：该命令未指定具体的 Zephyr 版本 / 分支，默认会克隆 Zephyr 官方仓库的 main 分支（最新开发版，不是 3.7.0 稳定版）作为项目的 “基础仓库”。
也可以直接执行west init 拉取main分支，后续checkout到v3.7.0分支

# 进入工作区
cd ~/zephyrprj
# 拉取 3.7.0 版本对应的所有依赖（此时 west update 会同步配套依赖，而非最新版）
west update
* 作用：根据工作区的配置文件（.west/config），拉取 / 更新 Zephyr 项目所需的所有依赖仓库（如芯片支持库、工具链依赖等）。
* 关键：它会跟随 west init 时确定的基础仓库版本，如果 west init 没指定 3.7.0，它更新的所有依赖也都是对应 main 分支的版本，而非 3.7.0 配套依赖。

创建zephyr镜像:
1. 将zephyr 同步到本地后，将zephyr以及zephyr/west.yml 描述的仓库用git clone --mirror <local-repo-path> <mirror-repo-path> 建立裸仓库镜像，比如：git clone --mirror F:\workspace\src\zephyr-src\zephyrproject\zephyr F:\workspace\src\zephyr-src\zephyr-mirror\repos\zephyr.git
2. west init -m F:\workspace\src\zephyr-src\zephyr-mirror\repos\zephyr.git -mr v3.7.0 zephryproject
3. 将同步下来的zephyr\west.yml里的remotes的url-base 改为 本地镜像仓库F:\workspace\src\zephyr-src\zephyr-mirror\repos
4. 执行west update
5. 安装python依赖 pip install -r zephyr/scripts/requirements.txt
6. build hello world: 
	1. west build -b qemu_cortex_m3 zephyr/samples/hello_world -t run --build-dir build/qemu_cortex_m3_hello_world_app
7. 