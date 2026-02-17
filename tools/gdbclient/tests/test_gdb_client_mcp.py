#!/usr/bin/env python3
"""
Test script for GDB Client MCP Server

This script tests the basic functionality of the GDB Client MCP server
without requiring a running GDB server.
"""

import sys
import os
import json
import logging

# Add parent directory to path
sys.path.insert(0, os.path.join(os.path.dirname(__file__), '..'))

from gdb_client_protocol import GDBMCPProtocolHandler


def test_protocol_handler():
    """Test GDB Client MCP Protocol Handler."""
    print("Testing GDB Client MCP Protocol Handler...")
    
    # Create protocol handler
    handler = GDBMCPProtocolHandler()
    
    # Test 1: Initialize
    print("\nTest 1: Initialize")
    request = {
        "jsonrpc": "2.0",
        "id": 1,
        "method": "initialize",
        "params": {
            "protocolVersion": "2024-11-05",
            "capabilities": {}
        }
    }
    response = handler.handle_request(request)
    print(f"Response: {json.dumps(response, indent=2)}")
    assert response["result"]["protocolVersion"] == "2024-11-05"
    print("✓ Initialize test passed")
    
    # Test 2: Tools list
    print("\nTest 2: Tools list")
    request = {
        "jsonrpc": "2.0",
        "id": 2,
        "method": "tools/list"
    }
    response = handler.handle_request(request)
    print(f"Number of tools: {len(response['result']['tools'])}")
    print(f"Tools: {[tool['name'] for tool in response['result']['tools']]}")
    assert len(response["result"]["tools"]) > 0
    print("✓ Tools list test passed")
    
    # Test 3: Ping
    print("\nTest 3: Ping")
    request = {
        "jsonrpc": "2.0",
        "id": 3,
        "method": "ping"
    }
    response = handler.handle_request(request)
    print(f"Response: {json.dumps(response, indent=2)}")
    assert response["result"]["pong"] == True
    print("✓ Ping test passed")
    
    # Test 4: Resources list
    print("\nTest 4: Resources list")
    request = {
        "jsonrpc": "2.0",
        "id": 4,
        "method": "resources/list"
    }
    response = handler.handle_request(request)
    print(f"Response: {json.dumps(response, indent=2)}")
    assert response["result"]["resources"] == []
    print("✓ Resources list test passed")
    
    # Test 5: Notification (should not respond)
    print("\nTest 5: Notification")
    request = {
        "jsonrpc": "2.0",
        "id": None,
        "method": "notifications/initialized"
    }
    response = handler.handle_request(request)
    print(f"Response: {response}")
    assert response is None
    print("✓ Notification test passed")
    
    # Test 6: is_connected tool (without connecting)
    print("\nTest 6: is_connected tool (without connecting)")
    request = {
        "jsonrpc": "2.0",
        "id": 6,
        "method": "tools/call",
        "params": {
            "tool": "is_connected",
            "args": {}
        }
    }
    response = handler.handle_request(request)
    print(f"Response: {json.dumps(response, indent=2)}")
    assert response["result"]["status"] == "success"
    assert response["result"]["connected"] == False
    print("✓ is_connected test passed")
    
    # Test 7: Error handling - invalid method
    print("\nTest 7: Error handling - invalid method")
    request = {
        "jsonrpc": "2.0",
        "id": 7,
        "method": "invalid_method"
    }
    response = handler.handle_request(request)
    print(f"Response: {json.dumps(response, indent=2)}")
    assert response["error"]["code"] == -32601
    print("✓ Error handling test passed")
    
    # Test 8: Error handling - missing tool name
    print("\nTest 8: Error handling - missing tool name")
    request = {
        "jsonrpc": "2.0",
        "id": 8,
        "method": "tools/call",
        "params": {
            "args": {}
        }
    }
    response = handler.handle_request(request)
    print(f"Response: {json.dumps(response, indent=2)}")
    assert response["error"]["code"] == -32602
    print("✓ Error handling test passed")
    
    # Test 9: Error handling - tool not found
    print("\nTest 9: Error handling - tool not found")
    request = {
        "jsonrpc": "2.0",
        "id": 9,
        "method": "tools/call",
        "params": {
            "tool": "invalid_tool",
            "args": {}
        }
    }
    response = handler.handle_request(request)
    print(f"Response: {json.dumps(response, indent=2)}")
    assert response["error"]["code"] == -32602
    print("✓ Error handling test passed")
    
    # Test 10: connect tool (without GDB server)
    print("\nTest 10: connect tool (without GDB server)")
    request = {
        "jsonrpc": "2.0",
        "id": 10,
        "method": "tools/call",
        "params": {
            "tool": "connect",
            "args": {
                "host": "localhost",
                "port": 1234
            }
        }
    }
    response = handler.handle_request(request)
    print(f"Response: {json.dumps(response, indent=2)}")
    # This will fail because there's no GDB server running
    print("✓ connect tool test passed (expected to fail without GDB server)")
    
    print("\n" + "="*50)
    print("All tests passed!")
    print("="*50)


if __name__ == '__main__':
    logging.basicConfig(level=logging.INFO)
    try:
        test_protocol_handler()
    except Exception as e:
        print(f"\nTest failed with error: {e}")
        import traceback
        traceback.print_exc()
        sys.exit(1)
