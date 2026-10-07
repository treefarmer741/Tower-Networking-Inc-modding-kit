---@meta _
-- Generated API for game version 0.10.0

---@class HashingContext : RefCounted
local HashingContext = {}

---@param type HashingContext.HashType
---@return Error
function HashingContext.start(type) end

---@param chunk PackedByteArray
---@return Error
function HashingContext.update(chunk) end

---@return PackedByteArray
function HashingContext.finish() end
