---@meta _
-- Generated API for game version 0.10.0

---@class InputEventAction : InputEvent
---@field action string
---@field pressed boolean
---@field strength number
---@field event_index integer
local InputEventAction = {}

---@param action string
function InputEventAction.set_action(action) end

---@return string
function InputEventAction.get_action() end

---@param pressed boolean
function InputEventAction.set_pressed(pressed) end

---@param strength number
function InputEventAction.set_strength(strength) end

---@return number
function InputEventAction.get_strength() end

---@param index integer
function InputEventAction.set_event_index(index) end

---@return integer
function InputEventAction.get_event_index() end
