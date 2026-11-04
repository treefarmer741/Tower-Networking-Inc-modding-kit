---@meta _
-- Generated API for game version 0.10.0

---@class SceneMultiplayer : MultiplayerAPI
---@field root_path string
---@field auth_callback (Callable|function)
---@field auth_timeout number
---@field allow_object_decoding boolean
---@field refuse_new_connections boolean
---@field server_relay boolean
---@field max_sync_packet_size integer
---@field max_delta_packet_size integer
local SceneMultiplayer = {}

---@param path string
function SceneMultiplayer.set_root_path(path) end

---@return string
function SceneMultiplayer.get_root_path() end

function SceneMultiplayer.clear() end

---@param id integer
function SceneMultiplayer.disconnect_peer(id) end

---@return PackedInt32Array
function SceneMultiplayer.get_authenticating_peers() end

---@param id integer
---@param data PackedByteArray
---@return Error
function SceneMultiplayer.send_auth(id, data) end

---@param id integer
---@return Error
function SceneMultiplayer.complete_auth(id) end

---@param callback (Callable|function)
function SceneMultiplayer.set_auth_callback(callback) end

---@return (Callable|function)
function SceneMultiplayer.get_auth_callback() end

---@param timeout number
function SceneMultiplayer.set_auth_timeout(timeout) end

---@return number
function SceneMultiplayer.get_auth_timeout() end

---@param refuse boolean
function SceneMultiplayer.set_refuse_new_connections(refuse) end

---@return boolean
function SceneMultiplayer.is_refusing_new_connections() end

---@param enable boolean
function SceneMultiplayer.set_allow_object_decoding(enable) end

---@return boolean
function SceneMultiplayer.is_object_decoding_allowed() end

---@param enabled boolean
function SceneMultiplayer.set_server_relay_enabled(enabled) end

---@return boolean
function SceneMultiplayer.is_server_relay_enabled() end

---@param bytes PackedByteArray
---@param id integer?  # Default = 0
---@param mode MultiplayerPeer.TransferMode?  # Default = 2
---@param channel integer?  # Default = 0
---@return Error
function SceneMultiplayer.send_bytes(bytes, id, mode, channel) end

---@return integer
function SceneMultiplayer.get_max_sync_packet_size() end

---@param size integer
function SceneMultiplayer.set_max_sync_packet_size(size) end

---@return integer
function SceneMultiplayer.get_max_delta_packet_size() end

---@param size integer
function SceneMultiplayer.set_max_delta_packet_size(size) end
