#!/usr/bin/env python3
"""
GDB Client MCP Protocol Handler

Implements the Model Context Protocol (MCP) for GDB Client functionality.
"""

import json
import logging
import asyncio
from typing import Any, Dict, List, Optional
from dataclasses import dataclass, asdict

# Try to import pygdbmi
try:
    from pygdbmi.gdbcontroller import GdbController
except ImportError:
    logging.error("pygdbmi not installed. Please run 'pip install -r requirements.txt'")
    raise


@dataclass
class GDBMCPTool:
    """GDB Client MCP Tool definition."""
    name: str
    description: str
    input_schema: Dict[str, Any]


class GDBMCPProtocolHandler:
    """GDB Client MCP Protocol Handler."""
    
    def __init__(self, gdb_path: Optional[str] = None, target_xml: Optional[str] = None):
        """
        Initialize GDB Client MCP Protocol Handler.
        
        Args:
            gdb_path: Path to GDB executable (default: arm-none-eabi-gdb.exe)
            target_xml: Path to target XML description file
        """
        self.logger = logging.getLogger('gdb_client_protocol')
        self.gdbmi = None
        self.connected = False
        self.gdb_path = gdb_path or r"I:\workspace\os\myos\arm_asm\tools\toolchain\gcc-arm-none-eabi-10-2020-q4-major\bin\arm-none-eabi-gdb.exe"
        self.target_xml = target_xml or r"I:\workspace\os\myos\arm_asm\tools\gdbstub\src\arch\armv8m_target.xml"
        self.tools = self._get_available_tools()
    
    def _get_available_tools(self) -> List[GDBMCPTool]:
        """
        Get available MCP tools.
        
        Returns:
            List of available tools
        """
        return [
            GDBMCPTool(
                name="connect",
                description="Connect to GDB remote server",
                input_schema={
                    "type": "object",
                    "properties": {
                        "host": {
                            "type": "string",
                            "description": "Hostname or IP address"
                        },
                        "port": {
                            "type": "integer",
                            "description": "Port number"
                        }
                    },
                    "required": ["host", "port"]
                }
            ),
            GDBMCPTool(
                name="disconnect",
                description="Disconnect from GDB remote server",
                input_schema={
                    "type": "object",
                    "properties": {}
                }
            ),
            GDBMCPTool(
                name="load_elf",
                description="Load ELF file to target",
                input_schema={
                    "type": "object",
                    "properties": {
                        "filepath": {
                            "type": "string",
                            "description": "Path to ELF file"
                        }
                    },
                    "required": ["filepath"]
                }
            ),
            GDBMCPTool(
                name="restore_binary",
                description="Restore binary file to target memory",
                input_schema={
                    "type": "object",
                    "properties": {
                        "filepath": {
                            "type": "string",
                            "description": "Path to binary file"
                        },
                        "address": {
                            "type": "integer",
                            "description": "Memory address to restore to"
                        }
                    },
                    "required": ["filepath", "address"]
                }
            ),
            GDBMCPTool(
                name="load_elf_and_restore_snapshot",
                description="Load ELF file and restore memory snapshot",
                input_schema={
                    "type": "object",
                    "properties": {
                        "elf_filepath": {
                            "type": "string",
                            "description": "Path to ELF file"
                        },
                        "snapshot_gdb": {
                            "type": "string",
                            "description": "Path to GDB script with restore commands"
                        }
                    },
                    "required": ["elf_filepath", "snapshot_gdb"]
                }
            ),
            GDBMCPTool(
                name="source_gdb_script",
                description="Source GDB script file",
                input_schema={
                    "type": "object",
                    "properties": {
                        "filepath": {
                            "type": "string",
                            "description": "Path to GDB script file"
                        }
                    },
                    "required": ["filepath"]
                }
            ),
            GDBMCPTool(
                name="backtrace",
                description="Get backtrace (stack trace)",
                input_schema={
                    "type": "object",
                    "properties": {}
                }
            ),
            GDBMCPTool(
                name="info_registers",
                description="Get register values",
                input_schema={
                    "type": "object",
                    "properties": {}
                }
            ),
            GDBMCPTool(
                name="info_breakpoints",
                description="Get breakpoint information",
                input_schema={
                    "type": "object",
                    "properties": {}
                }
            ),
            GDBMCPTool(
                name="step",
                description="Step to next line",
                input_schema={
                    "type": "object",
                    "properties": {}
                }
            ),
            GDBMCPTool(
                name="stepi",
                description="Step to next instruction",
                input_schema={
                    "type": "object",
                    "properties": {}
                }
            ),
            GDBMCPTool(
                name="next",
                description="Next line (step over)",
                input_schema={
                    "type": "object",
                    "properties": {}
                }
            ),
            GDBMCPTool(
                name="continue",
                description="Continue execution",
                input_schema={
                    "type": "object",
                    "properties": {}
                }
            ),
            GDBMCPTool(
                name="print_expression",
                description="Print expression value",
                input_schema={
                    "type": "object",
                    "properties": {
                        "expression": {
                            "type": "string",
                            "description": "Expression to evaluate"
                        }
                    },
                    "required": ["expression"]
                }
            ),
            GDBMCPTool(
                name="disassemble",
                description="Disassemble memory",
                input_schema={
                    "type": "object",
                    "properties": {
                        "address": {
                            "type": "integer",
                            "description": "Start address"
                        },
                        "count": {
                            "type": "integer",
                            "description": "Number of instructions"
                        }
                    },
                    "required": ["address", "count"]
                }
            ),
            GDBMCPTool(
                name="set_breakpoint",
                description="Set breakpoint",
                input_schema={
                    "type": "object",
                    "properties": {
                        "address": {
                            "type": "integer",
                            "description": "Breakpoint address"
                        }
                    },
                    "required": ["address"]
                }
            ),
            GDBMCPTool(
                name="delete_breakpoint",
                description="Delete breakpoint",
                input_schema={
                    "type": "object",
                    "properties": {
                        "id": {
                            "type": "integer",
                            "description": "Breakpoint ID"
                        }
                    },
                    "required": ["id"]
                }
            ),
            GDBMCPTool(
                name="execute",
                description="Execute arbitrary GDB command",
                input_schema={
                    "type": "object",
                    "properties": {
                        "command": {
                            "type": "string",
                            "description": "GDB command to execute"
                        }
                    },
                    "required": ["command"]
                }
            ),
            GDBMCPTool(
                name="is_connected",
                description="Check if connected to GDB server",
                input_schema={
                    "type": "object",
                    "properties": {}
                }
            ),
        ]
    
    def handle_request(self, request: Dict[str, Any]) -> Optional[Dict[str, Any]]:
        """
        Handle MCP request.
        
        Args:
            request: MCP request dictionary
            
        Returns:
            MCP response dictionary, or None for notifications
        """
        method = request.get("method")
        params = request.get("params", {})
        request_id = request.get("id")
        
        self.logger.debug(f"Handling MCP request: {method}")
        
        # Notifications have id=null and should not be responded to
        if request_id is None:
            self.logger.debug(f"Skipping notification: {method}")
            return None
        
        try:
            if method == "initialize":
                return self._handle_initialize(request_id, params)
            elif method == "tools/list":
                return self._handle_tools_list(request_id)
            elif method == "tools/call":
                return self._handle_tools_call(request_id, params)
            elif method == "resources/list":
                return self._handle_resources_list(request_id)
            elif method == "ping":
                return self._handle_ping(request_id)
            else:
                return self._handle_error(request_id, -32601, "Method not found")
        except Exception as e:
            self.logger.error(f"Error handling request: {e}")
            return self._handle_error(request_id, -32000, str(e))
    
    def _handle_initialize(self, request_id: Any, params: Dict[str, Any]) -> Dict[str, Any]:
        """Handle initialize request."""
        return {
            "jsonrpc": "2.0",
            "id": request_id,
            "result": {
                "protocolVersion": "2024-11-05",
                "capabilities": {
                    "tools": {
                        "listChanged": False
                    },
                    "resources": {
                        "subscribe": False,
                        "listChanged": False
                    }
                }
            }
        }
    
    def _handle_tools_list(self, request_id: Any) -> Dict[str, Any]:
        """Handle tools/list request."""
        tools_info = [
            {
                "name": tool.name,
                "description": tool.description,
                "inputSchema": tool.input_schema
            }
            for tool in self.tools
        ]
        
        return {
            "jsonrpc": "2.0",
            "id": request_id,
            "result": {
                "tools": tools_info
            }
        }
    
    def _handle_tools_call(self, request_id: Any, params: Dict[str, Any]) -> Dict[str, Any]:
        """Handle tools/call request."""
        tool_name = params.get("tool")
        tool_args = params.get("args", {})
        
        if not tool_name:
            return self._handle_error(request_id, -32602, "Tool name required")
        
        # Get tool by name
        tool = next((t for t in self.tools if t.name == tool_name), None)
        if not tool:
            return self._handle_error(request_id, -32602, f"Tool not found: {tool_name}")
        
        # Call tool
        try:
            result = getattr(self, f"{tool_name}")(**tool_args)
            return {
                "jsonrpc": "2.0",
                "id": request_id,
                "result": result
            }
        except Exception as e:
            return self._handle_error(request_id, -32000, str(e))
    
    def _handle_resources_list(self, request_id: Any) -> Dict[str, Any]:
        """Handle resources/list request."""
        return {
            "jsonrpc": "2.0",
            "id": request_id,
            "result": {
                "resources": []
            }
        }
    
    def _handle_ping(self, request_id: Any) -> Dict[str, Any]:
        """Handle ping request."""
        return {
            "jsonrpc": "2.0",
            "id": request_id,
            "result": {
                "pong": True
            }
        }
    
    def _handle_error(self, request_id: Any, code: int, message: str) -> Dict[str, Any]:
        """Handle error."""
        return {
            "jsonrpc": "2.0",
            "id": request_id,
            "error": {
                "code": code,
                "message": message
            }
        }
    
    async def stop(self):
        """Stop GDB Client MCP Protocol Handler."""
        if self.gdbmi:
            try:
                self.gdbmi.exit()
                self.logger.info("GDB controller stopped")
            except Exception as e:
                self.logger.error(f"Error stopping GDB controller: {e}")
        self.gdbmi = None
        self.connected = False
    
    # GDB Client MCP Tools
    
    def connect(self, host: str, port: int) -> Dict[str, Any]:
        """
        Connect to GDB remote server.
        
        Args:
            host: Hostname or IP address
            port: Port number
            
        Returns:
            Connection result
        """
        try:
            # Start GDB controller with specified GDB path
            self.gdbmi = GdbController(command=[self.gdb_path, "--nx", "--quiet", "--interpreter=mi3"])
            self.logger.info(f"Started GDB controller: {self.gdbmi.command}")
            
            # Set target description file
            if self.target_xml:
                response = self.gdbmi.write(f'set target-xml {self.target_xml}')
                self.logger.debug(f"Set target XML response: {response}")
            
            # Connect to remote GDB server
            response = self.gdbmi.write(f'target remote {host}:{port}')
            self.logger.debug(f"Connect response: {response}")
            
            self.connected = True
            return {
                "status": "success",
                "message": f"Connected to {host}:{port}",
                "host": host,
                "port": port,
                "gdb_path": self.gdb_path,
                "target_xml": self.target_xml
            }
        except Exception as e:
            self.logger.error(f"Connection error: {e}")
            self.connected = False
            return {
                "status": "error",
                "message": str(e),
                "host": host,
                "port": port
            }
    
    def disconnect(self) -> Dict[str, Any]:
        """
        Disconnect from GDB remote server.
        
        Returns:
            Disconnection result
        """
        try:
            if self.gdbmi:
                self.gdbmi.exit()
                self.gdbmi = None
            self.connected = False
            return {
                "status": "success",
                "message": "Disconnected from GDB server"
            }
        except Exception as e:
            self.logger.error(f"Disconnection error: {e}")
            return {
                "status": "error",
                "message": str(e)
            }
    
    def load_elf(self, filepath: str) -> Dict[str, Any]:
        """
        Load ELF file to target.
        
        Args:
            filepath: Path to ELF file
            
        Returns:
            Load result
        """
        if not self.gdbmi:
            return {
                "status": "error",
                "message": "Not connected to GDB server"
            }
        
        try:
            # Load symbols
            response = self.gdbmi.write(f'-file-exec-and-symbols {filepath}')
            self.logger.debug(f"Load symbols response: {response}")
            
            # Load binary
            response = self.gdbmi.write(f'load {filepath}')
            self.logger.debug(f"Load binary response: {response}")
            
            return {
                "status": "success",
                "message": f"Loaded ELF file: {filepath}",
                "filepath": filepath
            }
        except Exception as e:
            self.logger.error(f"Load ELF error: {e}")
            return {
                "status": "error",
                "message": str(e),
                "filepath": filepath
            }
    
    def restore_binary(self, filepath: str, address: int) -> Dict[str, Any]:
        """
        Restore binary file to target memory.
        
        Args:
            filepath: Path to binary file
            address: Memory address to restore to
            
        Returns:
            Restore result
        """
        if not self.gdbmi:
            return {
                "status": "error",
                "message": "Not connected to GDB server"
            }
        
        try:
            response = self.gdbmi.write(f'restore {filepath} binary {address:#x}')
            self.logger.debug(f"Restore response: {response}")
            
            return {
                "status": "success",
                "message": f"Restored binary file: {filepath} to 0x{address:08x}",
                "filepath": filepath,
                "address": address
            }
        except Exception as e:
            self.logger.error(f"Restore error: {e}")
            return {
                "status": "error",
                "message": str(e),
                "filepath": filepath,
                "address": address
            }
    
    def load_elf_and_restore_snapshot(self, elf_filepath: str, snapshot_gdb: str) -> Dict[str, Any]:
        """
        Load ELF file and restore memory snapshot.
        
        Args:
            elf_filepath: Path to ELF file
            snapshot_gdb: Path to GDB script with restore commands
            
        Returns:
            Combined result
        """
        if not self.gdbmi:
            return {
                "status": "error",
                "message": "Not connected to GDB server"
            }
        
        try:
            # Load ELF file
            elf_result = self.load_elf(elf_filepath)
            if elf_result["status"] != "success":
                return elf_result
            
            # Source GDB script
            script_result = self.source_gdb_script(snapshot_gdb)
            if script_result["status"] != "success":
                return script_result
            
            return {
                "status": "success",
                "message": f"Loaded ELF file and restored snapshot",
                "elf_filepath": elf_filepath,
                "snapshot_gdb": snapshot_gdb
            }
        except Exception as e:
            self.logger.error(f"Load and restore error: {e}")
            return {
                "status": "error",
                "message": str(e),
                "elf_filepath": elf_filepath,
                "snapshot_gdb": snapshot_gdb
            }
    
    def source_gdb_script(self, filepath: str) -> Dict[str, Any]:
        """
        Source GDB script file.
        
        Args:
            filepath: Path to GDB script file
            
        Returns:
            Source result
        """
        if not self.gdbmi:
            return {
                "status": "error",
                "message": "Not connected to GDB server"
            }
        
        try:
            response = self.gdbmi.write(f'source {filepath}')
            self.logger.debug(f"Source script response: {response}")
            
            return {
                "status": "success",
                "message": f"Sourced GDB script: {filepath}",
                "filepath": filepath
            }
        except Exception as e:
            self.logger.error(f"Source script error: {e}")
            return {
                "status": "error",
                "message": str(e),
                "filepath": filepath
            }
    
    def backtrace(self) -> Dict[str, Any]:
        """
        Get backtrace (stack trace).
        
        Returns:
            Backtrace result
        """
        if not self.gdbmi:
            return {
                "status": "error",
                "message": "Not connected to GDB server"
            }
        
        try:
            response = self.gdbmi.write('-stack-list-frames')
            self.logger.debug(f"Backtrace response: {response}")
            
            return {
                "status": "success",
                "backtrace": response
            }
        except Exception as e:
            self.logger.error(f"Backtrace error: {e}")
            return {
                "status": "error",
                "message": str(e)
            }
    
    def info_registers(self) -> Dict[str, Any]:
        """
        Get register values.
        
        Returns:
            Register values
        """
        if not self.gdbmi:
            return {
                "status": "error",
                "message": "Not connected to GDB server"
            }
        
        try:
            response = self.gdbmi.write('-data-list-register-values x')
            self.logger.debug(f"Registers response: {response}")
            
            return {
                "status": "success",
                "registers": response
            }
        except Exception as e:
            self.logger.error(f"Registers error: {e}")
            return {
                "status": "error",
                "message": str(e)
            }
    
    def info_breakpoints(self) -> Dict[str, Any]:
        """
        Get breakpoint information.
        
        Returns:
            Breakpoint information
        """
        if not self.gdbmi:
            return {
                "status": "error",
                "message": "Not connected to GDB server"
            }
        
        try:
            response = self.gdbmi.write('-breakpoint-list')
            self.logger.debug(f"Breakpoints response: {response}")
            
            return {
                "status": "success",
                "breakpoints": response
            }
        except Exception as e:
            self.logger.error(f"Breakpoints error: {e}")
            return {
                "status": "error",
                "message": str(e)
            }
    
    def step(self) -> Dict[str, Any]:
        """
        Step to next line.
        
        Returns:
            Step result
        """
        if not self.gdbmi:
            return {
                "status": "error",
                "message": "Not connected to GDB server"
            }
        
        try:
            response = self.gdbmi.write('-exec-step')
            self.logger.debug(f"Step response: {response}")
            
            return {
                "status": "success",
                "message": "Stepped to next line",
                "response": response
            }
        except Exception as e:
            self.logger.error(f"Step error: {e}")
            return {
                "status": "error",
                "message": str(e)
            }
    
    def stepi(self) -> Dict[str, Any]:
        """
        Step to next instruction.
        
        Returns:
            Stepi result
        """
        if not self.gdbmi:
            return {
                "status": "error",
                "message": "Not connected to GDB server"
            }
        
        try:
            response = self.gdbmi.write('-exec-step-instruction')
            self.logger.debug(f"Stepi response: {response}")
            
            return {
                "status": "success",
                "message": "Stepped to next instruction",
                "response": response
            }
        except Exception as e:
            self.logger.error(f"Stepi error: {e}")
            return {
                "status": "error",
                "message": str(e)
            }
    
    def next(self) -> Dict[str, Any]:
        """
        Next line (step over).
        
        Returns:
            Next result
        """
        if not self.gdbmi:
            return {
                "status": "error",
                "message": "Not connected to GDB server"
            }
        
        try:
            response = self.gdbmi.write('-exec-next')
            self.logger.debug(f"Next response: {response}")
            
            return {
                "status": "success",
                "message": "Stepped over to next line",
                "response": response
            }
        except Exception as e:
            self.logger.error(f"Next error: {e}")
            return {
                "status": "error",
                "message": str(e)
            }
    
    def continue_execution(self) -> Dict[str, Any]:
        """
        Continue execution.
        
        Returns:
            Continue result
        """
        if not self.gdbmi:
            return {
                "status": "error",
                "message": "Not connected to GDB server"
            }
        
        try:
            response = self.gdbmi.write('-exec-continue')
            self.logger.debug(f"Continue response: {response}")
            
            return {
                "status": "success",
                "message": "Continued execution",
                "response": response
            }
        except Exception as e:
            self.logger.error(f"Continue error: {e}")
            return {
                "status": "error",
                "message": str(e)
            }
    
    def print_expression(self, expression: str) -> Dict[str, Any]:
        """
        Print expression value.
        
        Args:
            expression: Expression to evaluate
            
        Returns:
            Expression value
        """
        if not self.gdbmi:
            return {
                "status": "error",
                "message": "Not connected to GDB server"
            }
        
        try:
            response = self.gdbmi.write(f'-data-evaluate-expression {expression}')
            self.logger.debug(f"Print expression response: {response}")
            
            return {
                "status": "success",
                "expression": expression,
                "value": response
            }
        except Exception as e:
            self.logger.error(f"Print expression error: {e}")
            return {
                "status": "error",
                "message": str(e),
                "expression": expression
            }
    
    def disassemble(self, address: int, count: int) -> Dict[str, Any]:
        """
        Disassemble memory.
        
        Args:
            address: Start address
            count: Number of instructions
            
        Returns:
            Disassembly result
        """
        if not self.gdbmi:
            return {
                "status": "error",
                "message": "Not connected to GDB server"
            }
        
        try:
            response = self.gdbmi.write(f'-data-disassemble -s {address} -e {address + count * 4} -- 0')
            self.logger.debug(f"Disassemble response: {response}")
            
            return {
                "status": "success",
                "address": address,
                "count": count,
                "disassembly": response
            }
        except Exception as e:
            self.logger.error(f"Disassemble error: {e}")
            return {
                "status": "error",
                "message": str(e),
                "address": address,
                "count": count
            }
    
    def set_breakpoint(self, address: int) -> Dict[str, Any]:
        """
        Set breakpoint.
        
        Args:
            address: Breakpoint address
            
        Returns:
            Breakpoint result
        """
        if not self.gdbmi:
            return {
                "status": "error",
                "message": "Not connected to GDB server"
            }
        
        try:
            response = self.gdbmi.write(f'-break-insert *{address}')
            self.logger.debug(f"Set breakpoint response: {response}")
            
            return {
                "status": "success",
                "message": f"Set breakpoint at 0x{address:08x}",
                "address": address,
                "response": response
            }
        except Exception as e:
            self.logger.error(f"Set breakpoint error: {e}")
            return {
                "status": "error",
                "message": str(e),
                "address": address
            }
    
    def delete_breakpoint(self, id: int) -> Dict[str, Any]:
        """
        Delete breakpoint.
        
        Args:
            id: Breakpoint ID
            
        Returns:
            Delete result
        """
        if not self.gdbmi:
            return {
                "status": "error",
                "message": "Not connected to GDB server"
            }
        
        try:
            response = self.gdbmi.write(f'-break-delete {id}')
            self.logger.debug(f"Delete breakpoint response: {response}")
            
            return {
                "status": "success",
                "message": f"Deleted breakpoint {id}",
                "breakpoint_id": id,
                "response": response
            }
        except Exception as e:
            self.logger.error(f"Delete breakpoint error: {e}")
            return {
                "status": "error",
                "message": str(e),
                "breakpoint_id": id
            }
    
    def execute(self, command: str) -> Dict[str, Any]:
        """
        Execute arbitrary GDB command.
        
        Args:
            command: GDB command to execute
            
        Returns:
            Command result
        """
        if not self.gdbmi:
            return {
                "status": "error",
                "message": "Not connected to GDB server"
            }
        
        try:
            response = self.gdbmi.write(command)
            self.logger.debug(f"Execute command response: {response}")
            
            return {
                "status": "success",
                "command": command,
                "response": response
            }
        except Exception as e:
            self.logger.error(f"Execute command error: {e}")
            return {
                "status": "error",
                "message": str(e),
                "command": command
            }
    
    def is_connected(self) -> Dict[str, Any]:
        """
        Check if connected to GDB server.
        
        Returns:
            Connection status
        """
        return {
            "status": "success",
            "connected": self.connected
        }
