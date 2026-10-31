---@meta _
-- Generated API for game version 0.10.0

---@class VisualShaderNodeFrame : VisualShaderNodeResizableBase
---@field title string
---@field tint_color_enabled boolean
---@field tint_color Color
---@field autoshrink boolean
---@field attached_nodes PackedInt32Array
local VisualShaderNodeFrame = {}

---@param title string
function VisualShaderNodeFrame.set_title(title) end

---@return string
function VisualShaderNodeFrame.get_title() end

---@param enable boolean
function VisualShaderNodeFrame.set_tint_color_enabled(enable) end

---@return boolean
function VisualShaderNodeFrame.is_tint_color_enabled() end

---@param color Color
function VisualShaderNodeFrame.set_tint_color(color) end

---@return Color
function VisualShaderNodeFrame.get_tint_color() end

---@param enable boolean
function VisualShaderNodeFrame.set_autoshrink_enabled(enable) end

---@return boolean
function VisualShaderNodeFrame.is_autoshrink_enabled() end

---@param node integer
function VisualShaderNodeFrame.add_attached_node(node) end

---@param node integer
function VisualShaderNodeFrame.remove_attached_node(node) end

---@param attached_nodes PackedInt32Array
function VisualShaderNodeFrame.set_attached_nodes(attached_nodes) end

---@return PackedInt32Array
function VisualShaderNodeFrame.get_attached_nodes() end
