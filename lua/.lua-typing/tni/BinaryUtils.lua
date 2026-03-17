---@meta _
-- Generated API for game version 0.10.0

---@class BinaryUtils : Object
local BinaryUtils = {}

---@param layers Array<integer>
---@return integer
function BinaryUtils.get_binval(layers) end

---@param value integer
---@param layer integer
---@return integer
function BinaryUtils.set_bit(value, layer) end

---@param value integer
---@param layer integer
---@return integer
function BinaryUtils.unset_bit(value, layer) end

---@param value integer
---@param layer integer
---@return integer
function BinaryUtils.toggle_bit(value, layer) end

---@param value integer
---@param layer integer
---@return boolean
function BinaryUtils.get_bit(value, layer) end
