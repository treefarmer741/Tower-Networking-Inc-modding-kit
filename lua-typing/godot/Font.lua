---@meta _
-- Generated API for game version 0.10.0

---@class Font : Resource
---@field fallbacks Array<24/17:Font>
local Font = {}

---@param fallbacks Array<Font>
function Font.set_fallbacks(fallbacks) end

---@return Array<Font>
function Font.get_fallbacks() end

---@param variation_coordinates table<any,any>
---@param face_index integer?  # Default = 0
---@param strength number?  # Default = 0.0
---@param transform Transform2D?  # Default = [X: (1.0, 0.0), Y: (0.0, 1.0), O: (0.0, 0.0)]
---@param spacing_top integer?  # Default = 0
---@param spacing_bottom integer?  # Default = 0
---@param spacing_space integer?  # Default = 0
---@param spacing_glyph integer?  # Default = 0
---@param baseline_offset number?  # Default = 0.0
---@return RID
function Font.find_variation(variation_coordinates, face_index, strength, transform, spacing_top, spacing_bottom, spacing_space, spacing_glyph, baseline_offset) end

---@return Array<RID>
function Font.get_rids() end

---@param font_size integer?  # Default = 16
---@return number
function Font.get_height(font_size) end

---@param font_size integer?  # Default = 16
---@return number
function Font.get_ascent(font_size) end

---@param font_size integer?  # Default = 16
---@return number
function Font.get_descent(font_size) end

---@param font_size integer?  # Default = 16
---@return number
function Font.get_underline_position(font_size) end

---@param font_size integer?  # Default = 16
---@return number
function Font.get_underline_thickness(font_size) end

---@return string
function Font.get_font_name() end

---@return string
function Font.get_font_style_name() end

---@return table<any,any>
function Font.get_ot_name_strings() end

---@return TextServer.FontStyle
function Font.get_font_style() end

---@return integer
function Font.get_font_weight() end

---@return integer
function Font.get_font_stretch() end

---@param spacing TextServer.SpacingType
---@return integer
function Font.get_spacing(spacing) end

---@return table<any,any>
function Font.get_opentype_features() end

---@param single_line integer
---@param multi_line integer
function Font.set_cache_capacity(single_line, multi_line) end

---@param text string
---@param alignment HorizontalAlignment?  # Default = 0
---@param width number?  # Default = -1
---@param font_size integer?  # Default = 16
---@param justification_flags TextServer.JustificationFlag?  # Default = 3
---@param direction TextServer.Direction?  # Default = 0
---@param orientation TextServer.Orientation?  # Default = 0
---@return Vector2
function Font.get_string_size(text, alignment, width, font_size, justification_flags, direction, orientation) end

---@param text string
---@param alignment HorizontalAlignment?  # Default = 0
---@param width number?  # Default = -1
---@param font_size integer?  # Default = 16
---@param max_lines integer?  # Default = -1
---@param brk_flags TextServer.LineBreakFlag?  # Default = 3
---@param justification_flags TextServer.JustificationFlag?  # Default = 3
---@param direction TextServer.Direction?  # Default = 0
---@param orientation TextServer.Orientation?  # Default = 0
---@return Vector2
function Font.get_multiline_string_size(text, alignment, width, font_size, max_lines, brk_flags, justification_flags, direction, orientation) end

---@param canvas_item RID
---@param pos Vector2
---@param text string
---@param alignment HorizontalAlignment?  # Default = 0
---@param width number?  # Default = -1
---@param font_size integer?  # Default = 16
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param justification_flags TextServer.JustificationFlag?  # Default = 3
---@param direction TextServer.Direction?  # Default = 0
---@param orientation TextServer.Orientation?  # Default = 0
---@param oversampling number?  # Default = 0.0
function Font.draw_string(canvas_item, pos, text, alignment, width, font_size, modulate, justification_flags, direction, orientation, oversampling) end

---@param canvas_item RID
---@param pos Vector2
---@param text string
---@param alignment HorizontalAlignment?  # Default = 0
---@param width number?  # Default = -1
---@param font_size integer?  # Default = 16
---@param max_lines integer?  # Default = -1
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param brk_flags TextServer.LineBreakFlag?  # Default = 3
---@param justification_flags TextServer.JustificationFlag?  # Default = 3
---@param direction TextServer.Direction?  # Default = 0
---@param orientation TextServer.Orientation?  # Default = 0
---@param oversampling number?  # Default = 0.0
function Font.draw_multiline_string(canvas_item, pos, text, alignment, width, font_size, max_lines, modulate, brk_flags, justification_flags, direction, orientation, oversampling) end

---@param canvas_item RID
---@param pos Vector2
---@param text string
---@param alignment HorizontalAlignment?  # Default = 0
---@param width number?  # Default = -1
---@param font_size integer?  # Default = 16
---@param size integer?  # Default = 1
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param justification_flags TextServer.JustificationFlag?  # Default = 3
---@param direction TextServer.Direction?  # Default = 0
---@param orientation TextServer.Orientation?  # Default = 0
---@param oversampling number?  # Default = 0.0
function Font.draw_string_outline(canvas_item, pos, text, alignment, width, font_size, size, modulate, justification_flags, direction, orientation, oversampling) end

---@param canvas_item RID
---@param pos Vector2
---@param text string
---@param alignment HorizontalAlignment?  # Default = 0
---@param width number?  # Default = -1
---@param font_size integer?  # Default = 16
---@param max_lines integer?  # Default = -1
---@param size integer?  # Default = 1
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param brk_flags TextServer.LineBreakFlag?  # Default = 3
---@param justification_flags TextServer.JustificationFlag?  # Default = 3
---@param direction TextServer.Direction?  # Default = 0
---@param orientation TextServer.Orientation?  # Default = 0
---@param oversampling number?  # Default = 0.0
function Font.draw_multiline_string_outline(canvas_item, pos, text, alignment, width, font_size, max_lines, size, modulate, brk_flags, justification_flags, direction, orientation, oversampling) end

---@param char integer
---@param font_size integer
---@return Vector2
function Font.get_char_size(char, font_size) end

---@param canvas_item RID
---@param pos Vector2
---@param char integer
---@param font_size integer
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param oversampling number?  # Default = 0.0
---@return number
function Font.draw_char(canvas_item, pos, char, font_size, modulate, oversampling) end

---@param canvas_item RID
---@param pos Vector2
---@param char integer
---@param font_size integer
---@param size integer?  # Default = -1
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param oversampling number?  # Default = 0.0
---@return number
function Font.draw_char_outline(canvas_item, pos, char, font_size, size, modulate, oversampling) end

---@param char integer
---@return boolean
function Font.has_char(char) end

---@return string
function Font.get_supported_chars() end

---@param language string
---@return boolean
function Font.is_language_supported(language) end

---@param script string
---@return boolean
function Font.is_script_supported(script) end

---@return table<any,any>
function Font.get_supported_feature_list() end

---@return table<any,any>
function Font.get_supported_variation_list() end

---@return integer
function Font.get_face_count() end
