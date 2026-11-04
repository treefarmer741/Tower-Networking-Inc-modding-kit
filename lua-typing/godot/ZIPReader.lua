---@meta _
-- Generated API for game version 0.10.0

---@class ZIPReader : RefCounted
local ZIPReader = {}

---@param path string
---@return Error
function ZIPReader.open(path) end

---@return Error
function ZIPReader.close() end

---@return PackedStringArray
function ZIPReader.get_files() end

---@param path string
---@param case_sensitive boolean?  # Default = true
---@return PackedByteArray
function ZIPReader.read_file(path, case_sensitive) end

---@param path string
---@param case_sensitive boolean?  # Default = true
---@return boolean
function ZIPReader.file_exists(path, case_sensitive) end

---@param path string
---@param case_sensitive boolean?  # Default = true
---@return integer
function ZIPReader.get_compression_level(path, case_sensitive) end
