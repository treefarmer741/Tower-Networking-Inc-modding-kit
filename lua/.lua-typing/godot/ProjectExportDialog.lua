---@meta _
-- Generated API for game version 0.9.1

---@class ProjectExportDialog : ConfirmationDialog
---@field export_path string
local ProjectExportDialog = {}

---@param _unnamed_arg0 string
function ProjectExportDialog.set_export_path(_unnamed_arg0) end

---@return string
function ProjectExportDialog.get_export_path() end

---@return EditorExportPreset
function ProjectExportDialog.get_current_preset() end
