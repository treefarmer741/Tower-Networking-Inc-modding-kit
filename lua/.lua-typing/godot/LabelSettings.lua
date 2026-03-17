---@meta _
-- Generated API for game version 0.10.0

---@class LabelSettings : Resource
---@field line_spacing number
---@field paragraph_spacing number
---@field font Font
---@field font_size integer
---@field font_color Color
---@field outline_size integer
---@field outline_color Color
---@field shadow_size integer
---@field shadow_color Color
---@field shadow_offset Vector2
---@field stacked_outline_count Stacked Outlines,stacked_outline_
---@field stacked_shadow_count Stacked Shadows,stacked_shadow_
local LabelSettings = {}

---@param spacing number
function LabelSettings.set_line_spacing(spacing) end

---@return number
function LabelSettings.get_line_spacing() end

---@param spacing number
function LabelSettings.set_paragraph_spacing(spacing) end

---@return number
function LabelSettings.get_paragraph_spacing() end

---@param font Font
function LabelSettings.set_font(font) end

---@return Font
function LabelSettings.get_font() end

---@param size integer
function LabelSettings.set_font_size(size) end

---@return integer
function LabelSettings.get_font_size() end

---@param color Color
function LabelSettings.set_font_color(color) end

---@return Color
function LabelSettings.get_font_color() end

---@param size integer
function LabelSettings.set_outline_size(size) end

---@return integer
function LabelSettings.get_outline_size() end

---@param color Color
function LabelSettings.set_outline_color(color) end

---@return Color
function LabelSettings.get_outline_color() end

---@param size integer
function LabelSettings.set_shadow_size(size) end

---@return integer
function LabelSettings.get_shadow_size() end

---@param color Color
function LabelSettings.set_shadow_color(color) end

---@return Color
function LabelSettings.get_shadow_color() end

---@param offset Vector2
function LabelSettings.set_shadow_offset(offset) end

---@return Vector2
function LabelSettings.get_shadow_offset() end

---@return integer
function LabelSettings.get_stacked_outline_count() end

---@param count integer
function LabelSettings.set_stacked_outline_count(count) end

---@param index integer?  # Default = -1
function LabelSettings.add_stacked_outline(index) end

---@param from_index integer
---@param to_position integer
function LabelSettings.move_stacked_outline(from_index, to_position) end

---@param index integer
function LabelSettings.remove_stacked_outline(index) end

---@param index integer
---@param size integer
function LabelSettings.set_stacked_outline_size(index, size) end

---@param index integer
---@return integer
function LabelSettings.get_stacked_outline_size(index) end

---@param index integer
---@param color Color
function LabelSettings.set_stacked_outline_color(index, color) end

---@param index integer
---@return Color
function LabelSettings.get_stacked_outline_color(index) end

---@return integer
function LabelSettings.get_stacked_shadow_count() end

---@param count integer
function LabelSettings.set_stacked_shadow_count(count) end

---@param index integer?  # Default = -1
function LabelSettings.add_stacked_shadow(index) end

---@param from_index integer
---@param to_position integer
function LabelSettings.move_stacked_shadow(from_index, to_position) end

---@param index integer
function LabelSettings.remove_stacked_shadow(index) end

---@param index integer
---@param offset Vector2
function LabelSettings.set_stacked_shadow_offset(index, offset) end

---@param index integer
---@return Vector2
function LabelSettings.get_stacked_shadow_offset(index) end

---@param index integer
---@param color Color
function LabelSettings.set_stacked_shadow_color(index, color) end

---@param index integer
---@return Color
function LabelSettings.get_stacked_shadow_color(index) end

---@param index integer
---@param size integer
function LabelSettings.set_stacked_shadow_outline_size(index, size) end

---@param index integer
---@return integer
function LabelSettings.get_stacked_shadow_outline_size(index) end
