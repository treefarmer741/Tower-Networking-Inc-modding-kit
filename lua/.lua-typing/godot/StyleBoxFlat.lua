---@meta _
-- Generated API for game version 0.9.1

---@class StyleBoxFlat : StyleBox
---@field bg_color Color
---@field draw_center boolean
---@field skew Vector2
---@field border_width_left integer
---@field border_width_top integer
---@field border_width_right integer
---@field border_width_bottom integer
---@field border_color Color
---@field border_blend boolean
---@field corner_radius_top_left integer
---@field corner_radius_top_right integer
---@field corner_radius_bottom_right integer
---@field corner_radius_bottom_left integer
---@field corner_detail integer
---@field expand_margin_left number
---@field expand_margin_top number
---@field expand_margin_right number
---@field expand_margin_bottom number
---@field shadow_color Color
---@field shadow_size integer
---@field shadow_offset Vector2
---@field anti_aliasing boolean
---@field anti_aliasing_size number
local StyleBoxFlat = {}

---@param color Color
function StyleBoxFlat.set_bg_color(color) end

---@return Color
function StyleBoxFlat.get_bg_color() end

---@param color Color
function StyleBoxFlat.set_border_color(color) end

---@return Color
function StyleBoxFlat.get_border_color() end

---@param width integer
function StyleBoxFlat.set_border_width_all(width) end

---@return integer
function StyleBoxFlat.get_border_width_min() end

---@param margin Side
---@param width integer
function StyleBoxFlat.set_border_width(margin, width) end

---@param margin Side
---@return integer
function StyleBoxFlat.get_border_width(margin) end

---@param blend boolean
function StyleBoxFlat.set_border_blend(blend) end

---@return boolean
function StyleBoxFlat.get_border_blend() end

---@param radius integer
function StyleBoxFlat.set_corner_radius_all(radius) end

---@param corner Corner
---@param radius integer
function StyleBoxFlat.set_corner_radius(corner, radius) end

---@param corner Corner
---@return integer
function StyleBoxFlat.get_corner_radius(corner) end

---@param margin Side
---@param size number
function StyleBoxFlat.set_expand_margin(margin, size) end

---@param size number
function StyleBoxFlat.set_expand_margin_all(size) end

---@param margin Side
---@return number
function StyleBoxFlat.get_expand_margin(margin) end

---@param draw_center boolean
function StyleBoxFlat.set_draw_center(draw_center) end

---@return boolean
function StyleBoxFlat.is_draw_center_enabled() end

---@param skew Vector2
function StyleBoxFlat.set_skew(skew) end

---@return Vector2
function StyleBoxFlat.get_skew() end

---@param color Color
function StyleBoxFlat.set_shadow_color(color) end

---@return Color
function StyleBoxFlat.get_shadow_color() end

---@param size integer
function StyleBoxFlat.set_shadow_size(size) end

---@return integer
function StyleBoxFlat.get_shadow_size() end

---@param offset Vector2
function StyleBoxFlat.set_shadow_offset(offset) end

---@return Vector2
function StyleBoxFlat.get_shadow_offset() end

---@param anti_aliased boolean
function StyleBoxFlat.set_anti_aliased(anti_aliased) end

---@return boolean
function StyleBoxFlat.is_anti_aliased() end

---@param size number
function StyleBoxFlat.set_aa_size(size) end

---@return number
function StyleBoxFlat.get_aa_size() end

---@param detail integer
function StyleBoxFlat.set_corner_detail(detail) end

---@return integer
function StyleBoxFlat.get_corner_detail() end
