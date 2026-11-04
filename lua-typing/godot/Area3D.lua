---@meta _
-- Generated API for game version 0.10.0

---@class Area3D : CollisionObject3D
---@field monitoring boolean
---@field monitorable boolean
---@field priority integer
---@field gravity_space_override integer
---@field gravity_point boolean
---@field gravity_point_unit_distance number
---@field gravity_point_center Vector3
---@field gravity_direction Vector3
---@field gravity number
---@field linear_damp_space_override integer
---@field linear_damp number
---@field angular_damp_space_override integer
---@field angular_damp number
---@field wind_force_magnitude number
---@field wind_attenuation_factor number
---@field wind_source_path string
---@field audio_bus_override boolean
---@field audio_bus_name string
---@field reverb_bus_enabled boolean
---@field reverb_bus_name string
---@field reverb_bus_amount number
---@field reverb_bus_uniformity number
local Area3D = {}

---@param space_override_mode Area3D.SpaceOverride
function Area3D.set_gravity_space_override_mode(space_override_mode) end

---@return Area3D.SpaceOverride
function Area3D.get_gravity_space_override_mode() end

---@param enable boolean
function Area3D.set_gravity_is_point(enable) end

---@return boolean
function Area3D.is_gravity_a_point() end

---@param distance_scale number
function Area3D.set_gravity_point_unit_distance(distance_scale) end

---@return number
function Area3D.get_gravity_point_unit_distance() end

---@param center Vector3
function Area3D.set_gravity_point_center(center) end

---@return Vector3
function Area3D.get_gravity_point_center() end

---@param direction Vector3
function Area3D.set_gravity_direction(direction) end

---@return Vector3
function Area3D.get_gravity_direction() end

---@param gravity number
function Area3D.set_gravity(gravity) end

---@return number
function Area3D.get_gravity() end

---@param space_override_mode Area3D.SpaceOverride
function Area3D.set_linear_damp_space_override_mode(space_override_mode) end

---@return Area3D.SpaceOverride
function Area3D.get_linear_damp_space_override_mode() end

---@param space_override_mode Area3D.SpaceOverride
function Area3D.set_angular_damp_space_override_mode(space_override_mode) end

---@return Area3D.SpaceOverride
function Area3D.get_angular_damp_space_override_mode() end

---@param angular_damp number
function Area3D.set_angular_damp(angular_damp) end

---@return number
function Area3D.get_angular_damp() end

---@param linear_damp number
function Area3D.set_linear_damp(linear_damp) end

---@return number
function Area3D.get_linear_damp() end

---@param priority integer
function Area3D.set_priority(priority) end

---@return integer
function Area3D.get_priority() end

---@param wind_force_magnitude number
function Area3D.set_wind_force_magnitude(wind_force_magnitude) end

---@return number
function Area3D.get_wind_force_magnitude() end

---@param wind_attenuation_factor number
function Area3D.set_wind_attenuation_factor(wind_attenuation_factor) end

---@return number
function Area3D.get_wind_attenuation_factor() end

---@param wind_source_path string
function Area3D.set_wind_source_path(wind_source_path) end

---@return string
function Area3D.get_wind_source_path() end

---@param enable boolean
function Area3D.set_monitorable(enable) end

---@return boolean
function Area3D.is_monitorable() end

---@param enable boolean
function Area3D.set_monitoring(enable) end

---@return boolean
function Area3D.is_monitoring() end

---@return Array<Node3D>
function Area3D.get_overlapping_bodies() end

---@return Array<Area3D>
function Area3D.get_overlapping_areas() end

---@return boolean
function Area3D.has_overlapping_bodies() end

---@return boolean
function Area3D.has_overlapping_areas() end

---@param body Node
---@return boolean
function Area3D.overlaps_body(body) end

---@param area Node
---@return boolean
function Area3D.overlaps_area(area) end

---@param enable boolean
function Area3D.set_audio_bus_override(enable) end

---@return boolean
function Area3D.is_overriding_audio_bus() end

---@param name string
function Area3D.set_audio_bus_name(name) end

---@return string
function Area3D.get_audio_bus_name() end

---@param enable boolean
function Area3D.set_use_reverb_bus(enable) end

---@return boolean
function Area3D.is_using_reverb_bus() end

---@param name string
function Area3D.set_reverb_bus_name(name) end

---@return string
function Area3D.get_reverb_bus_name() end

---@param amount number
function Area3D.set_reverb_amount(amount) end

---@return number
function Area3D.get_reverb_amount() end

---@param amount number
function Area3D.set_reverb_uniformity(amount) end

---@return number
function Area3D.get_reverb_uniformity() end
