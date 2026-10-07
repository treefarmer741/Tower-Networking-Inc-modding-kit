---@meta _
-- Generated API for game version 0.10.0

---@class InputEventMouseButton : InputEventMouse
---@field factor number
---@field button_index integer
---@field canceled boolean
---@field pressed boolean
---@field double_click boolean
local InputEventMouseButton = {}

---@param factor number
function InputEventMouseButton.set_factor(factor) end

---@return number
function InputEventMouseButton.get_factor() end

---@param button_index MouseButton
function InputEventMouseButton.set_button_index(button_index) end

---@return MouseButton
function InputEventMouseButton.get_button_index() end

---@param pressed boolean
function InputEventMouseButton.set_pressed(pressed) end

---@param canceled boolean
function InputEventMouseButton.set_canceled(canceled) end

---@param double_click boolean
function InputEventMouseButton.set_double_click(double_click) end

---@return boolean
function InputEventMouseButton.is_double_click() end
