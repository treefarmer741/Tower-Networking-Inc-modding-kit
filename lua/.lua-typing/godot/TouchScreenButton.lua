---@meta _
-- Generated API for game version 0.9.1

---@class TouchScreenButton : Node2D
---@field texture_normal Texture2D
---@field texture_pressed Texture2D
---@field bitmask BitMap
---@field shape Shape2D
---@field shape_centered boolean
---@field shape_visible boolean
---@field passby_press boolean
---@field action string
---@field visibility_mode integer
local TouchScreenButton = {}

---@param texture Texture2D
function TouchScreenButton.set_texture_normal(texture) end

---@return Texture2D
function TouchScreenButton.get_texture_normal() end

---@param texture Texture2D
function TouchScreenButton.set_texture_pressed(texture) end

---@return Texture2D
function TouchScreenButton.get_texture_pressed() end

---@param bitmask BitMap
function TouchScreenButton.set_bitmask(bitmask) end

---@return BitMap
function TouchScreenButton.get_bitmask() end

---@param shape Shape2D
function TouchScreenButton.set_shape(shape) end

---@return Shape2D
function TouchScreenButton.get_shape() end

---@param bool boolean
function TouchScreenButton.set_shape_centered(bool) end

---@return boolean
function TouchScreenButton.is_shape_centered() end

---@param bool boolean
function TouchScreenButton.set_shape_visible(bool) end

---@return boolean
function TouchScreenButton.is_shape_visible() end

---@param action string
function TouchScreenButton.set_action(action) end

---@return string
function TouchScreenButton.get_action() end

---@param mode TouchScreenButton.VisibilityMode
function TouchScreenButton.set_visibility_mode(mode) end

---@return TouchScreenButton.VisibilityMode
function TouchScreenButton.get_visibility_mode() end

---@param enabled boolean
function TouchScreenButton.set_passby_press(enabled) end

---@return boolean
function TouchScreenButton.is_passby_press_enabled() end

---@return boolean
function TouchScreenButton.is_pressed() end
