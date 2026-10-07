---@meta _
-- Generated API for game version 0.10.0

---@class GPUParticles3D : GeometryInstance3D
---@field emitting boolean
---@field amount integer
---@field amount_ratio number
---@field sub_emitter string
---@field lifetime number
---@field interp_to_end number
---@field one_shot boolean
---@field preprocess number
---@field speed_scale number
---@field explosiveness number
---@field randomness number
---@field use_fixed_seed boolean
---@field seed integer
---@field fixed_fps integer
---@field interpolate boolean
---@field fract_delta boolean
---@field collision_base_size number
---@field visibility_aabb AABB
---@field local_coords boolean
---@field draw_order integer
---@field transform_align integer
---@field trail_enabled boolean
---@field trail_lifetime number
---@field process_material ParticleProcessMaterial,ShaderMaterial
---@field draw_passes integer
---@field draw_pass_1 Mesh
---@field draw_pass_2 Mesh
---@field draw_pass_3 Mesh
---@field draw_pass_4 Mesh
---@field draw_skin Skin
local GPUParticles3D = {}

---@param emitting boolean
function GPUParticles3D.set_emitting(emitting) end

---@param amount integer
function GPUParticles3D.set_amount(amount) end

---@param secs number
function GPUParticles3D.set_lifetime(secs) end

---@param enable boolean
function GPUParticles3D.set_one_shot(enable) end

---@param secs number
function GPUParticles3D.set_pre_process_time(secs) end

---@param ratio number
function GPUParticles3D.set_explosiveness_ratio(ratio) end

---@param ratio number
function GPUParticles3D.set_randomness_ratio(ratio) end

---@param aabb AABB
function GPUParticles3D.set_visibility_aabb(aabb) end

---@param enable boolean
function GPUParticles3D.set_use_local_coordinates(enable) end

---@param fps integer
function GPUParticles3D.set_fixed_fps(fps) end

---@param enable boolean
function GPUParticles3D.set_fractional_delta(enable) end

---@param enable boolean
function GPUParticles3D.set_interpolate(enable) end

---@param material Material
function GPUParticles3D.set_process_material(material) end

---@param scale number
function GPUParticles3D.set_speed_scale(scale) end

---@param size number
function GPUParticles3D.set_collision_base_size(size) end

---@param interp number
function GPUParticles3D.set_interp_to_end(interp) end

---@return boolean
function GPUParticles3D.is_emitting() end

---@return integer
function GPUParticles3D.get_amount() end

---@return number
function GPUParticles3D.get_lifetime() end

---@return boolean
function GPUParticles3D.get_one_shot() end

---@return number
function GPUParticles3D.get_pre_process_time() end

---@return number
function GPUParticles3D.get_explosiveness_ratio() end

---@return number
function GPUParticles3D.get_randomness_ratio() end

---@return AABB
function GPUParticles3D.get_visibility_aabb() end

---@return boolean
function GPUParticles3D.get_use_local_coordinates() end

---@return integer
function GPUParticles3D.get_fixed_fps() end

---@return boolean
function GPUParticles3D.get_fractional_delta() end

---@return boolean
function GPUParticles3D.get_interpolate() end

---@return Material
function GPUParticles3D.get_process_material() end

---@return number
function GPUParticles3D.get_speed_scale() end

---@return number
function GPUParticles3D.get_collision_base_size() end

---@return number
function GPUParticles3D.get_interp_to_end() end

---@param use_fixed_seed boolean
function GPUParticles3D.set_use_fixed_seed(use_fixed_seed) end

---@return boolean
function GPUParticles3D.get_use_fixed_seed() end

---@param seed integer
function GPUParticles3D.set_seed(seed) end

---@return integer
function GPUParticles3D.get_seed() end

---@param order GPUParticles3D.DrawOrder
function GPUParticles3D.set_draw_order(order) end

---@return GPUParticles3D.DrawOrder
function GPUParticles3D.get_draw_order() end

---@param passes integer
function GPUParticles3D.set_draw_passes(passes) end

---@param pass integer
---@param mesh Mesh
function GPUParticles3D.set_draw_pass_mesh(pass, mesh) end

---@return integer
function GPUParticles3D.get_draw_passes() end

---@param pass integer
---@return Mesh
function GPUParticles3D.get_draw_pass_mesh(pass) end

---@param skin Skin
function GPUParticles3D.set_skin(skin) end

---@return Skin
function GPUParticles3D.get_skin() end

---@param keep_seed boolean?  # Default = false
function GPUParticles3D.restart(keep_seed) end

---@return AABB
function GPUParticles3D.capture_aabb() end

---@param path string
function GPUParticles3D.set_sub_emitter(path) end

---@return string
function GPUParticles3D.get_sub_emitter() end

---@param xform Transform3D
---@param velocity Vector3
---@param color Color
---@param custom Color
---@param flags integer
function GPUParticles3D.emit_particle(xform, velocity, color, custom, flags) end

---@param enabled boolean
function GPUParticles3D.set_trail_enabled(enabled) end

---@param secs number
function GPUParticles3D.set_trail_lifetime(secs) end

---@return boolean
function GPUParticles3D.is_trail_enabled() end

---@return number
function GPUParticles3D.get_trail_lifetime() end

---@param align GPUParticles3D.TransformAlign
function GPUParticles3D.set_transform_align(align) end

---@return GPUParticles3D.TransformAlign
function GPUParticles3D.get_transform_align() end

---@param particles Node
function GPUParticles3D.convert_from_particles(particles) end

---@param ratio number
function GPUParticles3D.set_amount_ratio(ratio) end

---@return number
function GPUParticles3D.get_amount_ratio() end

---@param process_time number
function GPUParticles3D.request_particles_process(process_time) end
