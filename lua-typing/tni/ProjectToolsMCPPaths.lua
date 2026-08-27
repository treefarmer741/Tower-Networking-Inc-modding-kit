---@meta _
-- Generated API for game version 0.12.1

---@class ProjectToolsMCPPaths : RefCounted
local ProjectToolsMCPPaths = {}

---@return boolean
function ProjectToolsMCPPaths.ensure_user_dir() end

---@return boolean
function ProjectToolsMCPPaths.ensure_cache_dir() end

---@return boolean
function ProjectToolsMCPPaths.ensure_runtime_cache_dir() end

---@return boolean
function ProjectToolsMCPPaths.ensure_screenshot_cache_dir() end

---@param path string
---@return string
function ProjectToolsMCPPaths.absolute_for(path) end

---@param target_path string
---@return string
function ProjectToolsMCPPaths.describe_open_error(target_path) end
