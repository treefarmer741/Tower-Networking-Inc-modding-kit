---@meta _
-- Generated API for game version 0.9.1

---@class NinePatchRect : Control
---@field texture Texture2D
---@field draw_center boolean
---@field region_rect Rect2
---@field patch_margin_left integer
---@field patch_margin_top integer
---@field patch_margin_right integer
---@field patch_margin_bottom integer
---@field axis_stretch_horizontal integer
---@field axis_stretch_vertical integer
local NinePatchRect = {}

---@param texture Texture2D
function NinePatchRect.set_texture(texture) end

---@return Texture2D
function NinePatchRect.get_texture() end

---@param margin Side
---@param value integer
function NinePatchRect.set_patch_margin(margin, value) end

---@param margin Side
---@return integer
function NinePatchRect.get_patch_margin(margin) end

---@param rect Rect2
function NinePatchRect.set_region_rect(rect) end

---@return Rect2
function NinePatchRect.get_region_rect() end

---@param draw_center boolean
function NinePatchRect.set_draw_center(draw_center) end

---@return boolean
function NinePatchRect.is_draw_center_enabled() end

---@param mode NinePatchRect.AxisStretchMode
function NinePatchRect.set_h_axis_stretch_mode(mode) end

---@return NinePatchRect.AxisStretchMode
function NinePatchRect.get_h_axis_stretch_mode() end

---@param mode NinePatchRect.AxisStretchMode
function NinePatchRect.set_v_axis_stretch_mode(mode) end

---@return NinePatchRect.AxisStretchMode
function NinePatchRect.get_v_axis_stretch_mode() end
