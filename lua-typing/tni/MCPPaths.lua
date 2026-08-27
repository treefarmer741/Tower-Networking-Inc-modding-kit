---@meta _
-- Generated API for game version 0.12.1

---@class MCPPaths : RefCounted
local MCPPaths = {}

---@return boolean
function MCPPaths.ensure_user_dir() end

---@return boolean
function MCPPaths.ensure_cache_dir() end

---@return boolean
function MCPPaths.ensure_runtime_cache_dir() end

---@return boolean
function MCPPaths.ensure_screenshot_cache_dir() end

---@param path string
---@return string
function MCPPaths.absolute_for(path) end

---@param target_path string
---@return string
function MCPPaths.describe_open_error(target_path) end
