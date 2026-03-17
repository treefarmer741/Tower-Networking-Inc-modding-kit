---@meta _
-- Generated API for game version 0.10.0

---@class MathUtils : Object
local MathUtils = {}

---@param minu integer
---@return Object
function MathUtils.get_hhmm_from_minutes_of_day(minu) end

---@param weights Array<integer>
---@param rng RandomNumberGenerator?  # Default = <null>
---@return integer
function MathUtils.random_selection_by_weight(weights, rng) end

---@param weights Array<integer>
---@param rng RandomNumberGenerator?  # Default = <null>
---@return Object
function MathUtils.random_selection_by_weight_with_shufflebag(weights, rng) end

---@param shuffle_bag Array<any>
---@param n integer
---@return Array<any>
function MathUtils.uniform_random_multi_selection(shuffle_bag, n) end

---@param inp integer
---@param symbols Object
---@param npad integer?  # Default = 4
---@return Object
function MathUtils.int_to_baseN(inp, symbols, npad) end

---@param inpa Array<any>
---@param rng RandomNumberGenerator
---@return Array<any>
function MathUtils.copy_shuffle_array_with_rng(inpa, rng) end

---@param discrete_levels Array<any>
---@param test_ratio number
---@return Object
function MathUtils.get_discrete_level_from_float(discrete_levels, test_ratio) end

---@param input number
---@param scale number?  # Default = 10.0
---@param efficiency number?  # Default = 0.5
---@return number
function MathUtils.get_diminishing_return_value(input, scale, efficiency) end

---@param n integer
---@return number
function MathUtils.get_color_hue_from_int(n) end

---@param n integer
---@return Color
function MathUtils.get_color_from_int(n) end
