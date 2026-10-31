---@meta _
-- Generated API for game version 0.10.0

---@class DTLSServer : RefCounted
local DTLSServer = {}

---@param server_options TLSOptions
---@return Error
function DTLSServer.setup(server_options) end

---@param udp_peer PacketPeerUDP
---@return PacketPeerDTLS
function DTLSServer.take_connection(udp_peer) end
