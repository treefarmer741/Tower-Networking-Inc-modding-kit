---@meta _
-- Generated API for game version 0.10.0

---@class StyleBoxTexture : StyleBox
---@field texture Texture2D
---@field texture_margin_left number
---@field texture_margin_top number
---@field texture_margin_right number
---@field texture_margin_bottom number
---@field expand_margin_left number
---@field expand_margin_top number
---@field expand_margin_right number
---@field expand_margin_bottom number
---@field axis_stretch_horizontal integer
---@field axis_stretch_vertical integer
---@field region_rect Rect2
---@field modulate_color Color
---@field draw_center boolean
local StyleBoxTexture = {}

---@param texture Texture2D
function StyleBoxTexture.set_texture(texture) end

---@return Texture2D
function StyleBoxTexture.get_texture() end

---@param margin Side
---@param size number
function StyleBoxTexture.set_texture_margin(margin, size) end

---@param size number
function StyleBoxTexture.set_texture_margin_all(size) end

---@param margin Side
---@return number
function StyleBoxTexture.get_texture_margin(margin) end

---@param margin Side
---@param size number
function StyleBoxTexture.set_expand_margin(margin, size) end

---@param size number
function StyleBoxTexture.set_expand_margin_all(size) end

---@param margin Side
---@return number
function StyleBoxTexture.get_expand_margin(margin) end

---@param region Rect2
function StyleBoxTexture.set_region_rect(region) end

---@return Rect2
function StyleBoxTexture.get_region_rect() end

---@param enable boolean
function StyleBoxTexture.set_draw_center(enable) end

---@return boolean
function StyleBoxTexture.is_draw_center_enabled() end

---@param color Color
function StyleBoxTexture.set_modulate(color) end

---@return Color
function StyleBoxTexture.get_modulate() end

---@param mode StyleBoxTexture.AxisStretchMode
function StyleBoxTexture.set_h_axis_stretch_mode(mode) end

---@return StyleBoxTexture.AxisStretchMode
function StyleBoxTexture.get_h_axis_stretch_mode() end

---@param mode StyleBoxTexture.AxisStretchMode
function StyleBoxTexture.set_v_axis_stretch_mode(mode) end

---@return StyleBoxTexture.AxisStretchMode
function StyleBoxTexture.get_v_axis_stretch_mode() end
