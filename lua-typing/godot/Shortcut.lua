---@meta _
-- Generated API for game version 0.10.0

---@class Shortcut : Resource
---@field events Array<24/17:InputEvent>
local Shortcut = {}

---@param events Array<any>
function Shortcut.set_events(events) end

---@return Array<any>
function Shortcut.get_events() end

---@return boolean
function Shortcut.has_valid_event() end

---@param event InputEvent
---@return boolean
function Shortcut.matches_event(event) end

---@return string
function Shortcut.get_as_text() end
