---@meta _
-- Generated API for game version 0.9.1

---@class ModFileSystem : Node
---@field mod Mod
---@field last_open_error Error
local ModFileSystem = {}

---@param path string
---@return string
function ModFileSystem.mod_path_to_real(path) end

---@param mod_path string
---@param flags FileAccess.ModeFlags
---@return ModFileAccess?
function ModFileSystem.open(mod_path, flags) end

---@param mod_path string
---@return PackedStringArray?
function ModFileSystem.get_directories_at(mod_path) end

---@param mod_path string
---@return PackedStringArray?
function ModFileSystem.get_files_at(mod_path) end

---@return integer
function ModFileSystem.get_open_error() end
