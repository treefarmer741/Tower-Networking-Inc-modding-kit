---@meta _
-- Generated API for game version 0.9.1

---@class Curve : Resource
---@field min_domain number
---@field max_domain number
---@field min_value number
---@field max_value number
---@field bake_resolution integer
---@field point_count Points,point_
local Curve = {}

---@return integer
function Curve.get_point_count() end

---@param count integer
function Curve.set_point_count(count) end

---@param position Vector2
---@param left_tangent number?  # Default = 0
---@param right_tangent number?  # Default = 0
---@param left_mode Curve.TangentMode?  # Default = 0
---@param right_mode Curve.TangentMode?  # Default = 0
---@return integer
function Curve.add_point(position, left_tangent, right_tangent, left_mode, right_mode) end

---@param index integer
function Curve.remove_point(index) end

function Curve.clear_points() end

---@param index integer
---@return Vector2
function Curve.get_point_position(index) end

---@param index integer
---@param y number
function Curve.set_point_value(index, y) end

---@param index integer
---@param offset number
---@return integer
function Curve.set_point_offset(index, offset) end

---@param offset number
---@return number
function Curve.sample(offset) end

---@param offset number
---@return number
function Curve.sample_baked(offset) end

---@param index integer
---@return number
function Curve.get_point_left_tangent(index) end

---@param index integer
---@return number
function Curve.get_point_right_tangent(index) end

---@param index integer
---@return Curve.TangentMode
function Curve.get_point_left_mode(index) end

---@param index integer
---@return Curve.TangentMode
function Curve.get_point_right_mode(index) end

---@param index integer
---@param tangent number
function Curve.set_point_left_tangent(index, tangent) end

---@param index integer
---@param tangent number
function Curve.set_point_right_tangent(index, tangent) end

---@param index integer
---@param mode Curve.TangentMode
function Curve.set_point_left_mode(index, mode) end

---@param index integer
---@param mode Curve.TangentMode
function Curve.set_point_right_mode(index, mode) end

---@return number
function Curve.get_min_value() end

---@param min number
function Curve.set_min_value(min) end

---@return number
function Curve.get_max_value() end

---@param max number
function Curve.set_max_value(max) end

---@return number
function Curve.get_value_range() end

---@return number
function Curve.get_min_domain() end

---@param min number
function Curve.set_min_domain(min) end

---@return number
function Curve.get_max_domain() end

---@param max number
function Curve.set_max_domain(max) end

---@return number
function Curve.get_domain_range() end

function Curve.clean_dupes() end

function Curve.bake() end

---@return integer
function Curve.get_bake_resolution() end

---@param resolution integer
function Curve.set_bake_resolution(resolution) end
