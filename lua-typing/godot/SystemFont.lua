---@meta _
-- Generated API for game version 0.10.0

---@class SystemFont : Font
---@field font_names PackedStringArray
---@field font_italic boolean
---@field font_weight integer
---@field font_stretch integer
---@field antialiasing integer
---@field generate_mipmaps boolean
---@field disable_embedded_bitmaps boolean
---@field allow_system_fallback boolean
---@field force_autohinter boolean
---@field modulate_color_glyphs boolean
---@field hinting integer
---@field subpixel_positioning integer
---@field keep_rounding_remainders boolean
---@field multichannel_signed_distance_field boolean
---@field msdf_pixel_range integer
---@field msdf_size integer
---@field oversampling number
local SystemFont = {}

---@param antialiasing TextServer.FontAntialiasing
function SystemFont.set_antialiasing(antialiasing) end

---@return TextServer.FontAntialiasing
function SystemFont.get_antialiasing() end

---@param disable_embedded_bitmaps boolean
function SystemFont.set_disable_embedded_bitmaps(disable_embedded_bitmaps) end

---@return boolean
function SystemFont.get_disable_embedded_bitmaps() end

---@param generate_mipmaps boolean
function SystemFont.set_generate_mipmaps(generate_mipmaps) end

---@return boolean
function SystemFont.get_generate_mipmaps() end

---@param allow_system_fallback boolean
function SystemFont.set_allow_system_fallback(allow_system_fallback) end

---@return boolean
function SystemFont.is_allow_system_fallback() end

---@param force_autohinter boolean
function SystemFont.set_force_autohinter(force_autohinter) end

---@return boolean
function SystemFont.is_force_autohinter() end

---@param modulate boolean
function SystemFont.set_modulate_color_glyphs(modulate) end

---@return boolean
function SystemFont.is_modulate_color_glyphs() end

---@param hinting TextServer.Hinting
function SystemFont.set_hinting(hinting) end

---@return TextServer.Hinting
function SystemFont.get_hinting() end

---@param subpixel_positioning TextServer.SubpixelPositioning
function SystemFont.set_subpixel_positioning(subpixel_positioning) end

---@return TextServer.SubpixelPositioning
function SystemFont.get_subpixel_positioning() end

---@param keep_rounding_remainders boolean
function SystemFont.set_keep_rounding_remainders(keep_rounding_remainders) end

---@return boolean
function SystemFont.get_keep_rounding_remainders() end

---@param msdf boolean
function SystemFont.set_multichannel_signed_distance_field(msdf) end

---@return boolean
function SystemFont.is_multichannel_signed_distance_field() end

---@param msdf_pixel_range integer
function SystemFont.set_msdf_pixel_range(msdf_pixel_range) end

---@return integer
function SystemFont.get_msdf_pixel_range() end

---@param msdf_size integer
function SystemFont.set_msdf_size(msdf_size) end

---@return integer
function SystemFont.get_msdf_size() end

---@param oversampling number
function SystemFont.set_oversampling(oversampling) end

---@return number
function SystemFont.get_oversampling() end

---@return PackedStringArray
function SystemFont.get_font_names() end

---@param names PackedStringArray
function SystemFont.set_font_names(names) end

---@return boolean
function SystemFont.get_font_italic() end

---@param italic boolean
function SystemFont.set_font_italic(italic) end

---@param weight integer
function SystemFont.set_font_weight(weight) end

---@param stretch integer
function SystemFont.set_font_stretch(stretch) end
