---@meta _
-- Generated API for game version 0.9.1

---@class CPUParticles3D : GeometryInstance3D
---@field emitting boolean
---@field amount integer
---@field lifetime number
---@field one_shot boolean
---@field preprocess number
---@field speed_scale number
---@field explosiveness number
---@field randomness number
---@field use_fixed_seed boolean
---@field seed integer
---@field lifetime_randomness number
---@field fixed_fps integer
---@field fract_delta boolean
---@field visibility_aabb AABB
---@field local_coords boolean
---@field draw_order integer
---@field mesh Mesh
---@field emission_shape integer
---@field emission_sphere_radius number
---@field emission_box_extents Vector3
---@field emission_points PackedVector3Array
---@field emission_normals PackedVector3Array
---@field emission_colors PackedColorArray
---@field emission_ring_axis Vector3
---@field emission_ring_height number
---@field emission_ring_radius number
---@field emission_ring_inner_radius number
---@field emission_ring_cone_angle number
---@field particle_flag_align_y boolean
---@field particle_flag_rotate_y boolean
---@field particle_flag_disable_z boolean
---@field direction Vector3
---@field spread number
---@field flatness number
---@field gravity Vector3
---@field initial_velocity_min number
---@field initial_velocity_max number
---@field angular_velocity_min number
---@field angular_velocity_max number
---@field angular_velocity_curve Curve
---@field orbit_velocity_min number
---@field orbit_velocity_max number
---@field orbit_velocity_curve Curve
---@field linear_accel_min number
---@field linear_accel_max number
---@field linear_accel_curve Curve
---@field radial_accel_min number
---@field radial_accel_max number
---@field radial_accel_curve Curve
---@field tangential_accel_min number
---@field tangential_accel_max number
---@field tangential_accel_curve Curve
---@field damping_min number
---@field damping_max number
---@field damping_curve Curve
---@field angle_min number
---@field angle_max number
---@field angle_curve Curve
---@field scale_amount_min number
---@field scale_amount_max number
---@field scale_amount_curve Curve
---@field split_scale boolean
---@field scale_curve_x Curve
---@field scale_curve_y Curve
---@field scale_curve_z Curve
---@field color Color
---@field color_ramp Gradient
---@field color_initial_ramp Gradient
---@field hue_variation_min number
---@field hue_variation_max number
---@field hue_variation_curve Curve
---@field anim_speed_min number
---@field anim_speed_max number
---@field anim_speed_curve Curve
---@field anim_offset_min number
---@field anim_offset_max number
---@field anim_offset_curve Curve
local CPUParticles3D = {}

---@param emitting boolean
function CPUParticles3D.set_emitting(emitting) end

---@param amount integer
function CPUParticles3D.set_amount(amount) end

---@param secs number
function CPUParticles3D.set_lifetime(secs) end

---@param enable boolean
function CPUParticles3D.set_one_shot(enable) end

---@param secs number
function CPUParticles3D.set_pre_process_time(secs) end

---@param ratio number
function CPUParticles3D.set_explosiveness_ratio(ratio) end

---@param ratio number
function CPUParticles3D.set_randomness_ratio(ratio) end

---@param aabb AABB
function CPUParticles3D.set_visibility_aabb(aabb) end

---@param random number
function CPUParticles3D.set_lifetime_randomness(random) end

---@param enable boolean
function CPUParticles3D.set_use_local_coordinates(enable) end

---@param fps integer
function CPUParticles3D.set_fixed_fps(fps) end

---@param enable boolean
function CPUParticles3D.set_fractional_delta(enable) end

---@param scale number
function CPUParticles3D.set_speed_scale(scale) end

---@return boolean
function CPUParticles3D.is_emitting() end

---@return integer
function CPUParticles3D.get_amount() end

---@return number
function CPUParticles3D.get_lifetime() end

---@return boolean
function CPUParticles3D.get_one_shot() end

---@return number
function CPUParticles3D.get_pre_process_time() end

---@return number
function CPUParticles3D.get_explosiveness_ratio() end

---@return number
function CPUParticles3D.get_randomness_ratio() end

---@return AABB
function CPUParticles3D.get_visibility_aabb() end

---@return number
function CPUParticles3D.get_lifetime_randomness() end

---@return boolean
function CPUParticles3D.get_use_local_coordinates() end

---@return integer
function CPUParticles3D.get_fixed_fps() end

---@return boolean
function CPUParticles3D.get_fractional_delta() end

---@return number
function CPUParticles3D.get_speed_scale() end

---@param order CPUParticles3D.DrawOrder
function CPUParticles3D.set_draw_order(order) end

---@return CPUParticles3D.DrawOrder
function CPUParticles3D.get_draw_order() end

---@param mesh Mesh
function CPUParticles3D.set_mesh(mesh) end

---@return Mesh
function CPUParticles3D.get_mesh() end

---@param use_fixed_seed boolean
function CPUParticles3D.set_use_fixed_seed(use_fixed_seed) end

---@return boolean
function CPUParticles3D.get_use_fixed_seed() end

---@param seed integer
function CPUParticles3D.set_seed(seed) end

---@return integer
function CPUParticles3D.get_seed() end

---@param keep_seed boolean?  # Default = false
function CPUParticles3D.restart(keep_seed) end

---@param process_time number
function CPUParticles3D.request_particles_process(process_time) end

---@return AABB
function CPUParticles3D.capture_aabb() end

---@param direction Vector3
function CPUParticles3D.set_direction(direction) end

---@return Vector3
function CPUParticles3D.get_direction() end

---@param degrees number
function CPUParticles3D.set_spread(degrees) end

---@return number
function CPUParticles3D.get_spread() end

---@param amount number
function CPUParticles3D.set_flatness(amount) end

---@return number
function CPUParticles3D.get_flatness() end

---@param param CPUParticles3D.Parameter
---@param value number
function CPUParticles3D.set_param_min(param, value) end

---@param param CPUParticles3D.Parameter
---@return number
function CPUParticles3D.get_param_min(param) end

---@param param CPUParticles3D.Parameter
---@param value number
function CPUParticles3D.set_param_max(param, value) end

---@param param CPUParticles3D.Parameter
---@return number
function CPUParticles3D.get_param_max(param) end

---@param param CPUParticles3D.Parameter
---@param curve Curve
function CPUParticles3D.set_param_curve(param, curve) end

---@param param CPUParticles3D.Parameter
---@return Curve
function CPUParticles3D.get_param_curve(param) end

---@param color Color
function CPUParticles3D.set_color(color) end

---@return Color
function CPUParticles3D.get_color() end

---@param ramp Gradient
function CPUParticles3D.set_color_ramp(ramp) end

---@return Gradient
function CPUParticles3D.get_color_ramp() end

---@param ramp Gradient
function CPUParticles3D.set_color_initial_ramp(ramp) end

---@return Gradient
function CPUParticles3D.get_color_initial_ramp() end

---@param particle_flag CPUParticles3D.ParticleFlags
---@param enable boolean
function CPUParticles3D.set_particle_flag(particle_flag, enable) end

---@param particle_flag CPUParticles3D.ParticleFlags
---@return boolean
function CPUParticles3D.get_particle_flag(particle_flag) end

---@param shape CPUParticles3D.EmissionShape
function CPUParticles3D.set_emission_shape(shape) end

---@return CPUParticles3D.EmissionShape
function CPUParticles3D.get_emission_shape() end

---@param radius number
function CPUParticles3D.set_emission_sphere_radius(radius) end

---@return number
function CPUParticles3D.get_emission_sphere_radius() end

---@param extents Vector3
function CPUParticles3D.set_emission_box_extents(extents) end

---@return Vector3
function CPUParticles3D.get_emission_box_extents() end

---@param array PackedVector3Array
function CPUParticles3D.set_emission_points(array) end

---@return PackedVector3Array
function CPUParticles3D.get_emission_points() end

---@param array PackedVector3Array
function CPUParticles3D.set_emission_normals(array) end

---@return PackedVector3Array
function CPUParticles3D.get_emission_normals() end

---@param array PackedColorArray
function CPUParticles3D.set_emission_colors(array) end

---@return PackedColorArray
function CPUParticles3D.get_emission_colors() end

---@param axis Vector3
function CPUParticles3D.set_emission_ring_axis(axis) end

---@return Vector3
function CPUParticles3D.get_emission_ring_axis() end

---@param height number
function CPUParticles3D.set_emission_ring_height(height) end

---@return number
function CPUParticles3D.get_emission_ring_height() end

---@param radius number
function CPUParticles3D.set_emission_ring_radius(radius) end

---@return number
function CPUParticles3D.get_emission_ring_radius() end

---@param inner_radius number
function CPUParticles3D.set_emission_ring_inner_radius(inner_radius) end

---@return number
function CPUParticles3D.get_emission_ring_inner_radius() end

---@param cone_angle number
function CPUParticles3D.set_emission_ring_cone_angle(cone_angle) end

---@return number
function CPUParticles3D.get_emission_ring_cone_angle() end

---@return Vector3
function CPUParticles3D.get_gravity() end

---@param accel_vec Vector3
function CPUParticles3D.set_gravity(accel_vec) end

---@return boolean
function CPUParticles3D.get_split_scale() end

---@param split_scale boolean
function CPUParticles3D.set_split_scale(split_scale) end

---@return Curve
function CPUParticles3D.get_scale_curve_x() end

---@param scale_curve Curve
function CPUParticles3D.set_scale_curve_x(scale_curve) end

---@return Curve
function CPUParticles3D.get_scale_curve_y() end

---@param scale_curve Curve
function CPUParticles3D.set_scale_curve_y(scale_curve) end

---@return Curve
function CPUParticles3D.get_scale_curve_z() end

---@param scale_curve Curve
function CPUParticles3D.set_scale_curve_z(scale_curve) end

---@param particles Node
function CPUParticles3D.convert_from_particles(particles) end
