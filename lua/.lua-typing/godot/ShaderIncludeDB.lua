---@meta _
-- Generated API for game version 0.10.0

---@class ShaderIncludeDB : Object
local ShaderIncludeDB = {}

---@return PackedStringArray
function ShaderIncludeDB.list_built_in_include_files() end

---@param filename string
---@return boolean
function ShaderIncludeDB.has_built_in_include_file(filename) end

---@param filename string
---@return string
function ShaderIncludeDB.get_built_in_include_file(filename) end
