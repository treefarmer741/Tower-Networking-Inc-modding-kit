---@meta _
-- Generated API for game version 0.10.0

---@class TextureProgressBar : Range
---@field fill_mode integer
---@field radial_initial_angle number
---@field radial_fill_degrees number
---@field radial_center_offset Vector2
---@field nine_patch_stretch boolean
---@field stretch_margin_left integer
---@field stretch_margin_top integer
---@field stretch_margin_right integer
---@field stretch_margin_bottom integer
---@field texture_under Texture2D
---@field texture_over Texture2D
---@field texture_progress Texture2D
---@field texture_progress_offset Vector2
---@field tint_under Color
---@field tint_over Color
---@field tint_progress Color
local TextureProgressBar = {}

---@param tex Texture2D
function TextureProgressBar.set_under_texture(tex) end

---@return Texture2D
function TextureProgressBar.get_under_texture() end

---@param tex Texture2D
function TextureProgressBar.set_progress_texture(tex) end

---@return Texture2D
function TextureProgressBar.get_progress_texture() end

---@param tex Texture2D
function TextureProgressBar.set_over_texture(tex) end

---@return Texture2D
function TextureProgressBar.get_over_texture() end

---@param mode integer
function TextureProgressBar.set_fill_mode(mode) end

---@return integer
function TextureProgressBar.get_fill_mode() end

---@param tint Color
function TextureProgressBar.set_tint_under(tint) end

---@return Color
function TextureProgressBar.get_tint_under() end

---@param tint Color
function TextureProgressBar.set_tint_progress(tint) end

---@return Color
function TextureProgressBar.get_tint_progress() end

---@param tint Color
function TextureProgressBar.set_tint_over(tint) end

---@return Color
function TextureProgressBar.get_tint_over() end

---@param offset Vector2
function TextureProgressBar.set_texture_progress_offset(offset) end

---@return Vector2
function TextureProgressBar.get_texture_progress_offset() end

---@param mode number
function TextureProgressBar.set_radial_initial_angle(mode) end

---@return number
function TextureProgressBar.get_radial_initial_angle() end

---@param mode Vector2
function TextureProgressBar.set_radial_center_offset(mode) end

---@return Vector2
function TextureProgressBar.get_radial_center_offset() end

---@param mode number
function TextureProgressBar.set_fill_degrees(mode) end

---@return number
function TextureProgressBar.get_fill_degrees() end

---@param margin Side
---@param value integer
function TextureProgressBar.set_stretch_margin(margin, value) end

---@param margin Side
---@return integer
function TextureProgressBar.get_stretch_margin(margin) end

---@param stretch boolean
function TextureProgressBar.set_nine_patch_stretch(stretch) end

---@return boolean
function TextureProgressBar.get_nine_patch_stretch() end
