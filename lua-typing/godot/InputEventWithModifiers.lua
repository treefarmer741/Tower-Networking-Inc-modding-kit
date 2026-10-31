---@meta _
-- Generated API for game version 0.10.0

---@class InputEventWithModifiers : InputEventFromWindow
---@field command_or_control_autoremap boolean
---@field alt_pressed boolean
---@field shift_pressed boolean
---@field ctrl_pressed boolean
---@field meta_pressed boolean
local InputEventWithModifiers = {}

---@param enable boolean
function InputEventWithModifiers.set_command_or_control_autoremap(enable) end

---@return boolean
function InputEventWithModifiers.is_command_or_control_autoremap() end

---@return boolean
function InputEventWithModifiers.is_command_or_control_pressed() end

---@param pressed boolean
function InputEventWithModifiers.set_alt_pressed(pressed) end

---@return boolean
function InputEventWithModifiers.is_alt_pressed() end

---@param pressed boolean
function InputEventWithModifiers.set_shift_pressed(pressed) end

---@return boolean
function InputEventWithModifiers.is_shift_pressed() end

---@param pressed boolean
function InputEventWithModifiers.set_ctrl_pressed(pressed) end

---@return boolean
function InputEventWithModifiers.is_ctrl_pressed() end

---@param pressed boolean
function InputEventWithModifiers.set_meta_pressed(pressed) end

---@return boolean
function InputEventWithModifiers.is_meta_pressed() end

---@return KeyModifierMask
function InputEventWithModifiers.get_modifiers_mask() end
