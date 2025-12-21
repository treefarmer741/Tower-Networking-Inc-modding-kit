---@meta _
-- Generated API for game version 0.9.1

---@class Marshalls : Object
local Marshalls = {}

---@param variant Object
---@param full_objects boolean?  # Default = false
---@return string
function Marshalls.variant_to_base64(variant, full_objects) end

---@param base64_str string
---@param allow_objects boolean?  # Default = false
---@return Object
function Marshalls.base64_to_variant(base64_str, allow_objects) end

---@param array PackedByteArray
---@return string
function Marshalls.raw_to_base64(array) end

---@param base64_str string
---@return PackedByteArray
function Marshalls.base64_to_raw(base64_str) end

---@param utf8_str string
---@return string
function Marshalls.utf8_to_base64(utf8_str) end

---@param base64_str string
---@return string
function Marshalls.base64_to_utf8(base64_str) end
