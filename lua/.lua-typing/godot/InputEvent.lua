---@meta _
-- Generated API for game version 0.9.1

---@class InputEvent : Resource
---@field device integer
local InputEvent = {}

---@param device integer
function InputEvent.set_device(device) end

---@return integer
function InputEvent.get_device() end

---@param action string
---@param exact_match boolean?  # Default = false
---@return boolean
function InputEvent.is_action(action, exact_match) end

---@param action string
---@param allow_echo boolean?  # Default = false
---@param exact_match boolean?  # Default = false
---@return boolean
function InputEvent.is_action_pressed(action, allow_echo, exact_match) end

---@param action string
---@param exact_match boolean?  # Default = false
---@return boolean
function InputEvent.is_action_released(action, exact_match) end

---@param action string
---@param exact_match boolean?  # Default = false
---@return number
function InputEvent.get_action_strength(action, exact_match) end

---@return boolean
function InputEvent.is_canceled() end

---@return boolean
function InputEvent.is_pressed() end

---@return boolean
function InputEvent.is_released() end

---@return boolean
function InputEvent.is_echo() end

---@return string
function InputEvent.as_text() end

---@param event InputEvent
---@param exact_match boolean?  # Default = true
---@return boolean
function InputEvent.is_match(event, exact_match) end

---@return boolean
function InputEvent.is_action_type() end

---@param with_event InputEvent
---@return boolean
function InputEvent.accumulate(with_event) end

---@param xform Transform2D
---@param local_ofs Vector2?  # Default = (0.0, 0.0)
---@return InputEvent
function InputEvent.xformed_by(xform, local_ofs) end
