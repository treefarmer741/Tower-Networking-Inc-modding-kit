---@meta _
-- Generated API for game version 0.10.0

---@class ENetPacketPeer : PacketPeer
local ENetPacketPeer = {}

---@param data integer?  # Default = 0
function ENetPacketPeer.peer_disconnect(data) end

---@param data integer?  # Default = 0
function ENetPacketPeer.peer_disconnect_later(data) end

---@param data integer?  # Default = 0
function ENetPacketPeer.peer_disconnect_now(data) end

function ENetPacketPeer.ping() end

---@param ping_interval integer
function ENetPacketPeer.ping_interval(ping_interval) end

function ENetPacketPeer.reset() end

---@param channel integer
---@param packet PackedByteArray
---@param flags integer
---@return Error
function ENetPacketPeer.send(channel, packet, flags) end

---@param interval integer
---@param acceleration integer
---@param deceleration integer
function ENetPacketPeer.throttle_configure(interval, acceleration, deceleration) end

---@param timeout integer
---@param timeout_min integer
---@param timeout_max integer
function ENetPacketPeer.set_timeout(timeout, timeout_min, timeout_max) end

---@return integer
function ENetPacketPeer.get_packet_flags() end

---@return string
function ENetPacketPeer.get_remote_address() end

---@return integer
function ENetPacketPeer.get_remote_port() end

---@param statistic ENetPacketPeer.PeerStatistic
---@return number
function ENetPacketPeer.get_statistic(statistic) end

---@return ENetPacketPeer.PeerState
function ENetPacketPeer.get_state() end

---@return integer
function ENetPacketPeer.get_channels() end

---@return boolean
function ENetPacketPeer.is_active() end
