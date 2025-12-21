---@meta _
-- Generated API for game version 0.9.1

---@class ColorPickerButton : Button
---@field color Color
---@field edit_alpha boolean
---@field edit_intensity boolean
local ColorPickerButton = {}

---@param color Color
function ColorPickerButton.set_pick_color(color) end

---@return Color
function ColorPickerButton.get_pick_color() end

---@return ColorPicker
function ColorPickerButton.get_picker() end

---@return PopupPanel
function ColorPickerButton.get_popup() end

---@param show boolean
function ColorPickerButton.set_edit_alpha(show) end

---@return boolean
function ColorPickerButton.is_editing_alpha() end

---@param show boolean
function ColorPickerButton.set_edit_intensity(show) end

---@return boolean
function ColorPickerButton.is_editing_intensity() end
