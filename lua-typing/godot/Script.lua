---@meta _
-- Generated API for game version 0.10.0

---@class Script : Resource
---@field source_code string
local Script = {}

---@return boolean
function Script.can_instantiate() end

---@param base_object Object
---@return boolean
function Script.instance_has(base_object) end

---@return boolean
function Script.has_source_code() end

---@return string
function Script.get_source_code() end

---@param source string
function Script.set_source_code(source) end

---@param keep_state boolean?  # Default = false
---@return Error
function Script.reload(keep_state) end

---@return Script
function Script.get_base_script() end

---@return string
function Script.get_instance_base_type() end

---@return string
function Script.get_global_name() end

---@param signal_name string
---@return boolean
function Script.has_script_signal(signal_name) end

---@return Array<Dictionary>
function Script.get_script_property_list() end

---@return Array<Dictionary>
function Script.get_script_method_list() end

---@return Array<Dictionary>
function Script.get_script_signal_list() end

---@return table<any,any>
function Script.get_script_constant_map() end

---@param property string
---@return Object
function Script.get_property_default_value(property) end

---@return boolean
function Script.is_tool() end

---@return boolean
function Script.is_abstract() end

---@return Object
function Script.get_rpc_config() end
