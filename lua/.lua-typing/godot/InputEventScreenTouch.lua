---@meta _
-- Generated API for game version 0.9.1

---@class InputEventScreenTouch : InputEventFromWindow
---@field index integer
---@field position Vector2
---@field canceled boolean
---@field pressed boolean
---@field double_tap boolean
local InputEventScreenTouch = {}

---@param index integer
function InputEventScreenTouch.set_index(index) end

---@return integer
function InputEventScreenTouch.get_index() end

---@param position Vector2
function InputEventScreenTouch.set_position(position) end

---@return Vector2
function InputEventScreenTouch.get_position() end

---@param pressed boolean
function InputEventScreenTouch.set_pressed(pressed) end

---@param canceled boolean
function InputEventScreenTouch.set_canceled(canceled) end

---@param double_tap boolean
function InputEventScreenTouch.set_double_tap(double_tap) end

---@return boolean
function InputEventScreenTouch.is_double_tap() end
