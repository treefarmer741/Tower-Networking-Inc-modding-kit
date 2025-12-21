---@meta _
-- Generated API for game version 0.9.1

---@class InstancePlaceholder : Node
local InstancePlaceholder = {}

---@param with_order boolean?  # Default = false
---@return table<any,any>
function InstancePlaceholder.get_stored_values(with_order) end

---@param replace boolean?  # Default = false
---@param custom_scene PackedScene?  # Default = <null>
---@return Node
function InstancePlaceholder.create_instance(replace, custom_scene) end

---@return string
function InstancePlaceholder.get_instance_path() end
