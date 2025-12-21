---@meta _
-- Generated API for game version 0.9.1

---@class Range : Control
---@field min_value number
---@field max_value number
---@field step number
---@field page number
---@field value number
---@field ratio number
---@field exp_edit boolean
---@field rounded boolean
---@field allow_greater boolean
---@field allow_lesser boolean
local Range = {}

---@return number
function Range.get_value() end

---@return number
function Range.get_min() end

---@return number
function Range.get_max() end

---@return number
function Range.get_step() end

---@return number
function Range.get_page() end

---@return number
function Range.get_as_ratio() end

---@param value number
function Range.set_value(value) end

---@param value number
function Range.set_value_no_signal(value) end

---@param minimum number
function Range.set_min(minimum) end

---@param maximum number
function Range.set_max(maximum) end

---@param step number
function Range.set_step(step) end

---@param pagesize number
function Range.set_page(pagesize) end

---@param value number
function Range.set_as_ratio(value) end

---@param enabled boolean
function Range.set_use_rounded_values(enabled) end

---@return boolean
function Range.is_using_rounded_values() end

---@param enabled boolean
function Range.set_exp_ratio(enabled) end

---@return boolean
function Range.is_ratio_exp() end

---@param allow boolean
function Range.set_allow_greater(allow) end

---@return boolean
function Range.is_greater_allowed() end

---@param allow boolean
function Range.set_allow_lesser(allow) end

---@return boolean
function Range.is_lesser_allowed() end

---@param with Node
function Range.share(with) end

function Range.unshare() end
