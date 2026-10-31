---@meta _
-- Generated API for game version 0.10.0

---@class TextParagraph : RefCounted
---@field direction integer
---@field custom_punctuation string
---@field orientation integer
---@field preserve_invalid boolean
---@field preserve_control boolean
---@field alignment integer
---@field break_flags integer
---@field justification_flags integer
---@field text_overrun_behavior integer
---@field ellipsis_char string
---@field width number
---@field max_lines_visible integer
---@field line_spacing number
local TextParagraph = {}

function TextParagraph.clear() end

---@param direction TextServer.Direction
function TextParagraph.set_direction(direction) end

---@return TextServer.Direction
function TextParagraph.get_direction() end

---@return TextServer.Direction
function TextParagraph.get_inferred_direction() end

---@param custom_punctuation string
function TextParagraph.set_custom_punctuation(custom_punctuation) end

---@return string
function TextParagraph.get_custom_punctuation() end

---@param orientation TextServer.Orientation
function TextParagraph.set_orientation(orientation) end

---@return TextServer.Orientation
function TextParagraph.get_orientation() end

---@param enabled boolean
function TextParagraph.set_preserve_invalid(enabled) end

---@return boolean
function TextParagraph.get_preserve_invalid() end

---@param enabled boolean
function TextParagraph.set_preserve_control(enabled) end

---@return boolean
function TextParagraph.get_preserve_control() end

---@param override Array<any>
function TextParagraph.set_bidi_override(override) end

---@param text string
---@param font Font
---@param font_size integer
---@param dropcap_margins Rect2?  # Default = [P: (0.0, 0.0), S: (0.0, 0.0)]
---@param language string?  # Default = 
---@return boolean
function TextParagraph.set_dropcap(text, font, font_size, dropcap_margins, language) end

function TextParagraph.clear_dropcap() end

---@param text string
---@param font Font
---@param font_size integer
---@param language string?  # Default = 
---@param meta Object?  # Default = <null>
---@return boolean
function TextParagraph.add_string(text, font, font_size, language, meta) end

---@param key Object
---@param size Vector2
---@param inline_align InlineAlignment?  # Default = 5
---@param length integer?  # Default = 1
---@param baseline number?  # Default = 0.0
---@return boolean
function TextParagraph.add_object(key, size, inline_align, length, baseline) end

---@param key Object
---@param size Vector2
---@param inline_align InlineAlignment?  # Default = 5
---@param baseline number?  # Default = 0.0
---@return boolean
function TextParagraph.resize_object(key, size, inline_align, baseline) end

---@param alignment HorizontalAlignment
function TextParagraph.set_alignment(alignment) end

---@return HorizontalAlignment
function TextParagraph.get_alignment() end

---@param tab_stops PackedFloat32Array
function TextParagraph.tab_align(tab_stops) end

---@param flags TextServer.LineBreakFlag
function TextParagraph.set_break_flags(flags) end

---@return TextServer.LineBreakFlag
function TextParagraph.get_break_flags() end

---@param flags TextServer.JustificationFlag
function TextParagraph.set_justification_flags(flags) end

---@return TextServer.JustificationFlag
function TextParagraph.get_justification_flags() end

---@param overrun_behavior TextServer.OverrunBehavior
function TextParagraph.set_text_overrun_behavior(overrun_behavior) end

---@return TextServer.OverrunBehavior
function TextParagraph.get_text_overrun_behavior() end

---@param char string
function TextParagraph.set_ellipsis_char(char) end

---@return string
function TextParagraph.get_ellipsis_char() end

---@param width number
function TextParagraph.set_width(width) end

---@return number
function TextParagraph.get_width() end

---@return Vector2
function TextParagraph.get_non_wrapped_size() end

---@return Vector2
function TextParagraph.get_size() end

---@return RID
function TextParagraph.get_rid() end

---@param line integer
---@return RID
function TextParagraph.get_line_rid(line) end

---@return RID
function TextParagraph.get_dropcap_rid() end

---@return Vector2i
function TextParagraph.get_range() end

---@return integer
function TextParagraph.get_line_count() end

---@param max_lines_visible integer
function TextParagraph.set_max_lines_visible(max_lines_visible) end

---@return integer
function TextParagraph.get_max_lines_visible() end

---@param line_spacing number
function TextParagraph.set_line_spacing(line_spacing) end

---@return number
function TextParagraph.get_line_spacing() end

---@param line integer
---@return Array<any>
function TextParagraph.get_line_objects(line) end

---@param line integer
---@param key Object
---@return Rect2
function TextParagraph.get_line_object_rect(line, key) end

---@param line integer
---@return Vector2
function TextParagraph.get_line_size(line) end

---@param line integer
---@return Vector2i
function TextParagraph.get_line_range(line) end

---@param line integer
---@return number
function TextParagraph.get_line_ascent(line) end

---@param line integer
---@return number
function TextParagraph.get_line_descent(line) end

---@param line integer
---@return number
function TextParagraph.get_line_width(line) end

---@param line integer
---@return number
function TextParagraph.get_line_underline_position(line) end

---@param line integer
---@return number
function TextParagraph.get_line_underline_thickness(line) end

---@return Vector2
function TextParagraph.get_dropcap_size() end

---@return integer
function TextParagraph.get_dropcap_lines() end

---@param canvas RID
---@param pos Vector2
---@param color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param dc_color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param oversampling number?  # Default = 0.0
function TextParagraph.draw(canvas, pos, color, dc_color, oversampling) end

---@param canvas RID
---@param pos Vector2
---@param outline_size integer?  # Default = 1
---@param color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param dc_color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param oversampling number?  # Default = 0.0
function TextParagraph.draw_outline(canvas, pos, outline_size, color, dc_color, oversampling) end

---@param canvas RID
---@param pos Vector2
---@param line integer
---@param color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param oversampling number?  # Default = 0.0
function TextParagraph.draw_line(canvas, pos, line, color, oversampling) end

---@param canvas RID
---@param pos Vector2
---@param line integer
---@param outline_size integer?  # Default = 1
---@param color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param oversampling number?  # Default = 0.0
function TextParagraph.draw_line_outline(canvas, pos, line, outline_size, color, oversampling) end

---@param canvas RID
---@param pos Vector2
---@param color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param oversampling number?  # Default = 0.0
function TextParagraph.draw_dropcap(canvas, pos, color, oversampling) end

---@param canvas RID
---@param pos Vector2
---@param outline_size integer?  # Default = 1
---@param color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param oversampling number?  # Default = 0.0
function TextParagraph.draw_dropcap_outline(canvas, pos, outline_size, color, oversampling) end

---@param coords Vector2
---@return integer
function TextParagraph.hit_test(coords) end
