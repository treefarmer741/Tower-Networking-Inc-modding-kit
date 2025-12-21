---@meta _
-- Generated API for game version 0.9.1

---@class OpenXRInteractionProfileMetadata : Object
local OpenXRInteractionProfileMetadata = {}

---@param old_name string
---@param new_name string
function OpenXRInteractionProfileMetadata.register_profile_rename(old_name, new_name) end

---@param display_name string
---@param openxr_path string
---@param openxr_extension_name string
function OpenXRInteractionProfileMetadata.register_top_level_path(display_name, openxr_path, openxr_extension_name) end

---@param display_name string
---@param openxr_path string
---@param openxr_extension_name string
function OpenXRInteractionProfileMetadata.register_interaction_profile(display_name, openxr_path, openxr_extension_name) end

---@param interaction_profile string
---@param display_name string
---@param toplevel_path string
---@param openxr_path string
---@param openxr_extension_name string
---@param action_type OpenXRAction.ActionType
function OpenXRInteractionProfileMetadata.register_io_path(interaction_profile, display_name, toplevel_path, openxr_path, openxr_extension_name, action_type) end
