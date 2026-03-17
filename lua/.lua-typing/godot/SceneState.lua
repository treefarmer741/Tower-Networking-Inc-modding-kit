---@meta _
-- Generated API for game version 0.10.0

---@class SceneState : RefCounted
local SceneState = {}

---@return string
function SceneState.get_path() end

---@return SceneState
function SceneState.get_base_scene_state() end

---@return integer
function SceneState.get_node_count() end

---@param idx integer
---@return string
function SceneState.get_node_type(idx) end

---@param idx integer
---@return string
function SceneState.get_node_name(idx) end

---@param idx integer
---@param for_parent boolean?  # Default = false
---@return string
function SceneState.get_node_path(idx, for_parent) end

---@param idx integer
---@return string
function SceneState.get_node_owner_path(idx) end

---@param idx integer
---@return boolean
function SceneState.is_node_instance_placeholder(idx) end

---@param idx integer
---@return string
function SceneState.get_node_instance_placeholder(idx) end

---@param idx integer
---@return PackedScene
function SceneState.get_node_instance(idx) end

---@param idx integer
---@return PackedStringArray
function SceneState.get_node_groups(idx) end

---@param idx integer
---@return integer
function SceneState.get_node_index(idx) end

---@param idx integer
---@return integer
function SceneState.get_node_property_count(idx) end

---@param idx integer
---@param prop_idx integer
---@return string
function SceneState.get_node_property_name(idx, prop_idx) end

---@param idx integer
---@param prop_idx integer
---@return Object
function SceneState.get_node_property_value(idx, prop_idx) end

---@return integer
function SceneState.get_connection_count() end

---@param idx integer
---@return string
function SceneState.get_connection_source(idx) end

---@param idx integer
---@return string
function SceneState.get_connection_signal(idx) end

---@param idx integer
---@return string
function SceneState.get_connection_target(idx) end

---@param idx integer
---@return string
function SceneState.get_connection_method(idx) end

---@param idx integer
---@return integer
function SceneState.get_connection_flags(idx) end

---@param idx integer
---@return Array<any>
function SceneState.get_connection_binds(idx) end

---@param idx integer
---@return integer
function SceneState.get_connection_unbinds(idx) end
