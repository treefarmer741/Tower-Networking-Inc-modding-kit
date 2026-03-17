---@meta _
-- Generated API for game version 0.10.0

---@class EditorBuildProfile : RefCounted
local EditorBuildProfile = {}

---@param class_name string
---@param disable boolean
function EditorBuildProfile.set_disable_class(class_name, disable) end

---@param class_name string
---@return boolean
function EditorBuildProfile.is_class_disabled(class_name) end

---@param build_option EditorBuildProfile.BuildOption
---@param disable boolean
function EditorBuildProfile.set_disable_build_option(build_option, disable) end

---@param build_option EditorBuildProfile.BuildOption
---@return boolean
function EditorBuildProfile.is_build_option_disabled(build_option) end

---@param build_option EditorBuildProfile.BuildOption
---@return string
function EditorBuildProfile.get_build_option_name(build_option) end

---@param path string
---@return Error
function EditorBuildProfile.save_to_file(path) end

---@param path string
---@return Error
function EditorBuildProfile.load_from_file(path) end
