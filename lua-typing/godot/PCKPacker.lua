---@meta _
-- Generated API for game version 0.10.0

---@class PCKPacker : RefCounted
local PCKPacker = {}

---@param pck_path string
---@param alignment integer?  # Default = 32
---@param key string?  # Default = 0000000000000000000000000000000000000000000000000000000000000000
---@param encrypt_directory boolean?  # Default = false
---@return Error
function PCKPacker.pck_start(pck_path, alignment, key, encrypt_directory) end

---@param target_path string
---@param source_path string
---@param encrypt boolean?  # Default = false
---@return Error
function PCKPacker.add_file(target_path, source_path, encrypt) end

---@param target_path string
---@return Error
function PCKPacker.add_file_removal(target_path) end

---@param verbose boolean?  # Default = false
---@return Error
function PCKPacker.flush(verbose) end
