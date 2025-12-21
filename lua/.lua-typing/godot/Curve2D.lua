---@meta _
-- Generated API for game version 0.9.1

---@class Curve2D : Resource
---@field bake_interval number
---@field point_count Points,point_
local Curve2D = {}

---@return integer
function Curve2D.get_point_count() end

---@param count integer
function Curve2D.set_point_count(count) end

---@param position Vector2
---@param in_ Vector2?  # Default = (0.0, 0.0)
---@param out Vector2?  # Default = (0.0, 0.0)
---@param index integer?  # Default = -1
function Curve2D.add_point(position, in_, out, index) end

---@param idx integer
---@param position Vector2
function Curve2D.set_point_position(idx, position) end

---@param idx integer
---@return Vector2
function Curve2D.get_point_position(idx) end

---@param idx integer
---@param position Vector2
function Curve2D.set_point_in(idx, position) end

---@param idx integer
---@return Vector2
function Curve2D.get_point_in(idx) end

---@param idx integer
---@param position Vector2
function Curve2D.set_point_out(idx, position) end

---@param idx integer
---@return Vector2
function Curve2D.get_point_out(idx) end

---@param idx integer
function Curve2D.remove_point(idx) end

function Curve2D.clear_points() end

---@param idx integer
---@param t number
---@return Vector2
function Curve2D.sample(idx, t) end

---@param fofs number
---@return Vector2
function Curve2D.samplef(fofs) end

---@param distance number
function Curve2D.set_bake_interval(distance) end

---@return number
function Curve2D.get_bake_interval() end

---@return number
function Curve2D.get_baked_length() end

---@param offset number?  # Default = 0.0
---@param cubic boolean?  # Default = false
---@return Vector2
function Curve2D.sample_baked(offset, cubic) end

---@param offset number?  # Default = 0.0
---@param cubic boolean?  # Default = false
---@return Transform2D
function Curve2D.sample_baked_with_rotation(offset, cubic) end

---@return PackedVector2Array
function Curve2D.get_baked_points() end

---@param to_point Vector2
---@return Vector2
function Curve2D.get_closest_point(to_point) end

---@param to_point Vector2
---@return number
function Curve2D.get_closest_offset(to_point) end

---@param max_stages integer?  # Default = 5
---@param tolerance_degrees number?  # Default = 4
---@return PackedVector2Array
function Curve2D.tessellate(max_stages, tolerance_degrees) end

---@param max_stages integer?  # Default = 5
---@param tolerance_length number?  # Default = 20.0
---@return PackedVector2Array
function Curve2D.tessellate_even_length(max_stages, tolerance_length) end
