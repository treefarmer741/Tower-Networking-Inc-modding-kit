---@meta _
-- Generated API for game version 0.10.0

---@class RemoteTransform2D : Node2D
---@field remote_path string
---@field use_global_coordinates boolean
---@field update_position boolean
---@field update_rotation boolean
---@field update_scale boolean
local RemoteTransform2D = {}

---@param path string
function RemoteTransform2D.set_remote_node(path) end

---@return string
function RemoteTransform2D.get_remote_node() end

function RemoteTransform2D.force_update_cache() end

---@param use_global_coordinates boolean
function RemoteTransform2D.set_use_global_coordinates(use_global_coordinates) end

---@return boolean
function RemoteTransform2D.get_use_global_coordinates() end

---@param update_remote_position boolean
function RemoteTransform2D.set_update_position(update_remote_position) end

---@return boolean
function RemoteTransform2D.get_update_position() end

---@param update_remote_rotation boolean
function RemoteTransform2D.set_update_rotation(update_remote_rotation) end

---@return boolean
function RemoteTransform2D.get_update_rotation() end

---@param update_remote_scale boolean
function RemoteTransform2D.set_update_scale(update_remote_scale) end

---@return boolean
function RemoteTransform2D.get_update_scale() end
