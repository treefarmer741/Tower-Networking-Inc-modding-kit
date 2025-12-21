---@meta _
-- Generated API for game version 0.9.1

---@class GPUParticles2D : Node2D
---@field emitting boolean
---@field amount integer
---@field amount_ratio number
---@field sub_emitter string
---@field texture Texture2D
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
---@field visibility_rect Rect2
---@field local_coords boolean
---@field draw_order integer
---@field trail_enabled boolean
---@field trail_lifetime number
---@field trail_sections integer
---@field trail_section_subdivisions integer
---@field process_material ParticleProcessMaterial,ShaderMaterial
local GPUParticles2D = {}

---@param emitting boolean
function GPUParticles2D.set_emitting(emitting) end

---@param amount integer
function GPUParticles2D.set_amount(amount) end

---@param secs number
function GPUParticles2D.set_lifetime(secs) end

---@param secs boolean
function GPUParticles2D.set_one_shot(secs) end

---@param secs number
function GPUParticles2D.set_pre_process_time(secs) end

---@param ratio number
function GPUParticles2D.set_explosiveness_ratio(ratio) end

---@param ratio number
function GPUParticles2D.set_randomness_ratio(ratio) end

---@param visibility_rect Rect2
function GPUParticles2D.set_visibility_rect(visibility_rect) end

---@param enable boolean
function GPUParticles2D.set_use_local_coordinates(enable) end

---@param fps integer
function GPUParticles2D.set_fixed_fps(fps) end

---@param enable boolean
function GPUParticles2D.set_fractional_delta(enable) end

---@param enable boolean
function GPUParticles2D.set_interpolate(enable) end

---@param material Material
function GPUParticles2D.set_process_material(material) end

---@param scale number
function GPUParticles2D.set_speed_scale(scale) end

---@param size number
function GPUParticles2D.set_collision_base_size(size) end

---@param interp number
function GPUParticles2D.set_interp_to_end(interp) end

---@param process_time number
function GPUParticles2D.request_particles_process(process_time) end

---@return boolean
function GPUParticles2D.is_emitting() end

---@return integer
function GPUParticles2D.get_amount() end

---@return number
function GPUParticles2D.get_lifetime() end

---@return boolean
function GPUParticles2D.get_one_shot() end

---@return number
function GPUParticles2D.get_pre_process_time() end

---@return number
function GPUParticles2D.get_explosiveness_ratio() end

---@return number
function GPUParticles2D.get_randomness_ratio() end

---@return Rect2
function GPUParticles2D.get_visibility_rect() end

---@return boolean
function GPUParticles2D.get_use_local_coordinates() end

---@return integer
function GPUParticles2D.get_fixed_fps() end

---@return boolean
function GPUParticles2D.get_fractional_delta() end

---@return boolean
function GPUParticles2D.get_interpolate() end

---@return Material
function GPUParticles2D.get_process_material() end

---@return number
function GPUParticles2D.get_speed_scale() end

---@return number
function GPUParticles2D.get_collision_base_size() end

---@return number
function GPUParticles2D.get_interp_to_end() end

---@param order GPUParticles2D.DrawOrder
function GPUParticles2D.set_draw_order(order) end

---@return GPUParticles2D.DrawOrder
function GPUParticles2D.get_draw_order() end

---@param texture Texture2D
function GPUParticles2D.set_texture(texture) end

---@return Texture2D
function GPUParticles2D.get_texture() end

---@return Rect2
function GPUParticles2D.capture_rect() end

---@param keep_seed boolean?  # Default = false
function GPUParticles2D.restart(keep_seed) end

---@param path string
function GPUParticles2D.set_sub_emitter(path) end

---@return string
function GPUParticles2D.get_sub_emitter() end

---@param xform Transform2D
---@param velocity Vector2
---@param color Color
---@param custom Color
---@param flags integer
function GPUParticles2D.emit_particle(xform, velocity, color, custom, flags) end

---@param enabled boolean
function GPUParticles2D.set_trail_enabled(enabled) end

---@param secs number
function GPUParticles2D.set_trail_lifetime(secs) end

---@return boolean
function GPUParticles2D.is_trail_enabled() end

---@return number
function GPUParticles2D.get_trail_lifetime() end

---@param sections integer
function GPUParticles2D.set_trail_sections(sections) end

---@return integer
function GPUParticles2D.get_trail_sections() end

---@param subdivisions integer
function GPUParticles2D.set_trail_section_subdivisions(subdivisions) end

---@return integer
function GPUParticles2D.get_trail_section_subdivisions() end

---@param particles Node
function GPUParticles2D.convert_from_particles(particles) end

---@param ratio number
function GPUParticles2D.set_amount_ratio(ratio) end

---@return number
function GPUParticles2D.get_amount_ratio() end

---@param use_fixed_seed boolean
function GPUParticles2D.set_use_fixed_seed(use_fixed_seed) end

---@return boolean
function GPUParticles2D.get_use_fixed_seed() end

---@param seed integer
function GPUParticles2D.set_seed(seed) end

---@return integer
function GPUParticles2D.get_seed() end
