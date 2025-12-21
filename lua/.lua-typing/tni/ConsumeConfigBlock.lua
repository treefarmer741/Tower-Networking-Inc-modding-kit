---@meta _
-- Generated API for game version 0.9.1

---@class ConsumeConfigBlock : Resource
---@field anti_match boolean
---@field or_compatibility boolean
---@field use_descriptions Array<any>
local ConsumeConfigBlock = {}

---@param use_da Array<UseDescript>
---@param and_compat boolean
---@param _split Array<string>
---@return Object
function ConsumeConfigBlock.test_compatibility(use_da, and_compat, _split) end

---@param use_str_a Array<string>
---@return Object
function ConsumeConfigBlock.is_compatible(use_str_a) end
