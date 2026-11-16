---@meta _
-- Generated API for game version 0.13.4

---@class TCPServer : SocketServer
local TCPServer = {}

---@param port integer
---@param bind_address string?  # Default = *
---@return Error
function TCPServer.listen(port, bind_address) end

---@return integer
function TCPServer.get_local_port() end

---@return StreamPeerTCP
function TCPServer.take_connection() end
