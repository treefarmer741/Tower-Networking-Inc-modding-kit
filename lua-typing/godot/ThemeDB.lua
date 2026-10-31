---@meta _
-- Generated API for game version 0.10.0

---@class ThemeDB : Object
---@field fallback_base_scale number
---@field fallback_font Font
---@field fallback_font_size integer
---@field fallback_icon Texture2D
---@field fallback_stylebox StyleBox
local ThemeDB = {}

---@return Theme
function ThemeDB.get_default_theme() end

---@return Theme
function ThemeDB.get_project_theme() end

---@param base_scale number
function ThemeDB.set_fallback_base_scale(base_scale) end

---@return number
function ThemeDB.get_fallback_base_scale() end

---@param font Font
function ThemeDB.set_fallback_font(font) end

---@return Font
function ThemeDB.get_fallback_font() end

---@param font_size integer
function ThemeDB.set_fallback_font_size(font_size) end

---@return integer
function ThemeDB.get_fallback_font_size() end

---@param icon Texture2D
function ThemeDB.set_fallback_icon(icon) end

---@return Texture2D
function ThemeDB.get_fallback_icon() end

---@param stylebox StyleBox
function ThemeDB.set_fallback_stylebox(stylebox) end

---@return StyleBox
function ThemeDB.get_fallback_stylebox() end
