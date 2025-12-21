---@meta _
-- Generated API for game version 0.9.1

---@class TextUtils : Object
---@field LOWERCASE_ALPHABETS string # Constant value: abcdefghijklmnopqrstuvwxyz
---@field UPPERCASE_ALPHABETS string # Constant value: ABCDEFGHIJKLMNOPQRSTUVWXYZ
---@field DIGITS string # Constant value: 0123456789
local TextUtils = {}

---@param inp string
---@param n integer?  # Default = 100
---@return string
function TextUtils.get_last_n_lines(inp, n) end

---@param count integer
---@param symbol_array string?  # Default = ABCDEFGHIJKLMNOPQRSTUVWXYZ
---@return Object
function TextUtils.get_random_letters(count, symbol_array) end

---@param inp string
---@param whitelist string?  # Default = abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_
---@return string
function TextUtils.get_whitelistchar_prefix(inp, whitelist) end

---@param inp string
---@return Object
function TextUtils.get_int_suffix(inp) end

---@param pattstr string
---@param rng RandomNumberGenerator?  # Default = <null>
---@return string
function TextUtils.fill_pattstr_with_rand(pattstr, rng) end
