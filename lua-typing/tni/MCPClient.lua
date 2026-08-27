---@meta _
-- Generated API for game version 0.12.1

---@class MCPClient : Node
---@field DEFAULT_URL string # Constant value: ws://127.0.0.1:6505
---@field RECONNECT_DELAY number # Constant value: 2.0
---@field MAX_RECONNECT_DELAY number # Constant value: 10.0
---@field MAX_PACKETS_PER_FRAME integer # Constant value: 32
---@field socket WebSocketPeer
---@field server_url string
local MCPClient = {}

---@param url string?  # Default = ws://127.0.0.1:6505
function MCPClient.connect_to_server(url) end

function MCPClient.disconnect_from_server() end

---@param request_id string
---@param success boolean
---@param result Object?  # Default = <null>
---@param error string?  # Default = 
function MCPClient.send_tool_result(request_id, success, result, error) end

---@return boolean
function MCPClient.is_connected_to_server() end

---@return boolean
function MCPClient.is_runtime_connected() end
