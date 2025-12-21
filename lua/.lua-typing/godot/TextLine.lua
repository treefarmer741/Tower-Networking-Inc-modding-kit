---@meta _
-- Generated API for game version 0.9.1

---@class TextLine : RefCounted
---@field direction integer
---@field orientation integer
---@field preserve_invalid boolean
---@field preserve_control boolean
---@field width number
---@field alignment integer
---@field flags integer
---@field text_overrun_behavior integer
---@field ellipsis_char string
local TextLine = {}

function TextLine.clear() end

---@param direction TextServer.Direction
function TextLine.set_direction(direction) end

---@return TextServer.Direction
function TextLine.get_direction() end

---@return TextServer.Direction
function TextLine.get_inferred_direction() end

---@param orientation TextServer.Orientation
function TextLine.set_orientation(orientation) end

---@return TextServer.Orientation
function TextLine.get_orientation() end

---@param enabled boolean
function TextLine.set_preserve_invalid(enabled) end

---@return boolean
function TextLine.get_preserve_invalid() end

---@param enabled boolean
function TextLine.set_preserve_control(enabled) end

---@return boolean
function TextLine.get_preserve_control() end

---@param override Array<any>
function TextLine.set_bidi_override(override) end

---@param text string
---@param font Font
---@param font_size integer
---@param language string?  # Default = 
---@param meta Object?  # Default = <null>
---@return boolean
function TextLine.add_string(text, font, font_size, language, meta) end

---@param key Object
---@param size Vector2
---@param inline_align InlineAlignment?  # Default = 5
---@param length integer?  # Default = 1
---@param baseline number?  # Default = 0.0
---@return boolean
function TextLine.add_object(key, size, inline_align, length, baseline) end

---@param key Object
---@param size Vector2
---@param inline_align InlineAlignment?  # Default = 5
---@param baseline number?  # Default = 0.0
---@return boolean
function TextLine.resize_object(key, size, inline_align, baseline) end

---@param width number
function TextLine.set_width(width) end

---@return number
function TextLine.get_width() end

---@param alignment HorizontalAlignment
function TextLine.set_horizontal_alignment(alignment) end

---@return HorizontalAlignment
function TextLine.get_horizontal_alignment() end

---@param tab_stops PackedFloat32Array
function TextLine.tab_align(tab_stops) end

---@param flags TextServer.JustificationFlag
function TextLine.set_flags(flags) end

---@return TextServer.JustificationFlag
function TextLine.get_flags() end

---@param overrun_behavior TextServer.OverrunBehavior
function TextLine.set_text_overrun_behavior(overrun_behavior) end

---@return TextServer.OverrunBehavior
function TextLine.get_text_overrun_behavior() end

---@param char string
function TextLine.set_ellipsis_char(char) end

---@return string
function TextLine.get_ellipsis_char() end

---@return Array<any>
function TextLine.get_objects() end

---@param key Object
---@return Rect2
function TextLine.get_object_rect(key) end

---@return Vector2
function TextLine.get_size() end

---@return RID
function TextLine.get_rid() end

---@return number
function TextLine.get_line_ascent() end

---@return number
function TextLine.get_line_descent() end

---@return number
function TextLine.get_line_width() end

---@return number
function TextLine.get_line_underline_position() end

---@return number
function TextLine.get_line_underline_thickness() end

---@param canvas RID
---@param pos Vector2
---@param color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param oversampling number?  # Default = 0.0
function TextLine.draw(canvas, pos, color, oversampling) end

---@param canvas RID
---@param pos Vector2
---@param outline_size integer?  # Default = 1
---@param color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param oversampling number?  # Default = 0.0
function TextLine.draw_outline(canvas, pos, outline_size, color, oversampling) end

---@param coords number
---@return integer
function TextLine.hit_test(coords) end
