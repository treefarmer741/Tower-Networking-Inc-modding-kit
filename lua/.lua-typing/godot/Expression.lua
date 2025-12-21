---@meta _
-- Generated API for game version 0.9.1

---@class Expression : RefCounted
local Expression = {}

---@param expression string
---@param input_names PackedStringArray?  # Default = []
---@return Error
function Expression.parse(expression, input_names) end

---@param inputs Array<any>?  # Default = []
---@param base_instance Object?  # Default = <null>
---@param show_error boolean?  # Default = true
---@param const_calls_only boolean?  # Default = false
---@return Object
function Expression.execute(inputs, base_instance, show_error, const_calls_only) end

---@return boolean
function Expression.has_execute_failed() end

---@return string
function Expression.get_error_text() end
