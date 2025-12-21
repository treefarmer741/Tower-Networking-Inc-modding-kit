---@meta _
-- Generated API for game version 0.9.1

---@class FontVariation : Font
---@field base_font Font
---@field variation_opentype table<any,any>
---@field variation_face_index integer
---@field variation_embolden number
---@field variation_transform Transform2D
---@field opentype_features table<any,any>
---@field spacing_glyph integer
---@field spacing_space integer
---@field spacing_top integer
---@field spacing_bottom integer
---@field baseline_offset number
local FontVariation = {}

---@param font Font
function FontVariation.set_base_font(font) end

---@return Font
function FontVariation.get_base_font() end

---@param coords table<any,any>
function FontVariation.set_variation_opentype(coords) end

---@return table<any,any>
function FontVariation.get_variation_opentype() end

---@param strength number
function FontVariation.set_variation_embolden(strength) end

---@return number
function FontVariation.get_variation_embolden() end

---@param face_index integer
function FontVariation.set_variation_face_index(face_index) end

---@return integer
function FontVariation.get_variation_face_index() end

---@param transform Transform2D
function FontVariation.set_variation_transform(transform) end

---@return Transform2D
function FontVariation.get_variation_transform() end

---@param features table<any,any>
function FontVariation.set_opentype_features(features) end

---@param spacing TextServer.SpacingType
---@param value integer
function FontVariation.set_spacing(spacing, value) end

---@param baseline_offset number
function FontVariation.set_baseline_offset(baseline_offset) end

---@return number
function FontVariation.get_baseline_offset() end
