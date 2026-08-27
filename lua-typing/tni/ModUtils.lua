---@meta _
-- Generated API for game version 0.12.1

---@class ModUtils : Object
---@field IMAGE_EXTS Array<any> # Constant value: [".png", ".jpg", ".jpeg", ".svg"]
local ModUtils = {}

---@param jsonc string
---@return Object
function ModUtils.parse_jsonc_string(jsonc) end

---@param what_hint string
---@param data table<any,any>
---@param field string
---@param default Object
---@param is_optional boolean?  # Default = false
---@param enum_map Object?  # Default = <null>
---@return Object
function ModUtils.get_or_default_error(what_hint, data, field, default, is_optional, enum_map) end

---@param path string
---@return Image
function ModUtils.load_image(path) end

---@param script Script
---@param base_script Script
---@return boolean
function ModUtils.script_inherits_script(script, base_script) end

---@param instance Object
---@param base_script Script
---@return boolean
function ModUtils.instance_inherits_script(instance, base_script) end
