1. 重装系统后pyenv恢复，**重新添加环境变量**：
    
    - 右键点击 **“此电脑”** -> **“属性”** -> **“高级系统设置”** -> **“环境变量”**。
        
    - 在 **“用户变量”** 或 **“系统变量”** 中，找到并编辑 `PATH` 变量，**添加以下两条路径**（将 `%USERPROFILE%` 替换为你的实际用户目录，如 `C:\Users\你的用户名`）：
        
        text
        
        %USERPROFILE%\.pyenv\pyenv-win\bin
        %USERPROFILE%\.pyenv\pyenv-win\shims
        
    - **重要**：确保 `pyenv` 的路径在系统自带的 Python 路径**之前**。
2. **在PowerShell中重建垫片**：  
    打开新的PowerShell（可能需要管理员权限），运行：
    
	```powershell
    # 切换到pyenv目录
    cd $HOME\.pyenv\pyenv-win\bin
    # 重新生成垫片（shims），这步很关键
    .\pyenv rehash
    ```
3. **创建/修改用户变量**：  
    在 **“用户变量”** 区域，**新建或编辑**以下变量：

| 变量名          | 变量值（示例）                                                                                               | 说明                         |
| :----------- | ----------------------------------------------------------------------------------------------------- | -------------------------- |
| `PYENV`      | %USERPROFILE%\.pyenv\pyenv-win                                                                        | pyenv 的主目录                 |
| `PYENV_ROOT` | `%USERPROFILE%\.pyenv\pyenv-win`                                                                      | 同 PYENV，兼容性需要              |
| `PYENV_HOME` | `%USERPROFILE%\.pyenv\pyenv-win`                                                                      | 同 PYENV，兼容性需要              |
| `PATH`       | **确保包含以下两条路径**：  <br>`%USERPROFILE%\.pyenv\pyenv-win\bin`  <br>`%USERPROFILE%\.pyenv\pyenv-win\shims` | `bin` 目录存放主程序，`shims` 存放垫片 |
|              |                                                                                                       |                            |
|              |                                                                                                       |                            |

**重要提示**：
- 如果 `PATH` 变量中已有其他Python路径，请将这两条路径**移动到最前面**，确保优先级最高。
- 变量值中的 `%USERPROFILE%` 会自动扩展为你的用户目录（如 `C:\Users\你的用户名`），无需手动修改。
4. **验证是否恢复**：
    ```powershell
    pyenv --version
    pyenv versions
    ```
    如果能显示版本号和你安装过的Python列表，就成功了。