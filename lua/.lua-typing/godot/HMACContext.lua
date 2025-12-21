---@meta _
-- Generated API for game version 0.9.1

---@class HMACContext : RefCounted
local HMACContext = {}

---@param hash_type HashingContext.HashType
---@param key PackedByteArray
---@return Error
function HMACContext.start(hash_type, key) end

---@param data PackedByteArray
---@return Error
function HMACContext.update(data) end

---@return PackedByteArray
function HMACContext.finish() end
