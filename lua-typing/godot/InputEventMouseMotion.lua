---@meta _
-- Generated API for game version 0.10.0

---@class InputEventMouseMotion : InputEventMouse
---@field tilt Vector2
---@field pressure number
---@field pen_inverted boolean
---@field relative Vector2
---@field screen_relative Vector2
---@field velocity Vector2
---@field screen_velocity Vector2
local InputEventMouseMotion = {}

---@param tilt Vector2
function InputEventMouseMotion.set_tilt(tilt) end

---@return Vector2
function InputEventMouseMotion.get_tilt() end

---@param pressure number
function InputEventMouseMotion.set_pressure(pressure) end

---@return number
function InputEventMouseMotion.get_pressure() end

---@param pen_inverted boolean
function InputEventMouseMotion.set_pen_inverted(pen_inverted) end

---@return boolean
function InputEventMouseMotion.get_pen_inverted() end

---@param relative Vector2
function InputEventMouseMotion.set_relative(relative) end

---@return Vector2
function InputEventMouseMotion.get_relative() end

---@param relative Vector2
function InputEventMouseMotion.set_screen_relative(relative) end

---@return Vector2
function InputEventMouseMotion.get_screen_relative() end

---@param velocity Vector2
function InputEventMouseMotion.set_velocity(velocity) end

---@return Vector2
function InputEventMouseMotion.get_velocity() end

---@param velocity Vector2
function InputEventMouseMotion.set_screen_velocity(velocity) end

---@return Vector2
function InputEventMouseMotion.get_screen_velocity() end
