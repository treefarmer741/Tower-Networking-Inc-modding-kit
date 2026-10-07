---@meta _
-- Generated API for game version 0.10.0

---@class InputMap : Object
local InputMap = {}

---@param action string
---@return boolean
function InputMap.has_action(action) end

---@return Array<StringName>
function InputMap.get_actions() end

---@param action string
---@param deadzone number?  # Default = 0.20000000298023
function InputMap.add_action(action, deadzone) end

---@param action string
function InputMap.erase_action(action) end

---@param action string
---@return string
function InputMap.get_action_description(action) end

---@param action string
---@param deadzone number
function InputMap.action_set_deadzone(action, deadzone) end

---@param action string
---@return number
function InputMap.action_get_deadzone(action) end

---@param action string
---@param event InputEvent
function InputMap.action_add_event(action, event) end

---@param action string
---@param event InputEvent
---@return boolean
function InputMap.action_has_event(action, event) end

---@param action string
---@param event InputEvent
function InputMap.action_erase_event(action, event) end

---@param action string
function InputMap.action_erase_events(action) end

---@param action string
---@return Array<InputEvent>
function InputMap.action_get_events(action) end

---@param event InputEvent
---@param action string
---@param exact_match boolean?  # Default = false
---@return boolean
function InputMap.event_is_action(event, action, exact_match) end

function InputMap.load_from_project_settings() end
