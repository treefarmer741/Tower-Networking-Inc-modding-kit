---@meta _
-- Generated API for game version 0.10.0

---@class InputEventMouse : InputEventWithModifiers
---@field button_mask integer
---@field position Vector2
---@field global_position Vector2
local InputEventMouse = {}

---@param button_mask MouseButtonMask
function InputEventMouse.set_button_mask(button_mask) end

---@return MouseButtonMask
function InputEventMouse.get_button_mask() end

---@param position Vector2
function InputEventMouse.set_position(position) end

---@return Vector2
function InputEventMouse.get_position() end

---@param global_position Vector2
function InputEventMouse.set_global_position(global_position) end

---@return Vector2
function InputEventMouse.get_global_position() end
