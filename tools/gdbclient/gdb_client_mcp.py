#!/usr/bin/env python3
"""
GDB Client MCP Server

A Model Context Protocol (MCP) server that wraps GDB functionality
for debugging and analyzing embedded systems.

This server communicates via stdin/stdout using JSON-RPC 2.0 protocol.
"""

import sys
import os
import json
import logging
import asyncio
from typing import Any, Dict

# Add parent directory to path for direct execution
sys.path.insert(0, os.path.join(os.path.dirname(__file__), '..'))

# Handle both module import and direct execution
try:
    from gdb_client_protocol import GDBMCPProtocolHandler
except ImportError:
    from gdbclient.gdb_client_protocol import GDBMCPProtocolHandler


class GDBMCP(stdin):
    """GDB Client MCP Server using stdin/stdout for communication."""
    
    def __init__(self):
        """
        Initialize GDB Client MCP server.
        """
        self.logger = logging.getLogger('gdb_client_mcp')
        self.protocol_handler = GDBMCPProtocolHandler()
        self.running = False
    
    async def run(self):
        """Run GDB Client MCP server loop."""
        self.running = True
        self.logger.info("GDB Client MCP Server started (stdio mode)")
        
        try:
            # Process MCP requests from stdin
            while self.running:
                try:
                    # Read request from stdin
                    line = await asyncio.get_event_loop().run_in_executor(
                        None, sys.stdin.readline
                    )
                    
                    if not line:
                        self.logger.info("EOF received, shutting down")
                        break
                    
                    line = line.strip()
                    if not line:
                        continue
                    
                    self.logger.debug(f"Received: {line}")
                    
                    # Parse JSON request
                    try:
                        request = json.loads(line)
                    except json.JSONDecodeError as e:
                        self.logger.error(f"JSON decode error: {e}")
                        continue
                    
                    # Handle request
                    response = self.protocol_handler.handle_request(request)
                    
                    # Send response (only for requests, not notifications)
                    if response is not None:
                        response_line = json.dumps(response)
                        sys.stdout.write(response_line + "\n")
                        sys.stdout.flush()
                        
                        self.logger.debug(f"Sent: {response_line}")
                    else:
                        self.logger.debug(f"Notification received, no response sent")
                
                except Exception as e:
                    self.logger.error(f"Error processing request: {e}")
                    continue
        
        except KeyboardInterrupt:
            self.logger.info("Interrupted by user")
        finally:
            await self.stop()
    
    async def stop(self):
        """Stop GDB Client MCP server."""
        if not self.running:
            return
        
        self.running = False
        await self.protocol_handler.stop()
        self.logger.info("GDB Client MCP Server stopped")


async def main():
    """Main entry point."""
    import argparse
    
    parser = argparse.ArgumentParser(
        description='GDB Client MCP Server',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  # Start GDB Client MCP Server
  %(prog)s
  
  # Start with debug logging
  %(prog)s --log-level DEBUG
"""
    )
    
    parser.add_argument(
        '--log-level',
        default='WARNING',
        choices=['DEBUG', 'INFO', 'WARNING', 'ERROR'],
        help='Log level (default: WARNING)'
    )
    
    parser.add_argument(
        '--log-file',
        help='Log file path (optional)'
    )
    
    args = parser.parse_args()
    
    # Setup logging
    logging.basicConfig(
        level=getattr(logging, args.log_level),
        format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
        filename=args.log_file
    )
    
    logger = logging.getLogger('gdb_client_main')
    logger.info("Initializing GDB Client MCP Server")
    
    # Create and run GDB Client MCP server
    gdb_client_mcp = GDBMCP()
    
    logger.info("Starting GDB Client MCP Server (stdio mode)...")
    await gdb_client_mcp.run()


if __name__ == '__main__':
    asyncio.run(main())
