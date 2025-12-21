---@meta _
-- Generated API for game version 0.9.1

---@class TCPServer : RefCounted
local TCPServer = {}

---@param port integer
---@param bind_address string?  # Default = *
---@return Error
function TCPServer.listen(port, bind_address) end

---@return boolean
function TCPServer.is_connection_available() end

---@return boolean
function TCPServer.is_listening() end

---@return integer
function TCPServer.get_local_port() end

---@return StreamPeerTCP
function TCPServer.take_connection() end

function TCPServer.stop() end
