---@meta _
-- Generated API for game version 0.9.1

---@class GraphFrame : GraphElement
---@field title string
---@field autoshrink_enabled boolean
---@field autoshrink_margin integer
---@field drag_margin integer
---@field tint_color_enabled boolean
---@field tint_color Color
local GraphFrame = {}

---@param title string
function GraphFrame.set_title(title) end

---@return string
function GraphFrame.get_title() end

---@return HBoxContainer
function GraphFrame.get_titlebar_hbox() end

---@param shrink boolean
function GraphFrame.set_autoshrink_enabled(shrink) end

---@return boolean
function GraphFrame.is_autoshrink_enabled() end

---@param autoshrink_margin integer
function GraphFrame.set_autoshrink_margin(autoshrink_margin) end

---@return integer
function GraphFrame.get_autoshrink_margin() end

---@param drag_margin integer
function GraphFrame.set_drag_margin(drag_margin) end

---@return integer
function GraphFrame.get_drag_margin() end

---@param enable boolean
function GraphFrame.set_tint_color_enabled(enable) end

---@return boolean
function GraphFrame.is_tint_color_enabled() end

---@param color Color
function GraphFrame.set_tint_color(color) end

---@return Color
function GraphFrame.get_tint_color() end
