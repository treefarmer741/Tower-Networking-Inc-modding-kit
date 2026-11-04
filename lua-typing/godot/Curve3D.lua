---@meta _
-- Generated API for game version 0.10.0

---@class Curve3D : Resource
---@field closed boolean
---@field bake_interval number
---@field point_count Points,point_
---@field up_vector_enabled boolean
local Curve3D = {}

---@return integer
function Curve3D.get_point_count() end

---@param count integer
function Curve3D.set_point_count(count) end

---@param position Vector3
---@param in_ Vector3?  # Default = (0.0, 0.0, 0.0)
---@param out Vector3?  # Default = (0.0, 0.0, 0.0)
---@param index integer?  # Default = -1
function Curve3D.add_point(position, in_, out, index) end

---@param idx integer
---@param position Vector3
function Curve3D.set_point_position(idx, position) end

---@param idx integer
---@return Vector3
function Curve3D.get_point_position(idx) end

---@param idx integer
---@param tilt number
function Curve3D.set_point_tilt(idx, tilt) end

---@param idx integer
---@return number
function Curve3D.get_point_tilt(idx) end

---@param idx integer
---@param position Vector3
function Curve3D.set_point_in(idx, position) end

---@param idx integer
---@return Vector3
function Curve3D.get_point_in(idx) end

---@param idx integer
---@param position Vector3
function Curve3D.set_point_out(idx, position) end

---@param idx integer
---@return Vector3
function Curve3D.get_point_out(idx) end

---@param idx integer
function Curve3D.remove_point(idx) end

function Curve3D.clear_points() end

---@param idx integer
---@param t number
---@return Vector3
function Curve3D.sample(idx, t) end

---@param fofs number
---@return Vector3
function Curve3D.samplef(fofs) end

---@param closed boolean
function Curve3D.set_closed(closed) end

---@return boolean
function Curve3D.is_closed() end

---@param distance number
function Curve3D.set_bake_interval(distance) end

---@return number
function Curve3D.get_bake_interval() end

---@param enable boolean
function Curve3D.set_up_vector_enabled(enable) end

---@return boolean
function Curve3D.is_up_vector_enabled() end

---@return number
function Curve3D.get_baked_length() end

---@param offset number?  # Default = 0.0
---@param cubic boolean?  # Default = false
---@return Vector3
function Curve3D.sample_baked(offset, cubic) end

---@param offset number?  # Default = 0.0
---@param cubic boolean?  # Default = false
---@param apply_tilt boolean?  # Default = false
---@return Transform3D
function Curve3D.sample_baked_with_rotation(offset, cubic, apply_tilt) end

---@param offset number
---@param apply_tilt boolean?  # Default = false
---@return Vector3
function Curve3D.sample_baked_up_vector(offset, apply_tilt) end

---@return PackedVector3Array
function Curve3D.get_baked_points() end

---@return PackedFloat32Array
function Curve3D.get_baked_tilts() end

---@return PackedVector3Array
function Curve3D.get_baked_up_vectors() end

---@param to_point Vector3
---@return Vector3
function Curve3D.get_closest_point(to_point) end

---@param to_point Vector3
---@return number
function Curve3D.get_closest_offset(to_point) end

---@param max_stages integer?  # Default = 5
---@param tolerance_degrees number?  # Default = 4
---@return PackedVector3Array
function Curve3D.tessellate(max_stages, tolerance_degrees) end

---@param max_stages integer?  # Default = 5
---@param tolerance_length number?  # Default = 0.2
---@return PackedVector3Array
function Curve3D.tessellate_even_length(max_stages, tolerance_length) end
