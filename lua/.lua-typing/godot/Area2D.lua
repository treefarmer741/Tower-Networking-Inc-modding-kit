---@meta _
-- Generated API for game version 0.10.0

---@class Area2D : CollisionObject2D
---@field monitoring boolean
---@field monitorable boolean
---@field priority integer
---@field gravity_space_override integer
---@field gravity_point boolean
---@field gravity_point_unit_distance number
---@field gravity_point_center Vector2
---@field gravity_direction Vector2
---@field gravity number
---@field linear_damp_space_override integer
---@field linear_damp number
---@field angular_damp_space_override integer
---@field angular_damp number
---@field audio_bus_override boolean
---@field audio_bus_name string
local Area2D = {}

---@param space_override_mode Area2D.SpaceOverride
function Area2D.set_gravity_space_override_mode(space_override_mode) end

---@return Area2D.SpaceOverride
function Area2D.get_gravity_space_override_mode() end

---@param enable boolean
function Area2D.set_gravity_is_point(enable) end

---@return boolean
function Area2D.is_gravity_a_point() end

---@param distance_scale number
function Area2D.set_gravity_point_unit_distance(distance_scale) end

---@return number
function Area2D.get_gravity_point_unit_distance() end

---@param center Vector2
function Area2D.set_gravity_point_center(center) end

---@return Vector2
function Area2D.get_gravity_point_center() end

---@param direction Vector2
function Area2D.set_gravity_direction(direction) end

---@return Vector2
function Area2D.get_gravity_direction() end

---@param gravity number
function Area2D.set_gravity(gravity) end

---@return number
function Area2D.get_gravity() end

---@param space_override_mode Area2D.SpaceOverride
function Area2D.set_linear_damp_space_override_mode(space_override_mode) end

---@return Area2D.SpaceOverride
function Area2D.get_linear_damp_space_override_mode() end

---@param space_override_mode Area2D.SpaceOverride
function Area2D.set_angular_damp_space_override_mode(space_override_mode) end

---@return Area2D.SpaceOverride
function Area2D.get_angular_damp_space_override_mode() end

---@param linear_damp number
function Area2D.set_linear_damp(linear_damp) end

---@return number
function Area2D.get_linear_damp() end

---@param angular_damp number
function Area2D.set_angular_damp(angular_damp) end

---@return number
function Area2D.get_angular_damp() end

---@param priority integer
function Area2D.set_priority(priority) end

---@return integer
function Area2D.get_priority() end

---@param enable boolean
function Area2D.set_monitoring(enable) end

---@return boolean
function Area2D.is_monitoring() end

---@param enable boolean
function Area2D.set_monitorable(enable) end

---@return boolean
function Area2D.is_monitorable() end

---@return Array<Node2D>
function Area2D.get_overlapping_bodies() end

---@return Array<Area2D>
function Area2D.get_overlapping_areas() end

---@return boolean
function Area2D.has_overlapping_bodies() end

---@return boolean
function Area2D.has_overlapping_areas() end

---@param body Node
---@return boolean
function Area2D.overlaps_body(body) end

---@param area Node
---@return boolean
function Area2D.overlaps_area(area) end

---@param name string
function Area2D.set_audio_bus_name(name) end

---@return string
function Area2D.get_audio_bus_name() end

---@param enable boolean
function Area2D.set_audio_bus_override(enable) end

---@return boolean
function Area2D.is_overriding_audio_bus() end
