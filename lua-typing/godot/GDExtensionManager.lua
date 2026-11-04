---@meta _
-- Generated API for game version 0.10.0

---@class GDExtensionManager : Object
local GDExtensionManager = {}

---@param path string
---@return GDExtensionManager.LoadStatus
function GDExtensionManager.load_extension(path) end

---@param path string
---@return GDExtensionManager.LoadStatus
function GDExtensionManager.reload_extension(path) end

---@param path string
---@return GDExtensionManager.LoadStatus
function GDExtensionManager.unload_extension(path) end

---@param path string
---@return boolean
function GDExtensionManager.is_extension_loaded(path) end

---@return PackedStringArray
function GDExtensionManager.get_loaded_extensions() end

---@param path string
---@return GDExtension
function GDExtensionManager.get_extension(path) end
