---@meta _
-- Generated API for game version 0.10.0

---@class MultiplayerPeer : PacketPeer
---@field refuse_new_connections boolean
---@field transfer_mode integer
---@field transfer_channel integer
local MultiplayerPeer = {}

---@param channel integer
function MultiplayerPeer.set_transfer_channel(channel) end

---@return integer
function MultiplayerPeer.get_transfer_channel() end

---@param mode MultiplayerPeer.TransferMode
function MultiplayerPeer.set_transfer_mode(mode) end

---@return MultiplayerPeer.TransferMode
function MultiplayerPeer.get_transfer_mode() end

---@param id integer
function MultiplayerPeer.set_target_peer(id) end

---@return integer
function MultiplayerPeer.get_packet_peer() end

---@return integer
function MultiplayerPeer.get_packet_channel() end

---@return MultiplayerPeer.TransferMode
function MultiplayerPeer.get_packet_mode() end

function MultiplayerPeer.poll() end

function MultiplayerPeer.close() end

---@param peer integer
---@param force boolean?  # Default = false
function MultiplayerPeer.disconnect_peer(peer, force) end

---@return MultiplayerPeer.ConnectionStatus
function MultiplayerPeer.get_connection_status() end

---@return integer
function MultiplayerPeer.get_unique_id() end

---@return integer
function MultiplayerPeer.generate_unique_id() end

---@param enable boolean
function MultiplayerPeer.set_refuse_new_connections(enable) end

---@return boolean
function MultiplayerPeer.is_refusing_new_connections() end

---@return boolean
function MultiplayerPeer.is_server_relay_supported() end
