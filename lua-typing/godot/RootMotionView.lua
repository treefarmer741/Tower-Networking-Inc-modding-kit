---@meta _
-- Generated API for game version 0.10.0

---@class RootMotionView : VisualInstance3D
---@field animation_path string
---@field color Color
---@field cell_size number
---@field radius number
---@field zero_y boolean
local RootMotionView = {}

---@param path string
function RootMotionView.set_animation_path(path) end

---@return string
function RootMotionView.get_animation_path() end

---@param color Color
function RootMotionView.set_color(color) end

---@return Color
function RootMotionView.get_color() end

---@param size number
function RootMotionView.set_cell_size(size) end

---@return number
function RootMotionView.get_cell_size() end

---@param size number
function RootMotionView.set_radius(size) end

---@return number
function RootMotionView.get_radius() end

---@param enable boolean
function RootMotionView.set_zero_y(enable) end

---@return boolean
function RootMotionView.get_zero_y() end
