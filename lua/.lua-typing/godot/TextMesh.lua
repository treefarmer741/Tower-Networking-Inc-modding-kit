---@meta _
-- Generated API for game version 0.9.1

---@class TextMesh : PrimitiveMesh
---@field text string
---@field font Font
---@field font_size integer
---@field horizontal_alignment integer
---@field vertical_alignment integer
---@field uppercase boolean
---@field line_spacing number
---@field autowrap_mode integer
---@field justification_flags integer
---@field pixel_size number
---@field curve_step number
---@field depth number
---@field width number
---@field offset Vector2
---@field text_direction integer
---@field language string
---@field structured_text_bidi_override integer
---@field structured_text_bidi_override_options Array<any>
local TextMesh = {}

---@param alignment HorizontalAlignment
function TextMesh.set_horizontal_alignment(alignment) end

---@return HorizontalAlignment
function TextMesh.get_horizontal_alignment() end

---@param alignment VerticalAlignment
function TextMesh.set_vertical_alignment(alignment) end

---@return VerticalAlignment
function TextMesh.get_vertical_alignment() end

---@param text string
function TextMesh.set_text(text) end

---@return string
function TextMesh.get_text() end

---@param font Font
function TextMesh.set_font(font) end

---@return Font
function TextMesh.get_font() end

---@param font_size integer
function TextMesh.set_font_size(font_size) end

---@return integer
function TextMesh.get_font_size() end

---@param line_spacing number
function TextMesh.set_line_spacing(line_spacing) end

---@return number
function TextMesh.get_line_spacing() end

---@param autowrap_mode TextServer.AutowrapMode
function TextMesh.set_autowrap_mode(autowrap_mode) end

---@return TextServer.AutowrapMode
function TextMesh.get_autowrap_mode() end

---@param justification_flags TextServer.JustificationFlag
function TextMesh.set_justification_flags(justification_flags) end

---@return TextServer.JustificationFlag
function TextMesh.get_justification_flags() end

---@param depth number
function TextMesh.set_depth(depth) end

---@return number
function TextMesh.get_depth() end

---@param width number
function TextMesh.set_width(width) end

---@return number
function TextMesh.get_width() end

---@param pixel_size number
function TextMesh.set_pixel_size(pixel_size) end

---@return number
function TextMesh.get_pixel_size() end

---@param offset Vector2
function TextMesh.set_offset(offset) end

---@return Vector2
function TextMesh.get_offset() end

---@param curve_step number
function TextMesh.set_curve_step(curve_step) end

---@return number
function TextMesh.get_curve_step() end

---@param direction TextServer.Direction
function TextMesh.set_text_direction(direction) end

---@return TextServer.Direction
function TextMesh.get_text_direction() end

---@param language string
function TextMesh.set_language(language) end

---@return string
function TextMesh.get_language() end

---@param parser TextServer.StructuredTextParser
function TextMesh.set_structured_text_bidi_override(parser) end

---@return TextServer.StructuredTextParser
function TextMesh.get_structured_text_bidi_override() end

---@param args Array<any>
function TextMesh.set_structured_text_bidi_override_options(args) end

---@return Array<any>
function TextMesh.get_structured_text_bidi_override_options() end

---@param enable boolean
function TextMesh.set_uppercase(enable) end

---@return boolean
function TextMesh.is_uppercase() end
