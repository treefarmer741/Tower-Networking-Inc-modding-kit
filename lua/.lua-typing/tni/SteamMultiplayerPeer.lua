---@meta _
-- Generated API for game version 0.9.1

---@class SteamMultiplayerPeer : MultiplayerPeerExtension
---@field PING_CHANNEL integer # Constant value: 31
---@field PING_INTERVAL_MS integer # Constant value: 1000
---@field MAX_MESSAGES_PER_POLL integer # Constant value: 255
---@field auth_ticket table<any,any>
---@field steam_id integer
---@field compression_enabled boolean
---@field is_auth_success boolean
---@field lobby_owner_steam_id integer
---@field lobby_id integer
---@field async_lobby_create table<any,any>
---@field async_lobby_create_type integer
---@field async_lobby_join_id integer
---@field sync_target_peerid integer
---@field sync_transfer_mode MultiplayerPeer.TransferMode
---@field sync_transfer_channel integer
---@field async_transfer_channel integer
---@field async_compression_mode FileAccess.CompressionMode
---@field send_buffer Array<any>
---@field receive_buffer Array<any>
---@field newpeerid_buffer PackedInt32Array
---@field last_ping_ts_ms integer
---@field is_public_lobby boolean
local SteamMultiplayerPeer = {}

function SteamMultiplayerPeer.try_authenticate_with_steam() end

---@param enable boolean?  # Default = true
---@return Error
function SteamMultiplayerPeer.set_public_lobby(enable) end

---@param lobby_data table<any,any>
---@param max_peers integer?  # Default = 20
---@param lobby_type integer?  # Default = 1
---@return Error
function SteamMultiplayerPeer.try_setup_lobby(lobby_data, max_peers, lobby_type) end

---@param steam_lobby_id integer
---@return Error
function SteamMultiplayerPeer.try_join_lobby(steam_lobby_id) end

---@return Array<any>
function SteamMultiplayerPeer.get_lobby_members_steam_ids() end

function SteamMultiplayerPeer.send_lobby_pings() end

---@param remote_steam_id integer
function SteamMultiplayerPeer.send_p2p_ping(remote_steam_id) end

---@param remote_steam_id integer
---@param packet_data PackedByteArray
---@param send_flags integer?  # Default = 8
---@param channel integer?  # Default = 0
function SteamMultiplayerPeer.send_p2p_packet(remote_steam_id, packet_data, send_flags, channel) end

---@param remote_steam_id integer
---@param payload PackedByteArray
function SteamMultiplayerPeer.queue_message_for_send(remote_steam_id, payload) end

function SteamMultiplayerPeer.leave_lobby() end
