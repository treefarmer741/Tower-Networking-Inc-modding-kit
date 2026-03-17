---@meta _
-- Generated API for game version 0.10.0

---@class BaseMaterial3D : Material
---@field transparency integer
---@field alpha_scissor_threshold number
---@field alpha_hash_scale number
---@field alpha_antialiasing_mode integer
---@field alpha_antialiasing_edge number
---@field blend_mode integer
---@field cull_mode integer
---@field depth_draw_mode integer
---@field no_depth_test boolean
---@field depth_test integer
---@field shading_mode integer
---@field diffuse_mode integer
---@field specular_mode integer
---@field disable_ambient_light boolean
---@field disable_fog boolean
---@field disable_specular_occlusion boolean
---@field vertex_color_use_as_albedo boolean
---@field vertex_color_is_srgb boolean
---@field albedo_color Color
---@field albedo_texture Texture2D
---@field albedo_texture_force_srgb boolean
---@field albedo_texture_msdf boolean
---@field orm_texture Texture2D
---@field metallic number
---@field metallic_specular number
---@field metallic_texture Texture2D
---@field metallic_texture_channel integer
---@field roughness number
---@field roughness_texture Texture2D
---@field roughness_texture_channel integer
---@field emission_enabled boolean
---@field emission Color
---@field emission_energy_multiplier number
---@field emission_intensity number
---@field emission_operator integer
---@field emission_on_uv2 boolean
---@field emission_texture Texture2D
---@field normal_enabled boolean
---@field normal_scale number
---@field normal_texture Texture2D
---@field bent_normal_enabled boolean
---@field bent_normal_texture Texture2D
---@field rim_enabled boolean
---@field rim number
---@field rim_tint number
---@field rim_texture Texture2D
---@field clearcoat_enabled boolean
---@field clearcoat number
---@field clearcoat_roughness number
---@field clearcoat_texture Texture2D
---@field anisotropy_enabled boolean
---@field anisotropy number
---@field anisotropy_flowmap Texture2D
---@field ao_enabled boolean
---@field ao_light_affect number
---@field ao_texture Texture2D
---@field ao_on_uv2 boolean
---@field ao_texture_channel integer
---@field heightmap_enabled boolean
---@field heightmap_scale number
---@field heightmap_deep_parallax boolean
---@field heightmap_min_layers integer
---@field heightmap_max_layers integer
---@field heightmap_flip_tangent boolean
---@field heightmap_flip_binormal boolean
---@field heightmap_texture Texture2D
---@field heightmap_flip_texture boolean
---@field subsurf_scatter_enabled boolean
---@field subsurf_scatter_strength number
---@field subsurf_scatter_skin_mode boolean
---@field subsurf_scatter_texture Texture2D
---@field subsurf_scatter_transmittance_enabled boolean
---@field subsurf_scatter_transmittance_color Color
---@field subsurf_scatter_transmittance_texture Texture2D
---@field subsurf_scatter_transmittance_depth number
---@field subsurf_scatter_transmittance_boost number
---@field backlight_enabled boolean
---@field backlight Color
---@field backlight_texture Texture2D
---@field refraction_enabled boolean
---@field refraction_scale number
---@field refraction_texture Texture2D
---@field refraction_texture_channel integer
---@field detail_enabled boolean
---@field detail_mask Texture2D
---@field detail_blend_mode integer
---@field detail_uv_layer integer
---@field detail_albedo Texture2D
---@field detail_normal Texture2D
---@field uv1_scale Vector3
---@field uv1_offset Vector3
---@field uv1_triplanar boolean
---@field uv1_triplanar_sharpness number
---@field uv1_world_triplanar boolean
---@field uv2_scale Vector3
---@field uv2_offset Vector3
---@field uv2_triplanar boolean
---@field uv2_triplanar_sharpness number
---@field uv2_world_triplanar boolean
---@field texture_filter integer
---@field texture_repeat boolean
---@field disable_receive_shadows boolean
---@field shadow_to_opacity boolean
---@field billboard_mode integer
---@field billboard_keep_scale boolean
---@field particles_anim_h_frames integer
---@field particles_anim_v_frames integer
---@field particles_anim_loop boolean
---@field grow boolean
---@field grow_amount number
---@field fixed_size boolean
---@field use_point_size boolean
---@field point_size number
---@field use_particle_trails boolean
---@field use_z_clip_scale boolean
---@field z_clip_scale number
---@field use_fov_override boolean
---@field fov_override number
---@field proximity_fade_enabled boolean
---@field proximity_fade_distance number
---@field msdf_pixel_range number
---@field msdf_outline_size number
---@field distance_fade_mode integer
---@field distance_fade_min_distance number
---@field distance_fade_max_distance number
---@field stencil_mode integer
---@field stencil_flags integer
---@field stencil_compare integer
---@field stencil_reference integer
---@field stencil_color Color
---@field stencil_outline_thickness number
local BaseMaterial3D = {}

---@param albedo Color
function BaseMaterial3D.set_albedo(albedo) end

---@return Color
function BaseMaterial3D.get_albedo() end

---@param transparency BaseMaterial3D.Transparency
function BaseMaterial3D.set_transparency(transparency) end

---@return BaseMaterial3D.Transparency
function BaseMaterial3D.get_transparency() end

---@param alpha_aa BaseMaterial3D.AlphaAntiAliasing
function BaseMaterial3D.set_alpha_antialiasing(alpha_aa) end

---@return BaseMaterial3D.AlphaAntiAliasing
function BaseMaterial3D.get_alpha_antialiasing() end

---@param edge number
function BaseMaterial3D.set_alpha_antialiasing_edge(edge) end

---@return number
function BaseMaterial3D.get_alpha_antialiasing_edge() end

---@param shading_mode BaseMaterial3D.ShadingMode
function BaseMaterial3D.set_shading_mode(shading_mode) end

---@return BaseMaterial3D.ShadingMode
function BaseMaterial3D.get_shading_mode() end

---@param specular number
function BaseMaterial3D.set_specular(specular) end

---@return number
function BaseMaterial3D.get_specular() end

---@param metallic number
function BaseMaterial3D.set_metallic(metallic) end

---@return number
function BaseMaterial3D.get_metallic() end

---@param roughness number
function BaseMaterial3D.set_roughness(roughness) end

---@return number
function BaseMaterial3D.get_roughness() end

---@param emission Color
function BaseMaterial3D.set_emission(emission) end

---@return Color
function BaseMaterial3D.get_emission() end

---@param emission_energy_multiplier number
function BaseMaterial3D.set_emission_energy_multiplier(emission_energy_multiplier) end

---@return number
function BaseMaterial3D.get_emission_energy_multiplier() end

---@param emission_energy_multiplier number
function BaseMaterial3D.set_emission_intensity(emission_energy_multiplier) end

---@return number
function BaseMaterial3D.get_emission_intensity() end

---@param normal_scale number
function BaseMaterial3D.set_normal_scale(normal_scale) end

---@return number
function BaseMaterial3D.get_normal_scale() end

---@param rim number
function BaseMaterial3D.set_rim(rim) end

---@return number
function BaseMaterial3D.get_rim() end

---@param rim_tint number
function BaseMaterial3D.set_rim_tint(rim_tint) end

---@return number
function BaseMaterial3D.get_rim_tint() end

---@param clearcoat number
function BaseMaterial3D.set_clearcoat(clearcoat) end

---@return number
function BaseMaterial3D.get_clearcoat() end

---@param clearcoat_roughness number
function BaseMaterial3D.set_clearcoat_roughness(clearcoat_roughness) end

---@return number
function BaseMaterial3D.get_clearcoat_roughness() end

---@param anisotropy number
function BaseMaterial3D.set_anisotropy(anisotropy) end

---@return number
function BaseMaterial3D.get_anisotropy() end

---@param heightmap_scale number
function BaseMaterial3D.set_heightmap_scale(heightmap_scale) end

---@return number
function BaseMaterial3D.get_heightmap_scale() end

---@param strength number
function BaseMaterial3D.set_subsurface_scattering_strength(strength) end

---@return number
function BaseMaterial3D.get_subsurface_scattering_strength() end

---@param color Color
function BaseMaterial3D.set_transmittance_color(color) end

---@return Color
function BaseMaterial3D.get_transmittance_color() end

---@param depth number
function BaseMaterial3D.set_transmittance_depth(depth) end

---@return number
function BaseMaterial3D.get_transmittance_depth() end

---@param boost number
function BaseMaterial3D.set_transmittance_boost(boost) end

---@return number
function BaseMaterial3D.get_transmittance_boost() end

---@param backlight Color
function BaseMaterial3D.set_backlight(backlight) end

---@return Color
function BaseMaterial3D.get_backlight() end

---@param refraction number
function BaseMaterial3D.set_refraction(refraction) end

---@return number
function BaseMaterial3D.get_refraction() end

---@param point_size number
function BaseMaterial3D.set_point_size(point_size) end

---@return number
function BaseMaterial3D.get_point_size() end

---@param detail_uv BaseMaterial3D.DetailUV
function BaseMaterial3D.set_detail_uv(detail_uv) end

---@return BaseMaterial3D.DetailUV
function BaseMaterial3D.get_detail_uv() end

---@param blend_mode BaseMaterial3D.BlendMode
function BaseMaterial3D.set_blend_mode(blend_mode) end

---@return BaseMaterial3D.BlendMode
function BaseMaterial3D.get_blend_mode() end

---@param depth_draw_mode BaseMaterial3D.DepthDrawMode
function BaseMaterial3D.set_depth_draw_mode(depth_draw_mode) end

---@return BaseMaterial3D.DepthDrawMode
function BaseMaterial3D.get_depth_draw_mode() end

---@param depth_test BaseMaterial3D.DepthTest
function BaseMaterial3D.set_depth_test(depth_test) end

---@return BaseMaterial3D.DepthTest
function BaseMaterial3D.get_depth_test() end

---@param cull_mode BaseMaterial3D.CullMode
function BaseMaterial3D.set_cull_mode(cull_mode) end

---@return BaseMaterial3D.CullMode
function BaseMaterial3D.get_cull_mode() end

---@param diffuse_mode BaseMaterial3D.DiffuseMode
function BaseMaterial3D.set_diffuse_mode(diffuse_mode) end

---@return BaseMaterial3D.DiffuseMode
function BaseMaterial3D.get_diffuse_mode() end

---@param specular_mode BaseMaterial3D.SpecularMode
function BaseMaterial3D.set_specular_mode(specular_mode) end

---@return BaseMaterial3D.SpecularMode
function BaseMaterial3D.get_specular_mode() end

---@param flag BaseMaterial3D.Flags
---@param enable boolean
function BaseMaterial3D.set_flag(flag, enable) end

---@param flag BaseMaterial3D.Flags
---@return boolean
function BaseMaterial3D.get_flag(flag) end

---@param mode BaseMaterial3D.TextureFilter
function BaseMaterial3D.set_texture_filter(mode) end

---@return BaseMaterial3D.TextureFilter
function BaseMaterial3D.get_texture_filter() end

---@param feature BaseMaterial3D.Feature
---@param enable boolean
function BaseMaterial3D.set_feature(feature, enable) end

---@param feature BaseMaterial3D.Feature
---@return boolean
function BaseMaterial3D.get_feature(feature) end

---@param param BaseMaterial3D.TextureParam
---@param texture Texture2D
function BaseMaterial3D.set_texture(param, texture) end

---@param param BaseMaterial3D.TextureParam
---@return Texture2D
function BaseMaterial3D.get_texture(param) end

---@param detail_blend_mode BaseMaterial3D.BlendMode
function BaseMaterial3D.set_detail_blend_mode(detail_blend_mode) end

---@return BaseMaterial3D.BlendMode
function BaseMaterial3D.get_detail_blend_mode() end

---@param scale Vector3
function BaseMaterial3D.set_uv1_scale(scale) end

---@return Vector3
function BaseMaterial3D.get_uv1_scale() end

---@param offset Vector3
function BaseMaterial3D.set_uv1_offset(offset) end

---@return Vector3
function BaseMaterial3D.get_uv1_offset() end

---@param sharpness number
function BaseMaterial3D.set_uv1_triplanar_blend_sharpness(sharpness) end

---@return number
function BaseMaterial3D.get_uv1_triplanar_blend_sharpness() end

---@param scale Vector3
function BaseMaterial3D.set_uv2_scale(scale) end

---@return Vector3
function BaseMaterial3D.get_uv2_scale() end

---@param offset Vector3
function BaseMaterial3D.set_uv2_offset(offset) end

---@return Vector3
function BaseMaterial3D.get_uv2_offset() end

---@param sharpness number
function BaseMaterial3D.set_uv2_triplanar_blend_sharpness(sharpness) end

---@return number
function BaseMaterial3D.get_uv2_triplanar_blend_sharpness() end

---@param mode BaseMaterial3D.BillboardMode
function BaseMaterial3D.set_billboard_mode(mode) end

---@return BaseMaterial3D.BillboardMode
function BaseMaterial3D.get_billboard_mode() end

---@param frames integer
function BaseMaterial3D.set_particles_anim_h_frames(frames) end

---@return integer
function BaseMaterial3D.get_particles_anim_h_frames() end

---@param frames integer
function BaseMaterial3D.set_particles_anim_v_frames(frames) end

---@return integer
function BaseMaterial3D.get_particles_anim_v_frames() end

---@param loop boolean
function BaseMaterial3D.set_particles_anim_loop(loop) end

---@return boolean
function BaseMaterial3D.get_particles_anim_loop() end

---@param enable boolean
function BaseMaterial3D.set_heightmap_deep_parallax(enable) end

---@return boolean
function BaseMaterial3D.is_heightmap_deep_parallax_enabled() end

---@param layer integer
function BaseMaterial3D.set_heightmap_deep_parallax_min_layers(layer) end

---@return integer
function BaseMaterial3D.get_heightmap_deep_parallax_min_layers() end

---@param layer integer
function BaseMaterial3D.set_heightmap_deep_parallax_max_layers(layer) end

---@return integer
function BaseMaterial3D.get_heightmap_deep_parallax_max_layers() end

---@param flip boolean
function BaseMaterial3D.set_heightmap_deep_parallax_flip_tangent(flip) end

---@return boolean
function BaseMaterial3D.get_heightmap_deep_parallax_flip_tangent() end

---@param flip boolean
function BaseMaterial3D.set_heightmap_deep_parallax_flip_binormal(flip) end

---@return boolean
function BaseMaterial3D.get_heightmap_deep_parallax_flip_binormal() end

---@param amount number
function BaseMaterial3D.set_grow(amount) end

---@return number
function BaseMaterial3D.get_grow() end

---@param operator BaseMaterial3D.EmissionOperator
function BaseMaterial3D.set_emission_operator(operator) end

---@return BaseMaterial3D.EmissionOperator
function BaseMaterial3D.get_emission_operator() end

---@param amount number
function BaseMaterial3D.set_ao_light_affect(amount) end

---@return number
function BaseMaterial3D.get_ao_light_affect() end

---@param threshold number
function BaseMaterial3D.set_alpha_scissor_threshold(threshold) end

---@return number
function BaseMaterial3D.get_alpha_scissor_threshold() end

---@param threshold number
function BaseMaterial3D.set_alpha_hash_scale(threshold) end

---@return number
function BaseMaterial3D.get_alpha_hash_scale() end

---@param enable boolean
function BaseMaterial3D.set_grow_enabled(enable) end

---@return boolean
function BaseMaterial3D.is_grow_enabled() end

---@param channel BaseMaterial3D.TextureChannel
function BaseMaterial3D.set_metallic_texture_channel(channel) end

---@return BaseMaterial3D.TextureChannel
function BaseMaterial3D.get_metallic_texture_channel() end

---@param channel BaseMaterial3D.TextureChannel
function BaseMaterial3D.set_roughness_texture_channel(channel) end

---@return BaseMaterial3D.TextureChannel
function BaseMaterial3D.get_roughness_texture_channel() end

---@param channel BaseMaterial3D.TextureChannel
function BaseMaterial3D.set_ao_texture_channel(channel) end

---@return BaseMaterial3D.TextureChannel
function BaseMaterial3D.get_ao_texture_channel() end

---@param channel BaseMaterial3D.TextureChannel
function BaseMaterial3D.set_refraction_texture_channel(channel) end

---@return BaseMaterial3D.TextureChannel
function BaseMaterial3D.get_refraction_texture_channel() end

---@param enabled boolean
function BaseMaterial3D.set_proximity_fade_enabled(enabled) end

---@return boolean
function BaseMaterial3D.is_proximity_fade_enabled() end

---@param distance number
function BaseMaterial3D.set_proximity_fade_distance(distance) end

---@return number
function BaseMaterial3D.get_proximity_fade_distance() end

---@param range number
function BaseMaterial3D.set_msdf_pixel_range(range) end

---@return number
function BaseMaterial3D.get_msdf_pixel_range() end

---@param size number
function BaseMaterial3D.set_msdf_outline_size(size) end

---@return number
function BaseMaterial3D.get_msdf_outline_size() end

---@param mode BaseMaterial3D.DistanceFadeMode
function BaseMaterial3D.set_distance_fade(mode) end

---@return BaseMaterial3D.DistanceFadeMode
function BaseMaterial3D.get_distance_fade() end

---@param distance number
function BaseMaterial3D.set_distance_fade_max_distance(distance) end

---@return number
function BaseMaterial3D.get_distance_fade_max_distance() end

---@param distance number
function BaseMaterial3D.set_distance_fade_min_distance(distance) end

---@return number
function BaseMaterial3D.get_distance_fade_min_distance() end

---@param scale number
function BaseMaterial3D.set_z_clip_scale(scale) end

---@return number
function BaseMaterial3D.get_z_clip_scale() end

---@param scale number
function BaseMaterial3D.set_fov_override(scale) end

---@return number
function BaseMaterial3D.get_fov_override() end

---@param stencil_mode BaseMaterial3D.StencilMode
function BaseMaterial3D.set_stencil_mode(stencil_mode) end

---@return BaseMaterial3D.StencilMode
function BaseMaterial3D.get_stencil_mode() end

---@param stencil_flags integer
function BaseMaterial3D.set_stencil_flags(stencil_flags) end

---@return integer
function BaseMaterial3D.get_stencil_flags() end

---@param stencil_compare BaseMaterial3D.StencilCompare
function BaseMaterial3D.set_stencil_compare(stencil_compare) end

---@return BaseMaterial3D.StencilCompare
function BaseMaterial3D.get_stencil_compare() end

---@param stencil_reference integer
function BaseMaterial3D.set_stencil_reference(stencil_reference) end

---@return integer
function BaseMaterial3D.get_stencil_reference() end

---@param stencil_color Color
function BaseMaterial3D.set_stencil_effect_color(stencil_color) end

---@return Color
function BaseMaterial3D.get_stencil_effect_color() end

---@param stencil_outline_thickness number
function BaseMaterial3D.set_stencil_effect_outline_thickness(stencil_outline_thickness) end

---@return number
function BaseMaterial3D.get_stencil_effect_outline_thickness() end
