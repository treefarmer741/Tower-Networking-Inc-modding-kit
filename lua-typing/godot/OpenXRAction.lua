---@meta _
-- Generated API for game version 0.10.0

---@class OpenXRAction : Resource
---@field localized_name string
---@field action_type integer
---@field toplevel_paths PackedStringArray
local OpenXRAction = {}

---@param localized_name string
function OpenXRAction.set_localized_name(localized_name) end

---@return string
function OpenXRAction.get_localized_name() end

---@param action_type OpenXRAction.ActionType
function OpenXRAction.set_action_type(action_type) end

---@return OpenXRAction.ActionType
function OpenXRAction.get_action_type() end

---@param toplevel_paths PackedStringArray
function OpenXRAction.set_toplevel_paths(toplevel_paths) end

---@return PackedStringArray
function OpenXRAction.get_toplevel_paths() end
