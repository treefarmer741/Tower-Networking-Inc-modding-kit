---@meta _
-- Generated API for game version 0.12.1

---@class UDSServer : SocketServer
local UDSServer = {}

---@param path string
---@return Error
function UDSServer.listen(path) end

---@return StreamPeerUDS
function UDSServer.take_connection() end
