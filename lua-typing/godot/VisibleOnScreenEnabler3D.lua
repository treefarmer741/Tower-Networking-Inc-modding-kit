---@meta _
-- Generated API for game version 0.10.0

---@class VisibleOnScreenEnabler3D : VisibleOnScreenNotifier3D
---@field enable_mode integer
---@field enable_node_path string
local VisibleOnScreenEnabler3D = {}

---@param mode VisibleOnScreenEnabler3D.EnableMode
function VisibleOnScreenEnabler3D.set_enable_mode(mode) end

---@return VisibleOnScreenEnabler3D.EnableMode
function VisibleOnScreenEnabler3D.get_enable_mode() end

---@param path string
function VisibleOnScreenEnabler3D.set_enable_node_path(path) end

---@return string
function VisibleOnScreenEnabler3D.get_enable_node_path() end
