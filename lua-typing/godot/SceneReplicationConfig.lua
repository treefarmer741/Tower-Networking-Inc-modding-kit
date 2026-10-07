---@meta _
-- Generated API for game version 0.10.0

---@class SceneReplicationConfig : Resource
local SceneReplicationConfig = {}

---@return Array<NodePath>
function SceneReplicationConfig.get_properties() end

---@param path string
---@param index integer?  # Default = -1
function SceneReplicationConfig.add_property(path, index) end

---@param path string
---@return boolean
function SceneReplicationConfig.has_property(path) end

---@param path string
function SceneReplicationConfig.remove_property(path) end

---@param path string
---@return integer
function SceneReplicationConfig.property_get_index(path) end

---@param path string
---@return boolean
function SceneReplicationConfig.property_get_spawn(path) end

---@param path string
---@param enabled boolean
function SceneReplicationConfig.property_set_spawn(path, enabled) end

---@param path string
---@return SceneReplicationConfig.ReplicationMode
function SceneReplicationConfig.property_get_replication_mode(path) end

---@param path string
---@param mode SceneReplicationConfig.ReplicationMode
function SceneReplicationConfig.property_set_replication_mode(path, mode) end

---@param path string
---@return boolean
function SceneReplicationConfig.property_get_sync(path) end

---@param path string
---@param enabled boolean
function SceneReplicationConfig.property_set_sync(path, enabled) end

---@param path string
---@return boolean
function SceneReplicationConfig.property_get_watch(path) end

---@param path string
---@param enabled boolean
function SceneReplicationConfig.property_set_watch(path, enabled) end
