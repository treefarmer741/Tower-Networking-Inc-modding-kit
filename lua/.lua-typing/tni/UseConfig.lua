---@meta _
-- Generated API for game version 0.9.1

---@class UseConfig : Resource
---@field use_descriptions Array<any>
---@field and_compatibility boolean
---@field consume_config_blocks Array<any>
---@field use_value string
---@field constraint_descript string
local UseConfig = {}

---@param use_s string
---@param and_compatible boolean?  # Default = true
---@return UseConfig
function UseConfig.create_from_string(use_s, and_compatible) end

---@return boolean
function UseConfig.has_valid_descriptions() end

---@param devus table<any,any>
---@return integer
function UseConfig.get_compatible_count(devus) end

---@param devus table<any,any>
---@param count integer?  # Default = 1
---@return boolean
function UseConfig.try_erase_compatible_uses(devus, count) end

---@return string
function UseConfig.render_use() end

---@param ccb_newline boolean?  # Default = false
---@return string
function UseConfig.render_constraint_descript(ccb_newline) end

---@param use_s string
---@return boolean
function UseConfig.is_compatible(use_s) end
