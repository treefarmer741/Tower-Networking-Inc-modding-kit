---@meta _
-- Generated API for game version 0.10.0

---@class Gradient : Resource
---@field interpolation_mode integer
---@field interpolation_color_space integer
---@field offsets PackedFloat32Array
---@field colors PackedColorArray
local Gradient = {}

---@param offset number
---@param color Color
function Gradient.add_point(offset, color) end

---@param point integer
function Gradient.remove_point(point) end

---@param point integer
---@param offset number
function Gradient.set_offset(point, offset) end

---@param point integer
---@return number
function Gradient.get_offset(point) end

function Gradient.reverse() end

---@param point integer
---@param color Color
function Gradient.set_color(point, color) end

---@param point integer
---@return Color
function Gradient.get_color(point) end

---@param offset number
---@return Color
function Gradient.sample(offset) end

---@return integer
function Gradient.get_point_count() end

---@param offsets PackedFloat32Array
function Gradient.set_offsets(offsets) end

---@return PackedFloat32Array
function Gradient.get_offsets() end

---@param colors PackedColorArray
function Gradient.set_colors(colors) end

---@return PackedColorArray
function Gradient.get_colors() end

---@param interpolation_mode Gradient.InterpolationMode
function Gradient.set_interpolation_mode(interpolation_mode) end

---@return Gradient.InterpolationMode
function Gradient.get_interpolation_mode() end

---@param interpolation_color_space Gradient.ColorSpace
function Gradient.set_interpolation_color_space(interpolation_color_space) end

---@return Gradient.ColorSpace
function Gradient.get_interpolation_color_space() end
