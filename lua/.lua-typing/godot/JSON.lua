---@meta _
-- Generated API for game version 0.9.1

---@class JSON : Resource
---@field data Object
local JSON = {}

---@param data Object
---@param indent string?  # Default = 
---@param sort_keys boolean?  # Default = true
---@param full_precision boolean?  # Default = false
---@return string
function JSON.stringify(data, indent, sort_keys, full_precision) end

---@param json_string string
---@return Object
function JSON.parse_string(json_string) end

---@param json_text string
---@param keep_text boolean?  # Default = false
---@return Error
function JSON.parse(json_text, keep_text) end

---@return Object
function JSON.get_data() end

---@param data Object
function JSON.set_data(data) end

---@return string
function JSON.get_parsed_text() end

---@return integer
function JSON.get_error_line() end

---@return string
function JSON.get_error_message() end

---@param variant Object
---@param full_objects boolean?  # Default = false
---@return Object
function JSON.from_native(variant, full_objects) end

---@param json Object
---@param allow_objects boolean?  # Default = false
---@return Object
function JSON.to_native(json, allow_objects) end
