---@meta _
-- Generated API for game version 0.12.1

---@class AssetToolsMCPPaths : RefCounted
local AssetToolsMCPPaths = {}

---@return boolean
function AssetToolsMCPPaths.ensure_user_dir() end

---@return boolean
function AssetToolsMCPPaths.ensure_cache_dir() end

---@return boolean
function AssetToolsMCPPaths.ensure_runtime_cache_dir() end

---@return boolean
function AssetToolsMCPPaths.ensure_screenshot_cache_dir() end

---@param path string
---@return string
function AssetToolsMCPPaths.absolute_for(path) end

---@param target_path string
---@return string
function AssetToolsMCPPaths.describe_open_error(target_path) end
