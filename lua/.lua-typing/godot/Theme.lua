---@meta _
-- Generated API for game version 0.9.1

---@class Theme : Resource
---@field default_base_scale number
---@field default_font Font
---@field default_font_size integer
local Theme = {}

---@param name string
---@param theme_type string
---@param texture Texture2D
function Theme.set_icon(name, theme_type, texture) end

---@param name string
---@param theme_type string
---@return Texture2D
function Theme.get_icon(name, theme_type) end

---@param name string
---@param theme_type string
---@return boolean
function Theme.has_icon(name, theme_type) end

---@param old_name string
---@param name string
---@param theme_type string
function Theme.rename_icon(old_name, name, theme_type) end

---@param name string
---@param theme_type string
function Theme.clear_icon(name, theme_type) end

---@param theme_type string
---@return PackedStringArray
function Theme.get_icon_list(theme_type) end

---@return PackedStringArray
function Theme.get_icon_type_list() end

---@param name string
---@param theme_type string
---@param texture StyleBox
function Theme.set_stylebox(name, theme_type, texture) end

---@param name string
---@param theme_type string
---@return StyleBox
function Theme.get_stylebox(name, theme_type) end

---@param name string
---@param theme_type string
---@return boolean
function Theme.has_stylebox(name, theme_type) end

---@param old_name string
---@param name string
---@param theme_type string
function Theme.rename_stylebox(old_name, name, theme_type) end

---@param name string
---@param theme_type string
function Theme.clear_stylebox(name, theme_type) end

---@param theme_type string
---@return PackedStringArray
function Theme.get_stylebox_list(theme_type) end

---@return PackedStringArray
function Theme.get_stylebox_type_list() end

---@param name string
---@param theme_type string
---@param font Font
function Theme.set_font(name, theme_type, font) end

---@param name string
---@param theme_type string
---@return Font
function Theme.get_font(name, theme_type) end

---@param name string
---@param theme_type string
---@return boolean
function Theme.has_font(name, theme_type) end

---@param old_name string
---@param name string
---@param theme_type string
function Theme.rename_font(old_name, name, theme_type) end

---@param name string
---@param theme_type string
function Theme.clear_font(name, theme_type) end

---@param theme_type string
---@return PackedStringArray
function Theme.get_font_list(theme_type) end

---@return PackedStringArray
function Theme.get_font_type_list() end

---@param name string
---@param theme_type string
---@param font_size integer
function Theme.set_font_size(name, theme_type, font_size) end

---@param name string
---@param theme_type string
---@return integer
function Theme.get_font_size(name, theme_type) end

---@param name string
---@param theme_type string
---@return boolean
function Theme.has_font_size(name, theme_type) end

---@param old_name string
---@param name string
---@param theme_type string
function Theme.rename_font_size(old_name, name, theme_type) end

---@param name string
---@param theme_type string
function Theme.clear_font_size(name, theme_type) end

---@param theme_type string
---@return PackedStringArray
function Theme.get_font_size_list(theme_type) end

---@return PackedStringArray
function Theme.get_font_size_type_list() end

---@param name string
---@param theme_type string
---@param color Color
function Theme.set_color(name, theme_type, color) end

---@param name string
---@param theme_type string
---@return Color
function Theme.get_color(name, theme_type) end

---@param name string
---@param theme_type string
---@return boolean
function Theme.has_color(name, theme_type) end

---@param old_name string
---@param name string
---@param theme_type string
function Theme.rename_color(old_name, name, theme_type) end

---@param name string
---@param theme_type string
function Theme.clear_color(name, theme_type) end

---@param theme_type string
---@return PackedStringArray
function Theme.get_color_list(theme_type) end

---@return PackedStringArray
function Theme.get_color_type_list() end

---@param name string
---@param theme_type string
---@param constant integer
function Theme.set_constant(name, theme_type, constant) end

---@param name string
---@param theme_type string
---@return integer
function Theme.get_constant(name, theme_type) end

---@param name string
---@param theme_type string
---@return boolean
function Theme.has_constant(name, theme_type) end

---@param old_name string
---@param name string
---@param theme_type string
function Theme.rename_constant(old_name, name, theme_type) end

---@param name string
---@param theme_type string
function Theme.clear_constant(name, theme_type) end

---@param theme_type string
---@return PackedStringArray
function Theme.get_constant_list(theme_type) end

---@return PackedStringArray
function Theme.get_constant_type_list() end

---@param base_scale number
function Theme.set_default_base_scale(base_scale) end

---@return number
function Theme.get_default_base_scale() end

---@return boolean
function Theme.has_default_base_scale() end

---@param font Font
function Theme.set_default_font(font) end

---@return Font
function Theme.get_default_font() end

---@return boolean
function Theme.has_default_font() end

---@param font_size integer
function Theme.set_default_font_size(font_size) end

---@return integer
function Theme.get_default_font_size() end

---@return boolean
function Theme.has_default_font_size() end

---@param data_type Theme.DataType
---@param name string
---@param theme_type string
---@param value Object
function Theme.set_theme_item(data_type, name, theme_type, value) end

---@param data_type Theme.DataType
---@param name string
---@param theme_type string
---@return Object
function Theme.get_theme_item(data_type, name, theme_type) end

---@param data_type Theme.DataType
---@param name string
---@param theme_type string
---@return boolean
function Theme.has_theme_item(data_type, name, theme_type) end

---@param data_type Theme.DataType
---@param old_name string
---@param name string
---@param theme_type string
function Theme.rename_theme_item(data_type, old_name, name, theme_type) end

---@param data_type Theme.DataType
---@param name string
---@param theme_type string
function Theme.clear_theme_item(data_type, name, theme_type) end

---@param data_type Theme.DataType
---@param theme_type string
---@return PackedStringArray
function Theme.get_theme_item_list(data_type, theme_type) end

---@param data_type Theme.DataType
---@return PackedStringArray
function Theme.get_theme_item_type_list(data_type) end

---@param theme_type string
---@param base_type string
function Theme.set_type_variation(theme_type, base_type) end

---@param theme_type string
---@param base_type string
---@return boolean
function Theme.is_type_variation(theme_type, base_type) end

---@param theme_type string
function Theme.clear_type_variation(theme_type) end

---@param theme_type string
---@return string
function Theme.get_type_variation_base(theme_type) end

---@param base_type string
---@return PackedStringArray
function Theme.get_type_variation_list(base_type) end

---@param theme_type string
function Theme.add_type(theme_type) end

---@param theme_type string
function Theme.remove_type(theme_type) end

---@param old_theme_type string
---@param theme_type string
function Theme.rename_type(old_theme_type, theme_type) end

---@return PackedStringArray
function Theme.get_type_list() end

---@param other Theme
function Theme.merge_with(other) end

function Theme.clear() end
