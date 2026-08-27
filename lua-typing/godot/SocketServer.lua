---@meta _
-- Generated API for game version 0.12.1

---@class SocketServer : RefCounted
local SocketServer = {}

---@return boolean
function SocketServer.is_connection_available() end

---@return boolean
function SocketServer.is_listening() end

function SocketServer.stop() end

---@return StreamPeerSocket
function SocketServer.take_socket_connection() end
