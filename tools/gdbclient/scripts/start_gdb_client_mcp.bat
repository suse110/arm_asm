@echo off

rem GDB Client MCP Server Start Script
rem This script starts the GDB Client MCP Server in stdio mode

rem Set the working directory to the project root
cd /d "%~dp0\..\.."

rem Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Python is not installed or not in PATH
    pause
    exit /b 1
)

rem Check if pygdbmi is installed
python -c "import pygdbmi" >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: pygdbmi is not installed
    echo Installing pygdbmi...
    pip install -r tools\gdbclient\requirements.txt
    if %errorlevel% neq 0 (
        echo Error: Failed to install pygdbmi
        pause
        exit /b 1
    )
)

rem Start GDB Client MCP Server
echo Starting GDB Client MCP Server...
python tools\gdbclient\gdb_client_mcp.py

if %errorlevel% neq 0 (
    echo Error: Failed to start GDB Client MCP Server
    pause
    exit /b 1
)
