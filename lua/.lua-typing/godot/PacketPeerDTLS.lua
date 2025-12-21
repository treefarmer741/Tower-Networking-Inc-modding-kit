---@meta _
-- Generated API for game version 0.9.1

---@class PacketPeerDTLS : PacketPeer
local PacketPeerDTLS = {}

function PacketPeerDTLS.poll() end

---@param packet_peer PacketPeerUDP
---@param hostname string
---@param client_options TLSOptions?  # Default = <Object#null>
---@return Error
function PacketPeerDTLS.connect_to_peer(packet_peer, hostname, client_options) end

---@return PacketPeerDTLS.Status
function PacketPeerDTLS.get_status() end

function PacketPeerDTLS.disconnect_from_peer() end
