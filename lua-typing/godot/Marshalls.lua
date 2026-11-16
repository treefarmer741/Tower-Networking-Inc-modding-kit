---@meta _
-- Generated API for game version 0.13.4

---@class Marshalls : Object
local Marshalls = {}

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
