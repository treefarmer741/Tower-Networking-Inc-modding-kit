---@meta _
-- Generated API for game version 0.9.1

---@class Performance : Object
local Performance = {}

---@param monitor Performance.Monitor
---@return number
function Performance.get_monitor(monitor) end

---@param id string
---@param callable (Callable|function)
---@param arguments Array<any>?  # Default = []
function Performance.add_custom_monitor(id, callable, arguments) end

---@param id string
function Performance.remove_custom_monitor(id) end

---@param id string
---@return boolean
function Performance.has_custom_monitor(id) end

---@param id string
---@return Object
function Performance.get_custom_monitor(id) end

---@return integer
function Performance.get_monitor_modification_time() end

---@return Array<StringName>
function Performance.get_custom_monitor_names() end
