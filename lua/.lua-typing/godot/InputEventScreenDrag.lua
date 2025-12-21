---@meta _
-- Generated API for game version 0.9.1

---@class InputEventScreenDrag : InputEventFromWindow
---@field index integer
---@field tilt Vector2
---@field pressure number
---@field pen_inverted boolean
---@field position Vector2
---@field relative Vector2
---@field screen_relative Vector2
---@field velocity Vector2
---@field screen_velocity Vector2
local InputEventScreenDrag = {}

---@param index integer
function InputEventScreenDrag.set_index(index) end

---@return integer
function InputEventScreenDrag.get_index() end

---@param tilt Vector2
function InputEventScreenDrag.set_tilt(tilt) end

---@return Vector2
function InputEventScreenDrag.get_tilt() end

---@param pressure number
function InputEventScreenDrag.set_pressure(pressure) end

---@return number
function InputEventScreenDrag.get_pressure() end

---@param pen_inverted boolean
function InputEventScreenDrag.set_pen_inverted(pen_inverted) end

---@return boolean
function InputEventScreenDrag.get_pen_inverted() end

---@param position Vector2
function InputEventScreenDrag.set_position(position) end

---@return Vector2
function InputEventScreenDrag.get_position() end

---@param relative Vector2
function InputEventScreenDrag.set_relative(relative) end

---@return Vector2
function InputEventScreenDrag.get_relative() end

---@param relative Vector2
function InputEventScreenDrag.set_screen_relative(relative) end

---@return Vector2
function InputEventScreenDrag.get_screen_relative() end

---@param velocity Vector2
function InputEventScreenDrag.set_velocity(velocity) end

---@return Vector2
function InputEventScreenDrag.get_velocity() end

---@param velocity Vector2
function InputEventScreenDrag.set_screen_velocity(velocity) end

---@return Vector2
function InputEventScreenDrag.get_screen_velocity() end
