[Scons Advanced Build Example](http://www.scons.org/wiki/AdvancedBuildExample)
[Scons Process Overview](http://www.scons.org/wiki/SconsProcessOverview)
https://github.com/SCons

1. 安装python2.7或以上版本，执行python2.x的安装包程序python-2.7.12.amd64.msi进行安装即可

2. 安装scons
    * 安装包安装
      * 下载scons-3.0.4.zip压缩包并解压缩，（http://sourceforge.net/projects/scons/files/scons/2.3.2/）
      * CMD下进入解压后的scons-3.0.4文件夹
      * 执行命令 python setup.py install 。这将会编译SCons，安装scons脚本到python目录（C:\Python27\Scripts），同时会安装SCons编译引擎到python使用的库目录（C:\Python27\scons）。
    * pip安装
      * python -m pip install scons
执行scons -v 测试是否安装成功。

3. 构建环境
```
env = Environment()   //创建，（name,value）集合
for item in env.Dictionary():
    print '(%s:%s)' %(item,env[item]) //查看内容
env['cc']  //查看变量
env.subst('$CC')  //查看变量，如果subset变量不存在时报告错误。
//修改环境变量
env.Clone   //拷贝一个环境变量
env.Replace  //替换一个已经存在的环境变量
env.SetDefault  //为一个没有被定义的变量设置默认值
env.Append(CCFLAGS = '-g')  //为一个已存在的环境变量增加一个值
env.AppendUnique  //为一个环境变量添加一个唯一的值
flags = {'CCFLAGS':'-option -O3 -O1'}
env.MergeFlags(flags)  //合并环境变量
```

4. 执行环境
Execution Environment:用于Scons执行外部命令，以构建一个或多个目标。当Scons构建一个目标文件时，它说使用的外部环境和执行Scons 时的环境变量是不同的。scons 使用$ENV构建变量中存储的目录作为它执行命令的外部环境变量
```
//在构建环境中显示初始化PATH
path = ['usr/local/bin','/bin','/usr/bin']
env = Environment(ENV = {'PATH':path}) //只设置了ENV
env['ENV']['PATH'] = ['usr/local/bin','/bin','/usr/bin']
//从外部环境初始化PATH
import os
env = Environment(ENV = {'path':os.environ['PATH']})
//使用env.PrependENVPath 和env.AppendENVPath
env.PrependENVPath('PATH','/usr/local/bin') //插入到'$PAHT'第一个位置
```

5. 控制目标文件的路径
* 使用Install:
```
test = env.Program('test.cpp')
env.Install('bin',test)  //放入到bin目录
```

* 在指定目标名的时候指定其目录
```
env.Program('bin/test','test.cpp')

//将目标放到其他目录下，并修改名字
test = env.Program('test.cpp')
env.InstallAs('bin/testapp',test)   //执行文件改为testapp
```

6. 一份代码构建多个版本的Target
一份源码，要构建它的debug版本，又要构建release版本
```
//需要为不同的版本指定不同的obj名字，否则会冲突
opt = Environment(CCFLAGS ='-O2')
dbg = Environment(CCFLAGS = '-g')

o = opt.Object('foo-opt','foo.c')   //生成foo-opt.o
opt.Program(o)

d = dbg.Object('foo-dbg','foo.c')  //生成foo-dbg
dbg.Program(d)
```

7. demo
```
#SConstuct file for Shelf

libs = Split("Ice IceUtil pthread boost_program_options boost_filesystem " +
             "boost_regex boost_system pqxx log4cxx dl ENM"),


env = Environment(CCFLAGS = ["-g", "-Wall"],
                  LINKFLAGS = ["-rdynamic"],
                  CPPPATH = ["#src", "/usr/local/include/coral"],
                  LIBS = libs,
                  SLICEPATH = ["/usr/share/Ice-3.5.1/slice"])

#check library
from SCons.SConf import *

def check_flags():
    e = Environment()
    conf = Configure(e)
    for lib in libs[0]:
        if not conf.CheckLib(lib):
            print "Can't find library ", lib, " exiting..."
            Exit(1)
    conf.Finish()

check_flags()

obj = env.Object(["src/ConfigLoader.cpp",
                  "src/Service.cpp",
                  "src/Template.cpp",
                  "src/Resource.cpp",
                  "src/Persistent.cpp",
                  "src/Plugin.cpp",
                  "src/Main.cpp"])


import os

def build_slice2cpp(target, source, env):

    cmd = "slice2cpp"
    for src in source:
        cmd += " " + str(src)

    tdir = str(source[0]).rpartition("/")[0]
    if tdir:
        cmd += " --output-dir " + tdir

    if "SLICEPATH" in env:
        for path in env["SLICEPATH"]:
            cmd += " -I" + path

    return os.system(cmd)

builder = Builder(action = build_slice2cpp, src_suffix = ".ice")

env.Append(BUILDERS = {"Slice": builder})
env.Slice(["src/Shelf.h", "src/Shelf.cpp"], "src/Shelf")
ice_obj = env.Object("src/Shelf.cpp")

env.Program("slf", [obj, ice_obj])

Export('env')
SConscript('src/plugins/SConscript')

Export('ice_obj')
SConscript('src/tests/SConscript')
```