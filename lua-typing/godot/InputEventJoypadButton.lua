---@meta _
-- Generated API for game version 0.10.0

---@class InputEventJoypadButton : InputEvent
---@field button_index integer
---@field pressure number
---@field pressed boolean
local InputEventJoypadButton = {}

---@param button_index JoyButton
function InputEventJoypadButton.set_button_index(button_index) end

---@return JoyButton
function InputEventJoypadButton.get_button_index() end

---@param pressure number
function InputEventJoypadButton.set_pressure(pressure) end

---@return number
function InputEventJoypadButton.get_pressure() end

---@param pressed boolean
function InputEventJoypadButton.set_pressed(pressed) end
