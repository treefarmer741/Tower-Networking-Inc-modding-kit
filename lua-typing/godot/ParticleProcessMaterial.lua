---@meta _
-- Generated API for game version 0.10.0

---@class ParticleProcessMaterial : Material
---@field lifetime_randomness number
---@field particle_flag_align_y boolean
---@field particle_flag_rotate_y boolean
---@field particle_flag_disable_z boolean
---@field particle_flag_damping_as_friction boolean
---@field emission_shape_offset Vector3
---@field emission_shape_scale Vector3
---@field emission_shape integer
---@field emission_sphere_radius number
---@field emission_box_extents Vector3
---@field emission_point_texture Texture2D
---@field emission_normal_texture Texture2D
---@field emission_color_texture Texture2D
---@field emission_point_count integer
---@field emission_ring_axis Vector3
---@field emission_ring_height number
---@field emission_ring_radius number
---@field emission_ring_inner_radius number
---@field emission_ring_cone_angle number
---@field angle Vector2
---@field angle_min number
---@field angle_max number
---@field angle_curve CurveTexture
---@field inherit_velocity_ratio number
---@field velocity_pivot Vector3
---@field direction Vector3
---@field spread number
---@field flatness number
---@field initial_velocity Vector2
---@field initial_velocity_min number
---@field initial_velocity_max number
---@field angular_velocity Vector2
---@field angular_velocity_min number
---@field angular_velocity_max number
---@field angular_velocity_curve CurveTexture
---@field directional_velocity Vector2
---@field directional_velocity_min number
---@field directional_velocity_max number
---@field directional_velocity_curve CurveXYZTexture
---@field orbit_velocity Vector2
---@field orbit_velocity_min number
---@field orbit_velocity_max number
---@field orbit_velocity_curve CurveTexture,CurveXYZTexture
---@field radial_velocity Vector2
---@field radial_velocity_min number
---@field radial_velocity_max number
---@field radial_velocity_curve CurveTexture
---@field velocity_limit_curve CurveTexture
---@field gravity Vector3
---@field linear_accel Vector2
---@field linear_accel_min number
---@field linear_accel_max number
---@field linear_accel_curve CurveTexture
---@field radial_accel Vector2
---@field radial_accel_min number
---@field radial_accel_max number
---@field radial_accel_curve CurveTexture
---@field tangential_accel Vector2
---@field tangential_accel_min number
---@field tangential_accel_max number
---@field tangential_accel_curve CurveTexture
---@field damping Vector2
---@field damping_min number
---@field damping_max number
---@field damping_curve CurveTexture
---@field attractor_interaction_enabled boolean
---@field scale Vector2
---@field scale_min number
---@field scale_max number
---@field scale_curve CurveTexture,CurveXYZTexture
---@field scale_over_velocity Vector2
---@field scale_over_velocity_min number
---@field scale_over_velocity_max number
---@field scale_over_velocity_curve CurveTexture,CurveXYZTexture
---@field color Color
---@field color_ramp GradientTexture1D
---@field color_initial_ramp GradientTexture1D
---@field alpha_curve CurveTexture
---@field emission_curve CurveTexture
---@field hue_variation Vector2
---@field hue_variation_min number
---@field hue_variation_max number
---@field hue_variation_curve CurveTexture
---@field anim_speed Vector2
---@field anim_speed_min number
---@field anim_speed_max number
---@field anim_speed_curve CurveTexture
---@field anim_offset Vector2
---@field anim_offset_min number
---@field anim_offset_max number
---@field anim_offset_curve CurveTexture
---@field turbulence_enabled boolean
---@field turbulence_noise_strength number
---@field turbulence_noise_scale number
---@field turbulence_noise_speed Vector3
---@field turbulence_noise_speed_random number
---@field turbulence_influence Vector2
---@field turbulence_influence_min number
---@field turbulence_influence_max number
---@field turbulence_initial_displacement Vector2
---@field turbulence_initial_displacement_min number
---@field turbulence_initial_displacement_max number
---@field turbulence_influence_over_life CurveTexture
---@field collision_mode integer
---@field collision_friction number
---@field collision_bounce number
---@field collision_use_scale boolean
---@field sub_emitter_mode integer
---@field sub_emitter_frequency number
---@field sub_emitter_amount_at_end integer
---@field sub_emitter_amount_at_collision integer
---@field sub_emitter_amount_at_start integer
---@field sub_emitter_keep_velocity boolean
local ParticleProcessMaterial = {}

---@param degrees Vector3
function ParticleProcessMaterial.set_direction(degrees) end

---@return Vector3
function ParticleProcessMaterial.get_direction() end

---@param ratio number
function ParticleProcessMaterial.set_inherit_velocity_ratio(ratio) end

---@return number
function ParticleProcessMaterial.get_inherit_velocity_ratio() end

---@param degrees number
function ParticleProcessMaterial.set_spread(degrees) end

---@return number
function ParticleProcessMaterial.get_spread() end

---@param amount number
function ParticleProcessMaterial.set_flatness(amount) end

---@return number
function ParticleProcessMaterial.get_flatness() end

---@param param ParticleProcessMaterial.Parameter
---@param value Vector2
function ParticleProcessMaterial.set_param(param, value) end

---@param param ParticleProcessMaterial.Parameter
---@return Vector2
function ParticleProcessMaterial.get_param(param) end

---@param param ParticleProcessMaterial.Parameter
---@param value number
function ParticleProcessMaterial.set_param_min(param, value) end

---@param param ParticleProcessMaterial.Parameter
---@return number
function ParticleProcessMaterial.get_param_min(param) end

---@param param ParticleProcessMaterial.Parameter
---@param value number
function ParticleProcessMaterial.set_param_max(param, value) end

---@param param ParticleProcessMaterial.Parameter
---@return number
function ParticleProcessMaterial.get_param_max(param) end

---@param param ParticleProcessMaterial.Parameter
---@param texture Texture2D
function ParticleProcessMaterial.set_param_texture(param, texture) end

---@param param ParticleProcessMaterial.Parameter
---@return Texture2D
function ParticleProcessMaterial.get_param_texture(param) end

---@param color Color
function ParticleProcessMaterial.set_color(color) end

---@return Color
function ParticleProcessMaterial.get_color() end

---@param ramp Texture2D
function ParticleProcessMaterial.set_color_ramp(ramp) end

---@return Texture2D
function ParticleProcessMaterial.get_color_ramp() end

---@param curve Texture2D
function ParticleProcessMaterial.set_alpha_curve(curve) end

---@return Texture2D
function ParticleProcessMaterial.get_alpha_curve() end

---@param curve Texture2D
function ParticleProcessMaterial.set_emission_curve(curve) end

---@return Texture2D
function ParticleProcessMaterial.get_emission_curve() end

---@param ramp Texture2D
function ParticleProcessMaterial.set_color_initial_ramp(ramp) end

---@return Texture2D
function ParticleProcessMaterial.get_color_initial_ramp() end

---@param curve Texture2D
function ParticleProcessMaterial.set_velocity_limit_curve(curve) end

---@return Texture2D
function ParticleProcessMaterial.get_velocity_limit_curve() end

---@param particle_flag ParticleProcessMaterial.ParticleFlags
---@param enable boolean
function ParticleProcessMaterial.set_particle_flag(particle_flag, enable) end

---@param particle_flag ParticleProcessMaterial.ParticleFlags
---@return boolean
function ParticleProcessMaterial.get_particle_flag(particle_flag) end

---@param pivot Vector3
function ParticleProcessMaterial.set_velocity_pivot(pivot) end

---@return Vector3
function ParticleProcessMaterial.get_velocity_pivot() end

---@param shape ParticleProcessMaterial.EmissionShape
function ParticleProcessMaterial.set_emission_shape(shape) end

---@return ParticleProcessMaterial.EmissionShape
function ParticleProcessMaterial.get_emission_shape() end

---@param radius number
function ParticleProcessMaterial.set_emission_sphere_radius(radius) end

---@return number
function ParticleProcessMaterial.get_emission_sphere_radius() end

---@param extents Vector3
function ParticleProcessMaterial.set_emission_box_extents(extents) end

---@return Vector3
function ParticleProcessMaterial.get_emission_box_extents() end

---@param texture Texture2D
function ParticleProcessMaterial.set_emission_point_texture(texture) end

---@return Texture2D
function ParticleProcessMaterial.get_emission_point_texture() end

---@param texture Texture2D
function ParticleProcessMaterial.set_emission_normal_texture(texture) end

---@return Texture2D
function ParticleProcessMaterial.get_emission_normal_texture() end

---@param texture Texture2D
function ParticleProcessMaterial.set_emission_color_texture(texture) end

---@return Texture2D
function ParticleProcessMaterial.get_emission_color_texture() end

---@param point_count integer
function ParticleProcessMaterial.set_emission_point_count(point_count) end

---@return integer
function ParticleProcessMaterial.get_emission_point_count() end

---@param axis Vector3
function ParticleProcessMaterial.set_emission_ring_axis(axis) end

---@return Vector3
function ParticleProcessMaterial.get_emission_ring_axis() end

---@param height number
function ParticleProcessMaterial.set_emission_ring_height(height) end

---@return number
function ParticleProcessMaterial.get_emission_ring_height() end

---@param radius number
function ParticleProcessMaterial.set_emission_ring_radius(radius) end

---@return number
function ParticleProcessMaterial.get_emission_ring_radius() end

---@param inner_radius number
function ParticleProcessMaterial.set_emission_ring_inner_radius(inner_radius) end

---@return number
function ParticleProcessMaterial.get_emission_ring_inner_radius() end

---@param cone_angle number
function ParticleProcessMaterial.set_emission_ring_cone_angle(cone_angle) end

---@return number
function ParticleProcessMaterial.get_emission_ring_cone_angle() end

---@param emission_shape_offset Vector3
function ParticleProcessMaterial.set_emission_shape_offset(emission_shape_offset) end

---@return Vector3
function ParticleProcessMaterial.get_emission_shape_offset() end

---@param emission_shape_scale Vector3
function ParticleProcessMaterial.set_emission_shape_scale(emission_shape_scale) end

---@return Vector3
function ParticleProcessMaterial.get_emission_shape_scale() end

---@return boolean
function ParticleProcessMaterial.get_turbulence_enabled() end

---@param turbulence_enabled boolean
function ParticleProcessMaterial.set_turbulence_enabled(turbulence_enabled) end

---@return number
function ParticleProcessMaterial.get_turbulence_noise_strength() end

---@param turbulence_noise_strength number
function ParticleProcessMaterial.set_turbulence_noise_strength(turbulence_noise_strength) end

---@return number
function ParticleProcessMaterial.get_turbulence_noise_scale() end

---@param turbulence_noise_scale number
function ParticleProcessMaterial.set_turbulence_noise_scale(turbulence_noise_scale) end

---@return number
function ParticleProcessMaterial.get_turbulence_noise_speed_random() end

---@param turbulence_noise_speed_random number
function ParticleProcessMaterial.set_turbulence_noise_speed_random(turbulence_noise_speed_random) end

---@return Vector3
function ParticleProcessMaterial.get_turbulence_noise_speed() end

---@param turbulence_noise_speed Vector3
function ParticleProcessMaterial.set_turbulence_noise_speed(turbulence_noise_speed) end

---@return Vector3
function ParticleProcessMaterial.get_gravity() end

---@param accel_vec Vector3
function ParticleProcessMaterial.set_gravity(accel_vec) end

---@param randomness number
function ParticleProcessMaterial.set_lifetime_randomness(randomness) end

---@return number
function ParticleProcessMaterial.get_lifetime_randomness() end

---@return ParticleProcessMaterial.SubEmitterMode
function ParticleProcessMaterial.get_sub_emitter_mode() end

---@param mode ParticleProcessMaterial.SubEmitterMode
function ParticleProcessMaterial.set_sub_emitter_mode(mode) end

---@return number
function ParticleProcessMaterial.get_sub_emitter_frequency() end

---@param hz number
function ParticleProcessMaterial.set_sub_emitter_frequency(hz) end

---@return integer
function ParticleProcessMaterial.get_sub_emitter_amount_at_end() end

---@param amount integer
function ParticleProcessMaterial.set_sub_emitter_amount_at_end(amount) end

---@return integer
function ParticleProcessMaterial.get_sub_emitter_amount_at_collision() end

---@param amount integer
function ParticleProcessMaterial.set_sub_emitter_amount_at_collision(amount) end

---@return integer
function ParticleProcessMaterial.get_sub_emitter_amount_at_start() end

---@param amount integer
function ParticleProcessMaterial.set_sub_emitter_amount_at_start(amount) end

---@return boolean
function ParticleProcessMaterial.get_sub_emitter_keep_velocity() end

---@param enable boolean
function ParticleProcessMaterial.set_sub_emitter_keep_velocity(enable) end

---@param enabled boolean
function ParticleProcessMaterial.set_attractor_interaction_enabled(enabled) end

---@return boolean
function ParticleProcessMaterial.is_attractor_interaction_enabled() end

---@param mode ParticleProcessMaterial.CollisionMode
function ParticleProcessMaterial.set_collision_mode(mode) end

---@return ParticleProcessMaterial.CollisionMode
function ParticleProcessMaterial.get_collision_mode() end

---@param radius boolean
function ParticleProcessMaterial.set_collision_use_scale(radius) end

---@return boolean
function ParticleProcessMaterial.is_collision_using_scale() end

---@param friction number
function ParticleProcessMaterial.set_collision_friction(friction) end

---@return number
function ParticleProcessMaterial.get_collision_friction() end

---@param bounce number
function ParticleProcessMaterial.set_collision_bounce(bounce) end

---@return number
function ParticleProcessMaterial.get_collision_bounce() end
