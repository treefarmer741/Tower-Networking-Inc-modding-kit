---@meta _
-- Generated API for game version 0.10.0

---@class ProgressBar : Range
---@field fill_mode integer
---@field show_percentage boolean
---@field indeterminate boolean
---@field editor_preview_indeterminate boolean
local ProgressBar = {}

---@param mode integer
function ProgressBar.set_fill_mode(mode) end

---@return integer
function ProgressBar.get_fill_mode() end

---@param visible boolean
function ProgressBar.set_show_percentage(visible) end

---@return boolean
function ProgressBar.is_percentage_shown() end

---@param indeterminate boolean
function ProgressBar.set_indeterminate(indeterminate) end

---@return boolean
function ProgressBar.is_indeterminate() end

---@param preview_indeterminate boolean
function ProgressBar.set_editor_preview_indeterminate(preview_indeterminate) end

---@return boolean
function ProgressBar.is_editor_preview_indeterminate_enabled() end
