---@meta _
-- Generated API for game version 0.9.1

---@class Line2D : Node2D
---@field points PackedVector2Array
---@field closed boolean
---@field width number
---@field width_curve Curve
---@field default_color Color
---@field gradient Gradient
---@field texture Texture2D
---@field texture_mode integer
---@field joint_mode integer
---@field begin_cap_mode integer
---@field end_cap_mode integer
---@field sharp_limit number
---@field round_precision integer
---@field antialiased boolean
local Line2D = {}

---@param points PackedVector2Array
function Line2D.set_points(points) end

---@return PackedVector2Array
function Line2D.get_points() end

---@param index integer
---@param position Vector2
function Line2D.set_point_position(index, position) end

---@param index integer
---@return Vector2
function Line2D.get_point_position(index) end

---@return integer
function Line2D.get_point_count() end

---@param position Vector2
---@param index integer?  # Default = -1
function Line2D.add_point(position, index) end

---@param index integer
function Line2D.remove_point(index) end

function Line2D.clear_points() end

---@param closed boolean
function Line2D.set_closed(closed) end

---@return boolean
function Line2D.is_closed() end

---@param width number
function Line2D.set_width(width) end

---@return number
function Line2D.get_width() end

---@param curve Curve
function Line2D.set_curve(curve) end

---@return Curve
function Line2D.get_curve() end

---@param color Color
function Line2D.set_default_color(color) end

---@return Color
function Line2D.get_default_color() end

---@param color Gradient
function Line2D.set_gradient(color) end

---@return Gradient
function Line2D.get_gradient() end

---@param texture Texture2D
function Line2D.set_texture(texture) end

---@return Texture2D
function Line2D.get_texture() end

---@param mode Line2D.LineTextureMode
function Line2D.set_texture_mode(mode) end

---@return Line2D.LineTextureMode
function Line2D.get_texture_mode() end

---@param mode Line2D.LineJointMode
function Line2D.set_joint_mode(mode) end

---@return Line2D.LineJointMode
function Line2D.get_joint_mode() end

---@param mode Line2D.LineCapMode
function Line2D.set_begin_cap_mode(mode) end

---@return Line2D.LineCapMode
function Line2D.get_begin_cap_mode() end

---@param mode Line2D.LineCapMode
function Line2D.set_end_cap_mode(mode) end

---@return Line2D.LineCapMode
function Line2D.get_end_cap_mode() end

---@param limit number
function Line2D.set_sharp_limit(limit) end

---@return number
function Line2D.get_sharp_limit() end

---@param precision integer
function Line2D.set_round_precision(precision) end

---@return integer
function Line2D.get_round_precision() end

---@param antialiased boolean
function Line2D.set_antialiased(antialiased) end

---@return boolean
function Line2D.get_antialiased() end
