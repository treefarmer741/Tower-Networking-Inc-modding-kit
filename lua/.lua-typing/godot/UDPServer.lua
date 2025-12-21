---@meta _
-- Generated API for game version 0.9.1

---@class UDPServer : RefCounted
---@field max_pending_connections integer
local UDPServer = {}

---@param port integer
---@param bind_address string?  # Default = *
---@return Error
function UDPServer.listen(port, bind_address) end

---@return Error
function UDPServer.poll() end

---@return boolean
function UDPServer.is_connection_available() end

---@return integer
function UDPServer.get_local_port() end

---@return boolean
function UDPServer.is_listening() end

---@return PacketPeerUDP
function UDPServer.take_connection() end

function UDPServer.stop() end

---@param max_pending_connections integer
function UDPServer.set_max_pending_connections(max_pending_connections) end

---@return integer
function UDPServer.get_max_pending_connections() end
