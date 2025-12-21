---@meta _
-- Generated API for game version 0.9.1

---@class Label3D : GeometryInstance3D
---@field pixel_size number
---@field offset Vector2
---@field billboard integer
---@field shaded boolean
---@field double_sided boolean
---@field no_depth_test boolean
---@field fixed_size boolean
---@field alpha_cut integer
---@field alpha_scissor_threshold number
---@field alpha_hash_scale number
---@field alpha_antialiasing_mode integer
---@field alpha_antialiasing_edge number
---@field texture_filter integer
---@field render_priority integer
---@field outline_render_priority integer
---@field modulate Color
---@field outline_modulate Color
---@field text string
---@field font Font
---@field font_size integer
---@field outline_size integer
---@field horizontal_alignment integer
---@field vertical_alignment integer
---@field uppercase boolean
---@field line_spacing number
---@field autowrap_mode integer
---@field autowrap_trim_flags integer
---@field justification_flags integer
---@field width number
---@field text_direction integer
---@field language string
---@field structured_text_bidi_override integer
---@field structured_text_bidi_override_options Array<any>
local Label3D = {}

---@param alignment HorizontalAlignment
function Label3D.set_horizontal_alignment(alignment) end

---@return HorizontalAlignment
function Label3D.get_horizontal_alignment() end

---@param alignment VerticalAlignment
function Label3D.set_vertical_alignment(alignment) end

---@return VerticalAlignment
function Label3D.get_vertical_alignment() end

---@param modulate Color
function Label3D.set_modulate(modulate) end

---@return Color
function Label3D.get_modulate() end

---@param modulate Color
function Label3D.set_outline_modulate(modulate) end

---@return Color
function Label3D.get_outline_modulate() end

---@param text string
function Label3D.set_text(text) end

---@return string
function Label3D.get_text() end

---@param direction TextServer.Direction
function Label3D.set_text_direction(direction) end

---@return TextServer.Direction
function Label3D.get_text_direction() end

---@param language string
function Label3D.set_language(language) end

---@return string
function Label3D.get_language() end

---@param parser TextServer.StructuredTextParser
function Label3D.set_structured_text_bidi_override(parser) end

---@return TextServer.StructuredTextParser
function Label3D.get_structured_text_bidi_override() end

---@param args Array<any>
function Label3D.set_structured_text_bidi_override_options(args) end

---@return Array<any>
function Label3D.get_structured_text_bidi_override_options() end

---@param enable boolean
function Label3D.set_uppercase(enable) end

---@return boolean
function Label3D.is_uppercase() end

---@param priority integer
function Label3D.set_render_priority(priority) end

---@return integer
function Label3D.get_render_priority() end

---@param priority integer
function Label3D.set_outline_render_priority(priority) end

---@return integer
function Label3D.get_outline_render_priority() end

---@param font Font
function Label3D.set_font(font) end

---@return Font
function Label3D.get_font() end

---@param size integer
function Label3D.set_font_size(size) end

---@return integer
function Label3D.get_font_size() end

---@param outline_size integer
function Label3D.set_outline_size(outline_size) end

---@return integer
function Label3D.get_outline_size() end

---@param line_spacing number
function Label3D.set_line_spacing(line_spacing) end

---@return number
function Label3D.get_line_spacing() end

---@param autowrap_mode TextServer.AutowrapMode
function Label3D.set_autowrap_mode(autowrap_mode) end

---@return TextServer.AutowrapMode
function Label3D.get_autowrap_mode() end

---@param autowrap_trim_flags TextServer.LineBreakFlag
function Label3D.set_autowrap_trim_flags(autowrap_trim_flags) end

---@return TextServer.LineBreakFlag
function Label3D.get_autowrap_trim_flags() end

---@param justification_flags TextServer.JustificationFlag
function Label3D.set_justification_flags(justification_flags) end

---@return TextServer.JustificationFlag
function Label3D.get_justification_flags() end

---@param width number
function Label3D.set_width(width) end

---@return number
function Label3D.get_width() end

---@param pixel_size number
function Label3D.set_pixel_size(pixel_size) end

---@return number
function Label3D.get_pixel_size() end

---@param offset Vector2
function Label3D.set_offset(offset) end

---@return Vector2
function Label3D.get_offset() end

---@param flag Label3D.DrawFlags
---@param enabled boolean
function Label3D.set_draw_flag(flag, enabled) end

---@param flag Label3D.DrawFlags
---@return boolean
function Label3D.get_draw_flag(flag) end

---@param mode BaseMaterial3D.BillboardMode
function Label3D.set_billboard_mode(mode) end

---@return BaseMaterial3D.BillboardMode
function Label3D.get_billboard_mode() end

---@param mode Label3D.AlphaCutMode
function Label3D.set_alpha_cut_mode(mode) end

---@return Label3D.AlphaCutMode
function Label3D.get_alpha_cut_mode() end

---@param threshold number
function Label3D.set_alpha_scissor_threshold(threshold) end

---@return number
function Label3D.get_alpha_scissor_threshold() end

---@param threshold number
function Label3D.set_alpha_hash_scale(threshold) end

---@return number
function Label3D.get_alpha_hash_scale() end

---@param alpha_aa BaseMaterial3D.AlphaAntiAliasing
function Label3D.set_alpha_antialiasing(alpha_aa) end

---@return BaseMaterial3D.AlphaAntiAliasing
function Label3D.get_alpha_antialiasing() end

---@param edge number
function Label3D.set_alpha_antialiasing_edge(edge) end

---@return number
function Label3D.get_alpha_antialiasing_edge() end

---@param mode BaseMaterial3D.TextureFilter
function Label3D.set_texture_filter(mode) end

---@return BaseMaterial3D.TextureFilter
function Label3D.get_texture_filter() end

---@return TriangleMesh
function Label3D.generate_triangle_mesh() end
