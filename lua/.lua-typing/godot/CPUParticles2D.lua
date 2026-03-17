---@meta _
-- Generated API for game version 0.10.0

---@class CPUParticles2D : Node2D
---@field emitting boolean
---@field amount integer
---@field texture Texture2D
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
---@field local_coords boolean
---@field draw_order integer
---@field emission_shape integer
---@field emission_sphere_radius number
---@field emission_rect_extents Vector2
---@field emission_points PackedVector2Array
---@field emission_normals PackedVector2Array
---@field emission_colors PackedColorArray
---@field particle_flag_align_y boolean
---@field direction Vector2
---@field spread number
---@field gravity Vector2
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
local CPUParticles2D = {}

---@param emitting boolean
function CPUParticles2D.set_emitting(emitting) end

---@param amount integer
function CPUParticles2D.set_amount(amount) end

---@param secs number
function CPUParticles2D.set_lifetime(secs) end

---@param enable boolean
function CPUParticles2D.set_one_shot(enable) end

---@param secs number
function CPUParticles2D.set_pre_process_time(secs) end

---@param ratio number
function CPUParticles2D.set_explosiveness_ratio(ratio) end

---@param ratio number
function CPUParticles2D.set_randomness_ratio(ratio) end

---@param random number
function CPUParticles2D.set_lifetime_randomness(random) end

---@param enable boolean
function CPUParticles2D.set_use_local_coordinates(enable) end

---@param fps integer
function CPUParticles2D.set_fixed_fps(fps) end

---@param enable boolean
function CPUParticles2D.set_fractional_delta(enable) end

---@param scale number
function CPUParticles2D.set_speed_scale(scale) end

---@param process_time number
function CPUParticles2D.request_particles_process(process_time) end

---@return boolean
function CPUParticles2D.is_emitting() end

---@return integer
function CPUParticles2D.get_amount() end

---@return number
function CPUParticles2D.get_lifetime() end

---@return boolean
function CPUParticles2D.get_one_shot() end

---@return number
function CPUParticles2D.get_pre_process_time() end

---@return number
function CPUParticles2D.get_explosiveness_ratio() end

---@return number
function CPUParticles2D.get_randomness_ratio() end

---@return number
function CPUParticles2D.get_lifetime_randomness() end

---@return boolean
function CPUParticles2D.get_use_local_coordinates() end

---@return integer
function CPUParticles2D.get_fixed_fps() end

---@return boolean
function CPUParticles2D.get_fractional_delta() end

---@return number
function CPUParticles2D.get_speed_scale() end

---@param use_fixed_seed boolean
function CPUParticles2D.set_use_fixed_seed(use_fixed_seed) end

---@return boolean
function CPUParticles2D.get_use_fixed_seed() end

---@param seed integer
function CPUParticles2D.set_seed(seed) end

---@return integer
function CPUParticles2D.get_seed() end

---@param order CPUParticles2D.DrawOrder
function CPUParticles2D.set_draw_order(order) end

---@return CPUParticles2D.DrawOrder
function CPUParticles2D.get_draw_order() end

---@param texture Texture2D
function CPUParticles2D.set_texture(texture) end

---@return Texture2D
function CPUParticles2D.get_texture() end

---@param keep_seed boolean?  # Default = false
function CPUParticles2D.restart(keep_seed) end

---@param direction Vector2
function CPUParticles2D.set_direction(direction) end

---@return Vector2
function CPUParticles2D.get_direction() end

---@param spread number
function CPUParticles2D.set_spread(spread) end

---@return number
function CPUParticles2D.get_spread() end

---@param param CPUParticles2D.Parameter
---@param value number
function CPUParticles2D.set_param_min(param, value) end

---@param param CPUParticles2D.Parameter
---@return number
function CPUParticles2D.get_param_min(param) end

---@param param CPUParticles2D.Parameter
---@param value number
function CPUParticles2D.set_param_max(param, value) end

---@param param CPUParticles2D.Parameter
---@return number
function CPUParticles2D.get_param_max(param) end

---@param param CPUParticles2D.Parameter
---@param curve Curve
function CPUParticles2D.set_param_curve(param, curve) end

---@param param CPUParticles2D.Parameter
---@return Curve
function CPUParticles2D.get_param_curve(param) end

---@param color Color
function CPUParticles2D.set_color(color) end

---@return Color
function CPUParticles2D.get_color() end

---@param ramp Gradient
function CPUParticles2D.set_color_ramp(ramp) end

---@return Gradient
function CPUParticles2D.get_color_ramp() end

---@param ramp Gradient
function CPUParticles2D.set_color_initial_ramp(ramp) end

---@return Gradient
function CPUParticles2D.get_color_initial_ramp() end

---@param particle_flag CPUParticles2D.ParticleFlags
---@param enable boolean
function CPUParticles2D.set_particle_flag(particle_flag, enable) end

---@param particle_flag CPUParticles2D.ParticleFlags
---@return boolean
function CPUParticles2D.get_particle_flag(particle_flag) end

---@param shape CPUParticles2D.EmissionShape
function CPUParticles2D.set_emission_shape(shape) end

---@return CPUParticles2D.EmissionShape
function CPUParticles2D.get_emission_shape() end

---@param radius number
function CPUParticles2D.set_emission_sphere_radius(radius) end

---@return number
function CPUParticles2D.get_emission_sphere_radius() end

---@param extents Vector2
function CPUParticles2D.set_emission_rect_extents(extents) end

---@return Vector2
function CPUParticles2D.get_emission_rect_extents() end

---@param array PackedVector2Array
function CPUParticles2D.set_emission_points(array) end

---@return PackedVector2Array
function CPUParticles2D.get_emission_points() end

---@param array PackedVector2Array
function CPUParticles2D.set_emission_normals(array) end

---@return PackedVector2Array
function CPUParticles2D.get_emission_normals() end

---@param array PackedColorArray
function CPUParticles2D.set_emission_colors(array) end

---@return PackedColorArray
function CPUParticles2D.get_emission_colors() end

---@return Vector2
function CPUParticles2D.get_gravity() end

---@param accel_vec Vector2
function CPUParticles2D.set_gravity(accel_vec) end

---@return boolean
function CPUParticles2D.get_split_scale() end

---@param split_scale boolean
function CPUParticles2D.set_split_scale(split_scale) end

---@return Curve
function CPUParticles2D.get_scale_curve_x() end

---@param scale_curve Curve
function CPUParticles2D.set_scale_curve_x(scale_curve) end

---@return Curve
function CPUParticles2D.get_scale_curve_y() end

---@param scale_curve Curve
function CPUParticles2D.set_scale_curve_y(scale_curve) end

---@param particles Node
function CPUParticles2D.convert_from_particles(particles) end
