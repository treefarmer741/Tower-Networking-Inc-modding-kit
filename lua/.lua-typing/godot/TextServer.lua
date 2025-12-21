---@meta _
-- Generated API for game version 0.9.1

---@class TextServer : RefCounted
local TextServer = {}

---@param feature TextServer.Feature
---@return boolean
function TextServer.has_feature(feature) end

---@return string
function TextServer.get_name() end

---@return integer
function TextServer.get_features() end

---@param filename string
---@return boolean
function TextServer.load_support_data(filename) end

---@return string
function TextServer.get_support_data_filename() end

---@return string
function TextServer.get_support_data_info() end

---@param filename string
---@return boolean
function TextServer.save_support_data(filename) end

---@return PackedByteArray
function TextServer.get_support_data() end

---@param locale string
---@return boolean
function TextServer.is_locale_right_to_left(locale) end

---@param name string
---@return integer
function TextServer.name_to_tag(name) end

---@param tag integer
---@return string
function TextServer.tag_to_name(tag) end

---@param rid RID
---@return boolean
function TextServer.has(rid) end

---@param rid RID
function TextServer.free_rid(rid) end

---@return RID
function TextServer.create_font() end

---@param font_rid RID
---@return RID
function TextServer.create_font_linked_variation(font_rid) end

---@param font_rid RID
---@param data PackedByteArray
function TextServer.font_set_data(font_rid, data) end

---@param font_rid RID
---@param face_index integer
function TextServer.font_set_face_index(font_rid, face_index) end

---@param font_rid RID
---@return integer
function TextServer.font_get_face_index(font_rid) end

---@param font_rid RID
---@return integer
function TextServer.font_get_face_count(font_rid) end

---@param font_rid RID
---@param style TextServer.FontStyle
function TextServer.font_set_style(font_rid, style) end

---@param font_rid RID
---@return TextServer.FontStyle
function TextServer.font_get_style(font_rid) end

---@param font_rid RID
---@param name string
function TextServer.font_set_name(font_rid, name) end

---@param font_rid RID
---@return string
function TextServer.font_get_name(font_rid) end

---@param font_rid RID
---@return table<any,any>
function TextServer.font_get_ot_name_strings(font_rid) end

---@param font_rid RID
---@param name string
function TextServer.font_set_style_name(font_rid, name) end

---@param font_rid RID
---@return string
function TextServer.font_get_style_name(font_rid) end

---@param font_rid RID
---@param weight integer
function TextServer.font_set_weight(font_rid, weight) end

---@param font_rid RID
---@return integer
function TextServer.font_get_weight(font_rid) end

---@param font_rid RID
---@param weight integer
function TextServer.font_set_stretch(font_rid, weight) end

---@param font_rid RID
---@return integer
function TextServer.font_get_stretch(font_rid) end

---@param font_rid RID
---@param antialiasing TextServer.FontAntialiasing
function TextServer.font_set_antialiasing(font_rid, antialiasing) end

---@param font_rid RID
---@return TextServer.FontAntialiasing
function TextServer.font_get_antialiasing(font_rid) end

---@param font_rid RID
---@param disable_embedded_bitmaps boolean
function TextServer.font_set_disable_embedded_bitmaps(font_rid, disable_embedded_bitmaps) end

---@param font_rid RID
---@return boolean
function TextServer.font_get_disable_embedded_bitmaps(font_rid) end

---@param font_rid RID
---@param generate_mipmaps boolean
function TextServer.font_set_generate_mipmaps(font_rid, generate_mipmaps) end

---@param font_rid RID
---@return boolean
function TextServer.font_get_generate_mipmaps(font_rid) end

---@param font_rid RID
---@param msdf boolean
function TextServer.font_set_multichannel_signed_distance_field(font_rid, msdf) end

---@param font_rid RID
---@return boolean
function TextServer.font_is_multichannel_signed_distance_field(font_rid) end

---@param font_rid RID
---@param msdf_pixel_range integer
function TextServer.font_set_msdf_pixel_range(font_rid, msdf_pixel_range) end

---@param font_rid RID
---@return integer
function TextServer.font_get_msdf_pixel_range(font_rid) end

---@param font_rid RID
---@param msdf_size integer
function TextServer.font_set_msdf_size(font_rid, msdf_size) end

---@param font_rid RID
---@return integer
function TextServer.font_get_msdf_size(font_rid) end

---@param font_rid RID
---@param fixed_size integer
function TextServer.font_set_fixed_size(font_rid, fixed_size) end

---@param font_rid RID
---@return integer
function TextServer.font_get_fixed_size(font_rid) end

---@param font_rid RID
---@param fixed_size_scale_mode TextServer.FixedSizeScaleMode
function TextServer.font_set_fixed_size_scale_mode(font_rid, fixed_size_scale_mode) end

---@param font_rid RID
---@return TextServer.FixedSizeScaleMode
function TextServer.font_get_fixed_size_scale_mode(font_rid) end

---@param font_rid RID
---@param allow_system_fallback boolean
function TextServer.font_set_allow_system_fallback(font_rid, allow_system_fallback) end

---@param font_rid RID
---@return boolean
function TextServer.font_is_allow_system_fallback(font_rid) end

function TextServer.font_clear_system_fallback_cache() end

---@param font_rid RID
---@param force_autohinter boolean
function TextServer.font_set_force_autohinter(font_rid, force_autohinter) end

---@param font_rid RID
---@return boolean
function TextServer.font_is_force_autohinter(font_rid) end

---@param font_rid RID
---@param force_autohinter boolean
function TextServer.font_set_modulate_color_glyphs(font_rid, force_autohinter) end

---@param font_rid RID
---@return boolean
function TextServer.font_is_modulate_color_glyphs(font_rid) end

---@param font_rid RID
---@param hinting TextServer.Hinting
function TextServer.font_set_hinting(font_rid, hinting) end

---@param font_rid RID
---@return TextServer.Hinting
function TextServer.font_get_hinting(font_rid) end

---@param font_rid RID
---@param subpixel_positioning TextServer.SubpixelPositioning
function TextServer.font_set_subpixel_positioning(font_rid, subpixel_positioning) end

---@param font_rid RID
---@return TextServer.SubpixelPositioning
function TextServer.font_get_subpixel_positioning(font_rid) end

---@param font_rid RID
---@param keep_rounding_remainders boolean
function TextServer.font_set_keep_rounding_remainders(font_rid, keep_rounding_remainders) end

---@param font_rid RID
---@return boolean
function TextServer.font_get_keep_rounding_remainders(font_rid) end

---@param font_rid RID
---@param strength number
function TextServer.font_set_embolden(font_rid, strength) end

---@param font_rid RID
---@return number
function TextServer.font_get_embolden(font_rid) end

---@param font_rid RID
---@param spacing TextServer.SpacingType
---@param value integer
function TextServer.font_set_spacing(font_rid, spacing, value) end

---@param font_rid RID
---@param spacing TextServer.SpacingType
---@return integer
function TextServer.font_get_spacing(font_rid, spacing) end

---@param font_rid RID
---@param baseline_offset number
function TextServer.font_set_baseline_offset(font_rid, baseline_offset) end

---@param font_rid RID
---@return number
function TextServer.font_get_baseline_offset(font_rid) end

---@param font_rid RID
---@param transform Transform2D
function TextServer.font_set_transform(font_rid, transform) end

---@param font_rid RID
---@return Transform2D
function TextServer.font_get_transform(font_rid) end

---@param font_rid RID
---@param variation_coordinates table<any,any>
function TextServer.font_set_variation_coordinates(font_rid, variation_coordinates) end

---@param font_rid RID
---@return table<any,any>
function TextServer.font_get_variation_coordinates(font_rid) end

---@param font_rid RID
---@param oversampling number
function TextServer.font_set_oversampling(font_rid, oversampling) end

---@param font_rid RID
---@return number
function TextServer.font_get_oversampling(font_rid) end

---@param font_rid RID
---@return Array<Vector2i>
function TextServer.font_get_size_cache_list(font_rid) end

---@param font_rid RID
function TextServer.font_clear_size_cache(font_rid) end

---@param font_rid RID
---@param size Vector2i
function TextServer.font_remove_size_cache(font_rid, size) end

---@param font_rid RID
---@return Array<Dictionary>
function TextServer.font_get_size_cache_info(font_rid) end

---@param font_rid RID
---@param size integer
---@param ascent number
function TextServer.font_set_ascent(font_rid, size, ascent) end

---@param font_rid RID
---@param size integer
---@return number
function TextServer.font_get_ascent(font_rid, size) end

---@param font_rid RID
---@param size integer
---@param descent number
function TextServer.font_set_descent(font_rid, size, descent) end

---@param font_rid RID
---@param size integer
---@return number
function TextServer.font_get_descent(font_rid, size) end

---@param font_rid RID
---@param size integer
---@param underline_position number
function TextServer.font_set_underline_position(font_rid, size, underline_position) end

---@param font_rid RID
---@param size integer
---@return number
function TextServer.font_get_underline_position(font_rid, size) end

---@param font_rid RID
---@param size integer
---@param underline_thickness number
function TextServer.font_set_underline_thickness(font_rid, size, underline_thickness) end

---@param font_rid RID
---@param size integer
---@return number
function TextServer.font_get_underline_thickness(font_rid, size) end

---@param font_rid RID
---@param size integer
---@param scale number
function TextServer.font_set_scale(font_rid, size, scale) end

---@param font_rid RID
---@param size integer
---@return number
function TextServer.font_get_scale(font_rid, size) end

---@param font_rid RID
---@param size Vector2i
---@return integer
function TextServer.font_get_texture_count(font_rid, size) end

---@param font_rid RID
---@param size Vector2i
function TextServer.font_clear_textures(font_rid, size) end

---@param font_rid RID
---@param size Vector2i
---@param texture_index integer
function TextServer.font_remove_texture(font_rid, size, texture_index) end

---@param font_rid RID
---@param size Vector2i
---@param texture_index integer
---@param image Image
function TextServer.font_set_texture_image(font_rid, size, texture_index, image) end

---@param font_rid RID
---@param size Vector2i
---@param texture_index integer
---@return Image
function TextServer.font_get_texture_image(font_rid, size, texture_index) end

---@param font_rid RID
---@param size Vector2i
---@param texture_index integer
---@param offset PackedInt32Array
function TextServer.font_set_texture_offsets(font_rid, size, texture_index, offset) end

---@param font_rid RID
---@param size Vector2i
---@param texture_index integer
---@return PackedInt32Array
function TextServer.font_get_texture_offsets(font_rid, size, texture_index) end

---@param font_rid RID
---@param size Vector2i
---@return PackedInt32Array
function TextServer.font_get_glyph_list(font_rid, size) end

---@param font_rid RID
---@param size Vector2i
function TextServer.font_clear_glyphs(font_rid, size) end

---@param font_rid RID
---@param size Vector2i
---@param glyph integer
function TextServer.font_remove_glyph(font_rid, size, glyph) end

---@param font_rid RID
---@param size integer
---@param glyph integer
---@return Vector2
function TextServer.font_get_glyph_advance(font_rid, size, glyph) end

---@param font_rid RID
---@param size integer
---@param glyph integer
---@param advance Vector2
function TextServer.font_set_glyph_advance(font_rid, size, glyph, advance) end

---@param font_rid RID
---@param size Vector2i
---@param glyph integer
---@return Vector2
function TextServer.font_get_glyph_offset(font_rid, size, glyph) end

---@param font_rid RID
---@param size Vector2i
---@param glyph integer
---@param offset Vector2
function TextServer.font_set_glyph_offset(font_rid, size, glyph, offset) end

---@param font_rid RID
---@param size Vector2i
---@param glyph integer
---@return Vector2
function TextServer.font_get_glyph_size(font_rid, size, glyph) end

---@param font_rid RID
---@param size Vector2i
---@param glyph integer
---@param gl_size Vector2
function TextServer.font_set_glyph_size(font_rid, size, glyph, gl_size) end

---@param font_rid RID
---@param size Vector2i
---@param glyph integer
---@return Rect2
function TextServer.font_get_glyph_uv_rect(font_rid, size, glyph) end

---@param font_rid RID
---@param size Vector2i
---@param glyph integer
---@param uv_rect Rect2
function TextServer.font_set_glyph_uv_rect(font_rid, size, glyph, uv_rect) end

---@param font_rid RID
---@param size Vector2i
---@param glyph integer
---@return integer
function TextServer.font_get_glyph_texture_idx(font_rid, size, glyph) end

---@param font_rid RID
---@param size Vector2i
---@param glyph integer
---@param texture_idx integer
function TextServer.font_set_glyph_texture_idx(font_rid, size, glyph, texture_idx) end

---@param font_rid RID
---@param size Vector2i
---@param glyph integer
---@return RID
function TextServer.font_get_glyph_texture_rid(font_rid, size, glyph) end

---@param font_rid RID
---@param size Vector2i
---@param glyph integer
---@return Vector2
function TextServer.font_get_glyph_texture_size(font_rid, size, glyph) end

---@param font RID
---@param size integer
---@param index integer
---@return table<any,any>
function TextServer.font_get_glyph_contours(font, size, index) end

---@param font_rid RID
---@param size integer
---@return Array<Vector2i>
function TextServer.font_get_kerning_list(font_rid, size) end

---@param font_rid RID
---@param size integer
function TextServer.font_clear_kerning_map(font_rid, size) end

---@param font_rid RID
---@param size integer
---@param glyph_pair Vector2i
function TextServer.font_remove_kerning(font_rid, size, glyph_pair) end

---@param font_rid RID
---@param size integer
---@param glyph_pair Vector2i
---@param kerning Vector2
function TextServer.font_set_kerning(font_rid, size, glyph_pair, kerning) end

---@param font_rid RID
---@param size integer
---@param glyph_pair Vector2i
---@return Vector2
function TextServer.font_get_kerning(font_rid, size, glyph_pair) end

---@param font_rid RID
---@param size integer
---@param char integer
---@param variation_selector integer
---@return integer
function TextServer.font_get_glyph_index(font_rid, size, char, variation_selector) end

---@param font_rid RID
---@param size integer
---@param glyph_index integer
---@return integer
function TextServer.font_get_char_from_glyph_index(font_rid, size, glyph_index) end

---@param font_rid RID
---@param char integer
---@return boolean
function TextServer.font_has_char(font_rid, char) end

---@param font_rid RID
---@return string
function TextServer.font_get_supported_chars(font_rid) end

---@param font_rid RID
---@return PackedInt32Array
function TextServer.font_get_supported_glyphs(font_rid) end

---@param font_rid RID
---@param size Vector2i
---@param start integer
---@param end_ integer
function TextServer.font_render_range(font_rid, size, start, end_) end

---@param font_rid RID
---@param size Vector2i
---@param index integer
function TextServer.font_render_glyph(font_rid, size, index) end

---@param font_rid RID
---@param canvas RID
---@param size integer
---@param pos Vector2
---@param index integer
---@param color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param oversampling number?  # Default = 0.0
function TextServer.font_draw_glyph(font_rid, canvas, size, pos, index, color, oversampling) end

---@param font_rid RID
---@param canvas RID
---@param size integer
---@param outline_size integer
---@param pos Vector2
---@param index integer
---@param color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param oversampling number?  # Default = 0.0
function TextServer.font_draw_glyph_outline(font_rid, canvas, size, outline_size, pos, index, color, oversampling) end

---@param font_rid RID
---@param language string
---@return boolean
function TextServer.font_is_language_supported(font_rid, language) end

---@param font_rid RID
---@param language string
---@param supported boolean
function TextServer.font_set_language_support_override(font_rid, language, supported) end

---@param font_rid RID
---@param language string
---@return boolean
function TextServer.font_get_language_support_override(font_rid, language) end

---@param font_rid RID
---@param language string
function TextServer.font_remove_language_support_override(font_rid, language) end

---@param font_rid RID
---@return PackedStringArray
function TextServer.font_get_language_support_overrides(font_rid) end

---@param font_rid RID
---@param script string
---@return boolean
function TextServer.font_is_script_supported(font_rid, script) end

---@param font_rid RID
---@param script string
---@param supported boolean
function TextServer.font_set_script_support_override(font_rid, script, supported) end

---@param font_rid RID
---@param script string
---@return boolean
function TextServer.font_get_script_support_override(font_rid, script) end

---@param font_rid RID
---@param script string
function TextServer.font_remove_script_support_override(font_rid, script) end

---@param font_rid RID
---@return PackedStringArray
function TextServer.font_get_script_support_overrides(font_rid) end

---@param font_rid RID
---@param overrides table<any,any>
function TextServer.font_set_opentype_feature_overrides(font_rid, overrides) end

---@param font_rid RID
---@return table<any,any>
function TextServer.font_get_opentype_feature_overrides(font_rid) end

---@param font_rid RID
---@return table<any,any>
function TextServer.font_supported_feature_list(font_rid) end

---@param font_rid RID
---@return table<any,any>
function TextServer.font_supported_variation_list(font_rid) end

---@return number
function TextServer.font_get_global_oversampling() end

---@param oversampling number
function TextServer.font_set_global_oversampling(oversampling) end

---@param size integer
---@param index integer
---@return Vector2
function TextServer.get_hex_code_box_size(size, index) end

---@param canvas RID
---@param size integer
---@param pos Vector2
---@param index integer
---@param color Color
function TextServer.draw_hex_code_box(canvas, size, pos, index, color) end

---@param direction TextServer.Direction?  # Default = 0
---@param orientation TextServer.Orientation?  # Default = 0
---@return RID
function TextServer.create_shaped_text(direction, orientation) end

---@param rid RID
function TextServer.shaped_text_clear(rid) end

---@param shaped RID
---@param direction TextServer.Direction?  # Default = 0
function TextServer.shaped_text_set_direction(shaped, direction) end

---@param shaped RID
---@return TextServer.Direction
function TextServer.shaped_text_get_direction(shaped) end

---@param shaped RID
---@return TextServer.Direction
function TextServer.shaped_text_get_inferred_direction(shaped) end

---@param shaped RID
---@param override Array<any>
function TextServer.shaped_text_set_bidi_override(shaped, override) end

---@param shaped RID
---@param punct string
function TextServer.shaped_text_set_custom_punctuation(shaped, punct) end

---@param shaped RID
---@return string
function TextServer.shaped_text_get_custom_punctuation(shaped) end

---@param shaped RID
---@param char integer
function TextServer.shaped_text_set_custom_ellipsis(shaped, char) end

---@param shaped RID
---@return integer
function TextServer.shaped_text_get_custom_ellipsis(shaped) end

---@param shaped RID
---@param orientation TextServer.Orientation?  # Default = 0
function TextServer.shaped_text_set_orientation(shaped, orientation) end

---@param shaped RID
---@return TextServer.Orientation
function TextServer.shaped_text_get_orientation(shaped) end

---@param shaped RID
---@param enabled boolean
function TextServer.shaped_text_set_preserve_invalid(shaped, enabled) end

---@param shaped RID
---@return boolean
function TextServer.shaped_text_get_preserve_invalid(shaped) end

---@param shaped RID
---@param enabled boolean
function TextServer.shaped_text_set_preserve_control(shaped, enabled) end

---@param shaped RID
---@return boolean
function TextServer.shaped_text_get_preserve_control(shaped) end

---@param shaped RID
---@param spacing TextServer.SpacingType
---@param value integer
function TextServer.shaped_text_set_spacing(shaped, spacing, value) end

---@param shaped RID
---@param spacing TextServer.SpacingType
---@return integer
function TextServer.shaped_text_get_spacing(shaped, spacing) end

---@param shaped RID
---@param text string
---@param fonts Array<RID>
---@param size integer
---@param opentype_features table<any,any>?  # Default = {  }
---@param language string?  # Default = 
---@param meta Object?  # Default = <null>
---@return boolean
function TextServer.shaped_text_add_string(shaped, text, fonts, size, opentype_features, language, meta) end

---@param shaped RID
---@param key Object
---@param size Vector2
---@param inline_align InlineAlignment?  # Default = 5
---@param length integer?  # Default = 1
---@param baseline number?  # Default = 0.0
---@return boolean
function TextServer.shaped_text_add_object(shaped, key, size, inline_align, length, baseline) end

---@param shaped RID
---@param key Object
---@param size Vector2
---@param inline_align InlineAlignment?  # Default = 5
---@param baseline number?  # Default = 0.0
---@return boolean
function TextServer.shaped_text_resize_object(shaped, key, size, inline_align, baseline) end

---@param shaped RID
---@return string
function TextServer.shaped_get_text(shaped) end

---@param shaped RID
---@return integer
function TextServer.shaped_get_span_count(shaped) end

---@param shaped RID
---@param index integer
---@return Object
function TextServer.shaped_get_span_meta(shaped, index) end

---@param shaped RID
---@param index integer
---@return Object
function TextServer.shaped_get_span_embedded_object(shaped, index) end

---@param shaped RID
---@param index integer
---@return string
function TextServer.shaped_get_span_text(shaped, index) end

---@param shaped RID
---@param index integer
---@return Object
function TextServer.shaped_get_span_object(shaped, index) end

---@param shaped RID
---@param index integer
---@param fonts Array<RID>
---@param size integer
---@param opentype_features table<any,any>?  # Default = {  }
function TextServer.shaped_set_span_update_font(shaped, index, fonts, size, opentype_features) end

---@param shaped RID
---@return integer
function TextServer.shaped_get_run_count(shaped) end

---@param shaped RID
---@param index integer
---@return string
function TextServer.shaped_get_run_text(shaped, index) end

---@param shaped RID
---@param index integer
---@return Vector2i
function TextServer.shaped_get_run_range(shaped, index) end

---@param shaped RID
---@param index integer
---@return RID
function TextServer.shaped_get_run_font_rid(shaped, index) end

---@param shaped RID
---@param index integer
---@return integer
function TextServer.shaped_get_run_font_size(shaped, index) end

---@param shaped RID
---@param index integer
---@return string
function TextServer.shaped_get_run_language(shaped, index) end

---@param shaped RID
---@param index integer
---@return TextServer.Direction
function TextServer.shaped_get_run_direction(shaped, index) end

---@param shaped RID
---@param index integer
---@return Object
function TextServer.shaped_get_run_object(shaped, index) end

---@param shaped RID
---@param start integer
---@param length integer
---@return RID
function TextServer.shaped_text_substr(shaped, start, length) end

---@param shaped RID
---@return RID
function TextServer.shaped_text_get_parent(shaped) end

---@param shaped RID
---@param width number
---@param justification_flags TextServer.JustificationFlag?  # Default = 3
---@return number
function TextServer.shaped_text_fit_to_width(shaped, width, justification_flags) end

---@param shaped RID
---@param tab_stops PackedFloat32Array
---@return number
function TextServer.shaped_text_tab_align(shaped, tab_stops) end

---@param shaped RID
---@return boolean
function TextServer.shaped_text_shape(shaped) end

---@param shaped RID
---@return boolean
function TextServer.shaped_text_is_ready(shaped) end

---@param shaped RID
---@return boolean
function TextServer.shaped_text_has_visible_chars(shaped) end

---@param shaped RID
---@return Array<Dictionary>
function TextServer.shaped_text_get_glyphs(shaped) end

---@param shaped RID
---@return Array<Dictionary>
function TextServer.shaped_text_sort_logical(shaped) end

---@param shaped RID
---@return integer
function TextServer.shaped_text_get_glyph_count(shaped) end

---@param shaped RID
---@return Vector2i
function TextServer.shaped_text_get_range(shaped) end

---@param shaped RID
---@param width PackedFloat32Array
---@param start integer?  # Default = 0
---@param once boolean?  # Default = true
---@param break_flags TextServer.LineBreakFlag?  # Default = 3
---@return PackedInt32Array
function TextServer.shaped_text_get_line_breaks_adv(shaped, width, start, once, break_flags) end

---@param shaped RID
---@param width number
---@param start integer?  # Default = 0
---@param break_flags TextServer.LineBreakFlag?  # Default = 3
---@return PackedInt32Array
function TextServer.shaped_text_get_line_breaks(shaped, width, start, break_flags) end

---@param shaped RID
---@param grapheme_flags TextServer.GraphemeFlag?  # Default = 264
---@param skip_grapheme_flags TextServer.GraphemeFlag?  # Default = 4
---@return PackedInt32Array
function TextServer.shaped_text_get_word_breaks(shaped, grapheme_flags, skip_grapheme_flags) end

---@param shaped RID
---@return integer
function TextServer.shaped_text_get_trim_pos(shaped) end

---@param shaped RID
---@return integer
function TextServer.shaped_text_get_ellipsis_pos(shaped) end

---@param shaped RID
---@return Array<Dictionary>
function TextServer.shaped_text_get_ellipsis_glyphs(shaped) end

---@param shaped RID
---@return integer
function TextServer.shaped_text_get_ellipsis_glyph_count(shaped) end

---@param shaped RID
---@param width number?  # Default = 0
---@param overrun_trim_flags TextServer.TextOverrunFlag?  # Default = 0
function TextServer.shaped_text_overrun_trim_to_width(shaped, width, overrun_trim_flags) end

---@param shaped RID
---@return Array<any>
function TextServer.shaped_text_get_objects(shaped) end

---@param shaped RID
---@param key Object
---@return Rect2
function TextServer.shaped_text_get_object_rect(shaped, key) end

---@param shaped RID
---@param key Object
---@return Vector2i
function TextServer.shaped_text_get_object_range(shaped, key) end

---@param shaped RID
---@param key Object
---@return integer
function TextServer.shaped_text_get_object_glyph(shaped, key) end

---@param shaped RID
---@return Vector2
function TextServer.shaped_text_get_size(shaped) end

---@param shaped RID
---@return number
function TextServer.shaped_text_get_ascent(shaped) end

---@param shaped RID
---@return number
function TextServer.shaped_text_get_descent(shaped) end

---@param shaped RID
---@return number
function TextServer.shaped_text_get_width(shaped) end

---@param shaped RID
---@return number
function TextServer.shaped_text_get_underline_position(shaped) end

---@param shaped RID
---@return number
function TextServer.shaped_text_get_underline_thickness(shaped) end

---@param shaped RID
---@param position integer
---@return table<any,any>
function TextServer.shaped_text_get_carets(shaped, position) end

---@param shaped RID
---@param start integer
---@param end_ integer
---@return PackedVector2Array
function TextServer.shaped_text_get_selection(shaped, start, end_) end

---@param shaped RID
---@param coords number
---@return integer
function TextServer.shaped_text_hit_test_grapheme(shaped, coords) end

---@param shaped RID
---@param coords number
---@return integer
function TextServer.shaped_text_hit_test_position(shaped, coords) end

---@param shaped RID
---@param pos integer
---@return Vector2
function TextServer.shaped_text_get_grapheme_bounds(shaped, pos) end

---@param shaped RID
---@param pos integer
---@return integer
function TextServer.shaped_text_next_grapheme_pos(shaped, pos) end

---@param shaped RID
---@param pos integer
---@return integer
function TextServer.shaped_text_prev_grapheme_pos(shaped, pos) end

---@param shaped RID
---@return PackedInt32Array
function TextServer.shaped_text_get_character_breaks(shaped) end

---@param shaped RID
---@param pos integer
---@return integer
function TextServer.shaped_text_next_character_pos(shaped, pos) end

---@param shaped RID
---@param pos integer
---@return integer
function TextServer.shaped_text_prev_character_pos(shaped, pos) end

---@param shaped RID
---@param pos integer
---@return integer
function TextServer.shaped_text_closest_character_pos(shaped, pos) end

---@param shaped RID
---@param canvas RID
---@param pos Vector2
---@param clip_l number?  # Default = -1
---@param clip_r number?  # Default = -1
---@param color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param oversampling number?  # Default = 0.0
function TextServer.shaped_text_draw(shaped, canvas, pos, clip_l, clip_r, color, oversampling) end

---@param shaped RID
---@param canvas RID
---@param pos Vector2
---@param clip_l number?  # Default = -1
---@param clip_r number?  # Default = -1
---@param outline_size integer?  # Default = 1
---@param color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param oversampling number?  # Default = 0.0
function TextServer.shaped_text_draw_outline(shaped, canvas, pos, clip_l, clip_r, outline_size, color, oversampling) end

---@param shaped RID
---@param start integer
---@param end_ integer
---@return TextServer.Direction
function TextServer.shaped_text_get_dominant_direction_in_range(shaped, start, end_) end

---@param number string
---@param language string?  # Default = 
---@return string
function TextServer.format_number(number, language) end

---@param number string
---@param language string?  # Default = 
---@return string
function TextServer.parse_number(number, language) end

---@param language string?  # Default = 
---@return string
function TextServer.percent_sign(language) end

---@param string string
---@param language string?  # Default = 
---@param chars_per_line integer?  # Default = 0
---@return PackedInt32Array
function TextServer.string_get_word_breaks(string, language, chars_per_line) end

---@param string string
---@param language string?  # Default = 
---@return PackedInt32Array
function TextServer.string_get_character_breaks(string, language) end

---@param string string
---@param dict PackedStringArray
---@return integer
function TextServer.is_confusable(string, dict) end

---@param string string
---@return boolean
function TextServer.spoof_check(string) end

---@param string string
---@return string
function TextServer.strip_diacritics(string) end

---@param string string
---@return boolean
function TextServer.is_valid_identifier(string) end

---@param unicode integer
---@return boolean
function TextServer.is_valid_letter(unicode) end

---@param string string
---@param language string?  # Default = 
---@return string
function TextServer.string_to_upper(string, language) end

---@param string string
---@param language string?  # Default = 
---@return string
function TextServer.string_to_lower(string, language) end

---@param string string
---@param language string?  # Default = 
---@return string
function TextServer.string_to_title(string, language) end

---@param parser_type TextServer.StructuredTextParser
---@param args Array<any>
---@param text string
---@return Array<Vector3i>
function TextServer.parse_structured_text(parser_type, args, text) end
