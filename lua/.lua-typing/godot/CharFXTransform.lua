---@meta _
-- Generated API for game version 0.10.0

---@class CharFXTransform : RefCounted
---@field transform Transform2D
---@field range Vector2i
---@field elapsed_time number
---@field visible boolean
---@field outline boolean
---@field offset Vector2
---@field color Color
---@field env table<any,any>
---@field glyph_index integer
---@field glyph_count integer
---@field glyph_flags integer
---@field relative_index integer
---@field font RID
local CharFXTransform = {}

---@return Transform2D
function CharFXTransform.get_transform() end

---@param transform Transform2D
function CharFXTransform.set_transform(transform) end

---@return Vector2i
function CharFXTransform.get_range() end

---@param range Vector2i
function CharFXTransform.set_range(range) end

---@return number
function CharFXTransform.get_elapsed_time() end

---@param time number
function CharFXTransform.set_elapsed_time(time) end

---@return boolean
function CharFXTransform.is_visible() end

---@param visibility boolean
function CharFXTransform.set_visibility(visibility) end

---@return boolean
function CharFXTransform.is_outline() end

---@param outline boolean
function CharFXTransform.set_outline(outline) end

---@return Vector2
function CharFXTransform.get_offset() end

---@param offset Vector2
function CharFXTransform.set_offset(offset) end

---@return Color
function CharFXTransform.get_color() end

---@param color Color
function CharFXTransform.set_color(color) end

---@return table<any,any>
function CharFXTransform.get_environment() end

---@param environment table<any,any>
function CharFXTransform.set_environment(environment) end

---@return integer
function CharFXTransform.get_glyph_index() end

---@param glyph_index integer
function CharFXTransform.set_glyph_index(glyph_index) end

---@return integer
function CharFXTransform.get_relative_index() end

---@param relative_index integer
function CharFXTransform.set_relative_index(relative_index) end

---@return integer
function CharFXTransform.get_glyph_count() end

---@param glyph_count integer
function CharFXTransform.set_glyph_count(glyph_count) end

---@return integer
function CharFXTransform.get_glyph_flags() end

---@param glyph_flags integer
function CharFXTransform.set_glyph_flags(glyph_flags) end

---@return RID
function CharFXTransform.get_font() end

---@param font RID
function CharFXTransform.set_font(font) end
