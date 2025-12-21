---@meta _
-- Generated API for game version 0.9.1

---@class ScriptBacktrace : RefCounted
local ScriptBacktrace = {}

---@return string
function ScriptBacktrace.get_language_name() end

---@return boolean
function ScriptBacktrace.is_empty() end

---@return integer
function ScriptBacktrace.get_frame_count() end

---@param index integer
---@return string
function ScriptBacktrace.get_frame_function(index) end

---@param index integer
---@return string
function ScriptBacktrace.get_frame_file(index) end

---@param index integer
---@return integer
function ScriptBacktrace.get_frame_line(index) end

---@return integer
function ScriptBacktrace.get_global_variable_count() end

---@param variable_index integer
---@return string
function ScriptBacktrace.get_global_variable_name(variable_index) end

---@param variable_index integer
---@return Object
function ScriptBacktrace.get_global_variable_value(variable_index) end

---@param frame_index integer
---@return integer
function ScriptBacktrace.get_local_variable_count(frame_index) end

---@param frame_index integer
---@param variable_index integer
---@return string
function ScriptBacktrace.get_local_variable_name(frame_index, variable_index) end

---@param frame_index integer
---@param variable_index integer
---@return Object
function ScriptBacktrace.get_local_variable_value(frame_index, variable_index) end

---@param frame_index integer
---@return integer
function ScriptBacktrace.get_member_variable_count(frame_index) end

---@param frame_index integer
---@param variable_index integer
---@return string
function ScriptBacktrace.get_member_variable_name(frame_index, variable_index) end

---@param frame_index integer
---@param variable_index integer
---@return Object
function ScriptBacktrace.get_member_variable_value(frame_index, variable_index) end

---@param indent_all integer?  # Default = 0
---@param indent_frames integer?  # Default = 4
---@return string
function ScriptBacktrace.format(indent_all, indent_frames) end
