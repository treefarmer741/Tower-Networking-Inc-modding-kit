---@meta _
-- Generated API for game version 0.9.1

---@class FontFile : Font
---@field data PackedByteArray
---@field generate_mipmaps boolean
---@field disable_embedded_bitmaps boolean
---@field antialiasing integer
---@field font_name string
---@field style_name string
---@field font_style integer
---@field font_weight integer
---@field font_stretch integer
---@field subpixel_positioning integer
---@field keep_rounding_remainders boolean
---@field multichannel_signed_distance_field boolean
---@field msdf_pixel_range integer
---@field msdf_size integer
---@field allow_system_fallback boolean
---@field force_autohinter boolean
---@field modulate_color_glyphs boolean
---@field hinting integer
---@field fixed_size integer
---@field fixed_size_scale_mode integer
---@field opentype_feature_overrides table<any,any>
---@field oversampling number
local FontFile = {}

---@param path string
---@return Error
function FontFile.load_bitmap_font(path) end

---@param path string
---@return Error
function FontFile.load_dynamic_font(path) end

---@param data PackedByteArray
function FontFile.set_data(data) end

---@return PackedByteArray
function FontFile.get_data() end

---@param name string
function FontFile.set_font_name(name) end

---@param name string
function FontFile.set_font_style_name(name) end

---@param style TextServer.FontStyle
function FontFile.set_font_style(style) end

---@param weight integer
function FontFile.set_font_weight(weight) end

---@param stretch integer
function FontFile.set_font_stretch(stretch) end

---@param antialiasing TextServer.FontAntialiasing
function FontFile.set_antialiasing(antialiasing) end

---@return TextServer.FontAntialiasing
function FontFile.get_antialiasing() end

---@param disable_embedded_bitmaps boolean
function FontFile.set_disable_embedded_bitmaps(disable_embedded_bitmaps) end

---@return boolean
function FontFile.get_disable_embedded_bitmaps() end

---@param generate_mipmaps boolean
function FontFile.set_generate_mipmaps(generate_mipmaps) end

---@return boolean
function FontFile.get_generate_mipmaps() end

---@param msdf boolean
function FontFile.set_multichannel_signed_distance_field(msdf) end

---@return boolean
function FontFile.is_multichannel_signed_distance_field() end

---@param msdf_pixel_range integer
function FontFile.set_msdf_pixel_range(msdf_pixel_range) end

---@return integer
function FontFile.get_msdf_pixel_range() end

---@param msdf_size integer
function FontFile.set_msdf_size(msdf_size) end

---@return integer
function FontFile.get_msdf_size() end

---@param fixed_size integer
function FontFile.set_fixed_size(fixed_size) end

---@return integer
function FontFile.get_fixed_size() end

---@param fixed_size_scale_mode TextServer.FixedSizeScaleMode
function FontFile.set_fixed_size_scale_mode(fixed_size_scale_mode) end

---@return TextServer.FixedSizeScaleMode
function FontFile.get_fixed_size_scale_mode() end

---@param allow_system_fallback boolean
function FontFile.set_allow_system_fallback(allow_system_fallback) end

---@return boolean
function FontFile.is_allow_system_fallback() end

---@param force_autohinter boolean
function FontFile.set_force_autohinter(force_autohinter) end

---@return boolean
function FontFile.is_force_autohinter() end

---@param modulate boolean
function FontFile.set_modulate_color_glyphs(modulate) end

---@return boolean
function FontFile.is_modulate_color_glyphs() end

---@param hinting TextServer.Hinting
function FontFile.set_hinting(hinting) end

---@return TextServer.Hinting
function FontFile.get_hinting() end

---@param subpixel_positioning TextServer.SubpixelPositioning
function FontFile.set_subpixel_positioning(subpixel_positioning) end

---@return TextServer.SubpixelPositioning
function FontFile.get_subpixel_positioning() end

---@param keep_rounding_remainders boolean
function FontFile.set_keep_rounding_remainders(keep_rounding_remainders) end

---@return boolean
function FontFile.get_keep_rounding_remainders() end

---@param oversampling number
function FontFile.set_oversampling(oversampling) end

---@return number
function FontFile.get_oversampling() end

---@return integer
function FontFile.get_cache_count() end

function FontFile.clear_cache() end

---@param cache_index integer
function FontFile.remove_cache(cache_index) end

---@param cache_index integer
---@return Array<Vector2i>
function FontFile.get_size_cache_list(cache_index) end

---@param cache_index integer
function FontFile.clear_size_cache(cache_index) end

---@param cache_index integer
---@param size Vector2i
function FontFile.remove_size_cache(cache_index, size) end

---@param cache_index integer
---@param variation_coordinates table<any,any>
function FontFile.set_variation_coordinates(cache_index, variation_coordinates) end

---@param cache_index integer
---@return table<any,any>
function FontFile.get_variation_coordinates(cache_index) end

---@param cache_index integer
---@param strength number
function FontFile.set_embolden(cache_index, strength) end

---@param cache_index integer
---@return number
function FontFile.get_embolden(cache_index) end

---@param cache_index integer
---@param transform Transform2D
function FontFile.set_transform(cache_index, transform) end

---@param cache_index integer
---@return Transform2D
function FontFile.get_transform(cache_index) end

---@param cache_index integer
---@param spacing TextServer.SpacingType
---@param value integer
function FontFile.set_extra_spacing(cache_index, spacing, value) end

---@param cache_index integer
---@param spacing TextServer.SpacingType
---@return integer
function FontFile.get_extra_spacing(cache_index, spacing) end

---@param cache_index integer
---@param baseline_offset number
function FontFile.set_extra_baseline_offset(cache_index, baseline_offset) end

---@param cache_index integer
---@return number
function FontFile.get_extra_baseline_offset(cache_index) end

---@param cache_index integer
---@param face_index integer
function FontFile.set_face_index(cache_index, face_index) end

---@param cache_index integer
---@return integer
function FontFile.get_face_index(cache_index) end

---@param cache_index integer
---@param size integer
---@param ascent number
function FontFile.set_cache_ascent(cache_index, size, ascent) end

---@param cache_index integer
---@param size integer
---@return number
function FontFile.get_cache_ascent(cache_index, size) end

---@param cache_index integer
---@param size integer
---@param descent number
function FontFile.set_cache_descent(cache_index, size, descent) end

---@param cache_index integer
---@param size integer
---@return number
function FontFile.get_cache_descent(cache_index, size) end

---@param cache_index integer
---@param size integer
---@param underline_position number
function FontFile.set_cache_underline_position(cache_index, size, underline_position) end

---@param cache_index integer
---@param size integer
---@return number
function FontFile.get_cache_underline_position(cache_index, size) end

---@param cache_index integer
---@param size integer
---@param underline_thickness number
function FontFile.set_cache_underline_thickness(cache_index, size, underline_thickness) end

---@param cache_index integer
---@param size integer
---@return number
function FontFile.get_cache_underline_thickness(cache_index, size) end

---@param cache_index integer
---@param size integer
---@param scale number
function FontFile.set_cache_scale(cache_index, size, scale) end

---@param cache_index integer
---@param size integer
---@return number
function FontFile.get_cache_scale(cache_index, size) end

---@param cache_index integer
---@param size Vector2i
---@return integer
function FontFile.get_texture_count(cache_index, size) end

---@param cache_index integer
---@param size Vector2i
function FontFile.clear_textures(cache_index, size) end

---@param cache_index integer
---@param size Vector2i
---@param texture_index integer
function FontFile.remove_texture(cache_index, size, texture_index) end

---@param cache_index integer
---@param size Vector2i
---@param texture_index integer
---@param image Image
function FontFile.set_texture_image(cache_index, size, texture_index, image) end

---@param cache_index integer
---@param size Vector2i
---@param texture_index integer
---@return Image
function FontFile.get_texture_image(cache_index, size, texture_index) end

---@param cache_index integer
---@param size Vector2i
---@param texture_index integer
---@param offset PackedInt32Array
function FontFile.set_texture_offsets(cache_index, size, texture_index, offset) end

---@param cache_index integer
---@param size Vector2i
---@param texture_index integer
---@return PackedInt32Array
function FontFile.get_texture_offsets(cache_index, size, texture_index) end

---@param cache_index integer
---@param size Vector2i
---@return PackedInt32Array
function FontFile.get_glyph_list(cache_index, size) end

---@param cache_index integer
---@param size Vector2i
function FontFile.clear_glyphs(cache_index, size) end

---@param cache_index integer
---@param size Vector2i
---@param glyph integer
function FontFile.remove_glyph(cache_index, size, glyph) end

---@param cache_index integer
---@param size integer
---@param glyph integer
---@param advance Vector2
function FontFile.set_glyph_advance(cache_index, size, glyph, advance) end

---@param cache_index integer
---@param size integer
---@param glyph integer
---@return Vector2
function FontFile.get_glyph_advance(cache_index, size, glyph) end

---@param cache_index integer
---@param size Vector2i
---@param glyph integer
---@param offset Vector2
function FontFile.set_glyph_offset(cache_index, size, glyph, offset) end

---@param cache_index integer
---@param size Vector2i
---@param glyph integer
---@return Vector2
function FontFile.get_glyph_offset(cache_index, size, glyph) end

---@param cache_index integer
---@param size Vector2i
---@param glyph integer
---@param gl_size Vector2
function FontFile.set_glyph_size(cache_index, size, glyph, gl_size) end

---@param cache_index integer
---@param size Vector2i
---@param glyph integer
---@return Vector2
function FontFile.get_glyph_size(cache_index, size, glyph) end

---@param cache_index integer
---@param size Vector2i
---@param glyph integer
---@param uv_rect Rect2
function FontFile.set_glyph_uv_rect(cache_index, size, glyph, uv_rect) end

---@param cache_index integer
---@param size Vector2i
---@param glyph integer
---@return Rect2
function FontFile.get_glyph_uv_rect(cache_index, size, glyph) end

---@param cache_index integer
---@param size Vector2i
---@param glyph integer
---@param texture_idx integer
function FontFile.set_glyph_texture_idx(cache_index, size, glyph, texture_idx) end

---@param cache_index integer
---@param size Vector2i
---@param glyph integer
---@return integer
function FontFile.get_glyph_texture_idx(cache_index, size, glyph) end

---@param cache_index integer
---@param size integer
---@return Array<Vector2i>
function FontFile.get_kerning_list(cache_index, size) end

---@param cache_index integer
---@param size integer
function FontFile.clear_kerning_map(cache_index, size) end

---@param cache_index integer
---@param size integer
---@param glyph_pair Vector2i
function FontFile.remove_kerning(cache_index, size, glyph_pair) end

---@param cache_index integer
---@param size integer
---@param glyph_pair Vector2i
---@param kerning Vector2
function FontFile.set_kerning(cache_index, size, glyph_pair, kerning) end

---@param cache_index integer
---@param size integer
---@param glyph_pair Vector2i
---@return Vector2
function FontFile.get_kerning(cache_index, size, glyph_pair) end

---@param cache_index integer
---@param size Vector2i
---@param start integer
---@param end_ integer
function FontFile.render_range(cache_index, size, start, end_) end

---@param cache_index integer
---@param size Vector2i
---@param index integer
function FontFile.render_glyph(cache_index, size, index) end

---@param language string
---@param supported boolean
function FontFile.set_language_support_override(language, supported) end

---@param language string
---@return boolean
function FontFile.get_language_support_override(language) end

---@param language string
function FontFile.remove_language_support_override(language) end

---@return PackedStringArray
function FontFile.get_language_support_overrides() end

---@param script string
---@param supported boolean
function FontFile.set_script_support_override(script, supported) end

---@param script string
---@return boolean
function FontFile.get_script_support_override(script) end

---@param script string
function FontFile.remove_script_support_override(script) end

---@return PackedStringArray
function FontFile.get_script_support_overrides() end

---@param overrides table<any,any>
function FontFile.set_opentype_feature_overrides(overrides) end

---@return table<any,any>
function FontFile.get_opentype_feature_overrides() end

---@param size integer
---@param char integer
---@param variation_selector integer
---@return integer
function FontFile.get_glyph_index(size, char, variation_selector) end

---@param size integer
---@param glyph_index integer
---@return integer
function FontFile.get_char_from_glyph_index(size, glyph_index) end
