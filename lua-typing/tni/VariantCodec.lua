---@meta _
-- Generated API for game version 0.12.1

---@class VariantCodec : RefCounted
local VariantCodec = {}

---@param value Object
---@return Object
function VariantCodec.parse_value(value) end

---@param value Object
---@param type_hint integer
---@return Object
function VariantCodec.parse_typed_value(value, type_hint) end

---@param value Object
---@return Object
function VariantCodec.serialize_value(value) end
