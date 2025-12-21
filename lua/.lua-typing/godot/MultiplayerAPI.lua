---@meta _
-- Generated API for game version 0.9.1

---@class MultiplayerAPI : RefCounted
---@field multiplayer_peer MultiplayerPeer
local MultiplayerAPI = {}

---@return boolean
function MultiplayerAPI.has_multiplayer_peer() end

---@return MultiplayerPeer
function MultiplayerAPI.get_multiplayer_peer() end

---@param peer MultiplayerPeer
function MultiplayerAPI.set_multiplayer_peer(peer) end

---@return integer
function MultiplayerAPI.get_unique_id() end

---@return boolean
function MultiplayerAPI.is_server() end

---@return integer
function MultiplayerAPI.get_remote_sender_id() end

---@return Error
function MultiplayerAPI.poll() end

---@param peer integer
---@param object Object
---@param method string
---@param arguments Array<any>?  # Default = []
---@return Error
function MultiplayerAPI.rpc(peer, object, method, arguments) end

---@param object Object
---@param configuration Object
---@return Error
function MultiplayerAPI.object_configuration_add(object, configuration) end

---@param object Object
---@param configuration Object
---@return Error
function MultiplayerAPI.object_configuration_remove(object, configuration) end

---@return PackedInt32Array
function MultiplayerAPI.get_peers() end

---@param interface_name string
function MultiplayerAPI.set_default_interface(interface_name) end

---@return string
function MultiplayerAPI.get_default_interface() end

---@return MultiplayerAPI
function MultiplayerAPI.create_default_interface() end
