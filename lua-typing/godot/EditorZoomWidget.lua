---@meta _
-- Generated API for game version 0.10.0

---@class EditorZoomWidget : HBoxContainer
---@field zoom number
local EditorZoomWidget = {}

---@param zoom number
function EditorZoomWidget.set_zoom(zoom) end

---@return number
function EditorZoomWidget.get_zoom() end

---@param increment integer
---@param integer_only boolean
function EditorZoomWidget.set_zoom_by_increments(increment, integer_only) end
