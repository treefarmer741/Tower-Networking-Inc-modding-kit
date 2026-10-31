---@meta _
-- Generated API for game version 0.10.0

---@class ZIPPacker : RefCounted
---@field compression_level integer
local ZIPPacker = {}

---@param path string
---@param append ZIPPacker.ZipAppend?  # Default = 0
---@return Error
function ZIPPacker.open(path, append) end

---@param compression_level integer
function ZIPPacker.set_compression_level(compression_level) end

---@return integer
function ZIPPacker.get_compression_level() end

---@param path string
---@return Error
function ZIPPacker.start_file(path) end

---@param data PackedByteArray
---@return Error
function ZIPPacker.write_file(data) end

---@return Error
function ZIPPacker.close_file() end

---@return Error
function ZIPPacker.close() end
