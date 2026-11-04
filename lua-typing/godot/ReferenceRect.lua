---@meta _
-- Generated API for game version 0.10.0

---@class ReferenceRect : Control
---@field border_color Color
---@field border_width number
---@field editor_only boolean
local ReferenceRect = {}

---@return Color
function ReferenceRect.get_border_color() end

---@param color Color
function ReferenceRect.set_border_color(color) end

---@return number
function ReferenceRect.get_border_width() end

---@param width number
function ReferenceRect.set_border_width(width) end

---@return boolean
function ReferenceRect.get_editor_only() end

---@param enabled boolean
function ReferenceRect.set_editor_only(enabled) end
