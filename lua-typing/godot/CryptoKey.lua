---@meta _
-- Generated API for game version 0.10.0

---@class CryptoKey : Resource
local CryptoKey = {}

---@param path string
---@param public_only boolean?  # Default = false
---@return Error
function CryptoKey.save(path, public_only) end

---@param path string
---@param public_only boolean?  # Default = false
---@return Error
function CryptoKey.load(path, public_only) end

---@return boolean
function CryptoKey.is_public_only() end

---@param public_only boolean?  # Default = false
---@return string
function CryptoKey.save_to_string(public_only) end

---@param string_key string
---@param public_only boolean?  # Default = false
---@return Error
function CryptoKey.load_from_string(string_key, public_only) end
