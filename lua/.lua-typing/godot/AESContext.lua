---@meta _
-- Generated API for game version 0.9.1

---@class AESContext : RefCounted
local AESContext = {}

---@param mode AESContext.Mode
---@param key PackedByteArray
---@param iv PackedByteArray?  # Default = []
---@return Error
function AESContext.start(mode, key, iv) end

---@param src PackedByteArray
---@return PackedByteArray
function AESContext.update(src) end

---@return PackedByteArray
function AESContext.get_iv_state() end

function AESContext.finish() end
