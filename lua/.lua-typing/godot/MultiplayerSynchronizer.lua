---@meta _
-- Generated API for game version 0.9.1

---@class MultiplayerSynchronizer : Node
---@field root_path string
---@field replication_interval number
---@field delta_interval number
---@field replication_config SceneReplicationConfig
---@field visibility_update_mode integer
---@field public_visibility boolean
local MultiplayerSynchronizer = {}

---@param path string
function MultiplayerSynchronizer.set_root_path(path) end

---@return string
function MultiplayerSynchronizer.get_root_path() end

---@param milliseconds number
function MultiplayerSynchronizer.set_replication_interval(milliseconds) end

---@return number
function MultiplayerSynchronizer.get_replication_interval() end

---@param milliseconds number
function MultiplayerSynchronizer.set_delta_interval(milliseconds) end

---@return number
function MultiplayerSynchronizer.get_delta_interval() end

---@param config SceneReplicationConfig
function MultiplayerSynchronizer.set_replication_config(config) end

---@return SceneReplicationConfig
function MultiplayerSynchronizer.get_replication_config() end

---@param mode MultiplayerSynchronizer.VisibilityUpdateMode
function MultiplayerSynchronizer.set_visibility_update_mode(mode) end

---@return MultiplayerSynchronizer.VisibilityUpdateMode
function MultiplayerSynchronizer.get_visibility_update_mode() end

---@param for_peer integer?  # Default = 0
function MultiplayerSynchronizer.update_visibility(for_peer) end

---@param visible boolean
function MultiplayerSynchronizer.set_visibility_public(visible) end

---@return boolean
function MultiplayerSynchronizer.is_visibility_public() end

---@param filter (Callable|function)
function MultiplayerSynchronizer.add_visibility_filter(filter) end

---@param filter (Callable|function)
function MultiplayerSynchronizer.remove_visibility_filter(filter) end

---@param peer integer
---@param visible boolean
function MultiplayerSynchronizer.set_visibility_for(peer, visible) end

---@param peer integer
---@return boolean
function MultiplayerSynchronizer.get_visibility_for(peer) end
