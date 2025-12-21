---@meta _
-- Generated API for game version 0.9.1

---@class InputEventJoypadMotion : InputEvent
---@field axis integer
---@field axis_value number
local InputEventJoypadMotion = {}

---@param axis JoyAxis
function InputEventJoypadMotion.set_axis(axis) end

---@return JoyAxis
function InputEventJoypadMotion.get_axis() end

---@param axis_value number
function InputEventJoypadMotion.set_axis_value(axis_value) end

---@return number
function InputEventJoypadMotion.get_axis_value() end
