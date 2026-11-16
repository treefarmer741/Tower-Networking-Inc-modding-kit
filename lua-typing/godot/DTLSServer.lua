---@meta _
-- Generated API for game version 0.13.4

---@class DTLSServer : RefCounted
local DTLSServer = {}

---@param server_options TLSOptions
---@return Error
function DTLSServer.setup(server_options) end

---@param udp_peer PacketPeerUDP
---@return PacketPeerDTLS
function DTLSServer.take_connection(udp_peer) end
