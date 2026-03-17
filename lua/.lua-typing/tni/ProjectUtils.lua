---@meta _
-- Generated API for game version 0.10.0

---@class ProjectUtils : Object
local ProjectUtils = {}
---@enum ProjectUtils.POCOSIA_PROJECT_DEFAULTS
ProjectUtils.POCOSIA_PROJECT_DEFAULTS = {
}

---@param exported_cfg_path string?  # Default = override.cfg
---@param force_override boolean?  # Default = false
---@param skip_defaults Array<string>?  # Default = <null>
function ProjectUtils.export_pocosia_defaults(exported_cfg_path, force_override, skip_defaults) end
