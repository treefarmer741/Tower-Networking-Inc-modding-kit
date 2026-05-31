---@meta _
-- Generated API for game version 0.10.11

---@class MathUtils : Object
local MathUtils = {}

---@param hue_min number
---@param hue_max number
---@param cint integer
---@param mix_sat boolean?  # Default = true
---@param mix_val boolean?  # Default = true
---@return Color
function MathUtils.color_from_int(hue_min, hue_max, cint, mix_sat, mix_val) end

---@return number
function MathUtils.get_detfloat_from_snum() end

---@param d table<any,any>
---@param leq number?  # Default = 0.0
function MathUtils.remove_elements_leq_than(d, leq) end

---@param minu integer
---@param with_colon boolean?  # Default = true
---@return Object
function MathUtils.get_hhmm_from_minutes_of_day(minu, with_colon) end

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

---@param shuffle_bag Array<any>
---@param n integer
---@param rng_seed Object?  # Default = <null>
---@return Array<any>
function MathUtils.uniform_random_multi_selection_with_seed(shuffle_bag, n, rng_seed) end
