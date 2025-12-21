---@meta _
-- Generated API for game version 0.9.1

---@class VisibleOnScreenNotifier2D : Node2D
---@field rect Rect2
---@field show_rect boolean
local VisibleOnScreenNotifier2D = {}

---@param rect Rect2
function VisibleOnScreenNotifier2D.set_rect(rect) end

---@return Rect2
function VisibleOnScreenNotifier2D.get_rect() end

---@param show_rect boolean
function VisibleOnScreenNotifier2D.set_show_rect(show_rect) end

---@return boolean
function VisibleOnScreenNotifier2D.is_showing_rect() end

---@return boolean
function VisibleOnScreenNotifier2D.is_on_screen() end
