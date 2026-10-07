---@meta _
-- Generated API for game version 0.10.0

---@class VisibleOnScreenEnabler2D : VisibleOnScreenNotifier2D
---@field enable_mode integer
---@field enable_node_path string
local VisibleOnScreenEnabler2D = {}

---@param mode VisibleOnScreenEnabler2D.EnableMode
function VisibleOnScreenEnabler2D.set_enable_mode(mode) end

---@return VisibleOnScreenEnabler2D.EnableMode
function VisibleOnScreenEnabler2D.get_enable_mode() end

---@param path string
function VisibleOnScreenEnabler2D.set_enable_node_path(path) end

---@return string
function VisibleOnScreenEnabler2D.get_enable_node_path() end
