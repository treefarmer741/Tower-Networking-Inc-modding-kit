---@meta _
-- Generated API for game version 0.10.0

---@class RenderingServer : Object
---@field render_loop_enabled boolean
local RenderingServer = {}

---@param image Image
---@return RID
function RenderingServer.texture_2d_create(image) end

---@param layers Array<Image>
---@param layered_type RenderingServer.TextureLayeredType
---@return RID
function RenderingServer.texture_2d_layered_create(layers, layered_type) end

---@param format Image.Format
---@param width integer
---@param height integer
---@param depth integer
---@param mipmaps boolean
---@param data Array<Image>
---@return RID
function RenderingServer.texture_3d_create(format, width, height, depth, mipmaps, data) end

---@param base RID
---@return RID
function RenderingServer.texture_proxy_create(base) end

---@param type RenderingServer.TextureType
---@param format Image.Format
---@param native_handle integer
---@param width integer
---@param height integer
---@param depth integer
---@param layers integer?  # Default = 1
---@param layered_type RenderingServer.TextureLayeredType?  # Default = 0
---@return RID
function RenderingServer.texture_create_from_native_handle(type, format, native_handle, width, height, depth, layers, layered_type) end

---@param texture RID
---@param image Image
---@param layer integer
function RenderingServer.texture_2d_update(texture, image, layer) end

---@param texture RID
---@param data Array<Image>
function RenderingServer.texture_3d_update(texture, data) end

---@param texture RID
---@param proxy_to RID
function RenderingServer.texture_proxy_update(texture, proxy_to) end

---@return RID
function RenderingServer.texture_2d_placeholder_create() end

---@param layered_type RenderingServer.TextureLayeredType
---@return RID
function RenderingServer.texture_2d_layered_placeholder_create(layered_type) end

---@return RID
function RenderingServer.texture_3d_placeholder_create() end

---@param texture RID
---@return Image
function RenderingServer.texture_2d_get(texture) end

---@param texture RID
---@param layer integer
---@return Image
function RenderingServer.texture_2d_layer_get(texture, layer) end

---@param texture RID
---@return Array<Image>
function RenderingServer.texture_3d_get(texture) end

---@param texture RID
---@param by_texture RID
function RenderingServer.texture_replace(texture, by_texture) end

---@param texture RID
---@param width integer
---@param height integer
function RenderingServer.texture_set_size_override(texture, width, height) end

---@param texture RID
---@param path string
function RenderingServer.texture_set_path(texture, path) end

---@param texture RID
---@return string
function RenderingServer.texture_get_path(texture) end

---@param texture RID
---@return Image.Format
function RenderingServer.texture_get_format(texture) end

---@param texture RID
---@param enable boolean
function RenderingServer.texture_set_force_redraw_if_visible(texture, enable) end

---@param rd_texture RID
---@param layer_type RenderingServer.TextureLayeredType?  # Default = 0
---@return RID
function RenderingServer.texture_rd_create(rd_texture, layer_type) end

---@param texture RID
---@param srgb boolean?  # Default = false
---@return RID
function RenderingServer.texture_get_rd_texture(texture, srgb) end

---@param texture RID
---@param srgb boolean?  # Default = false
---@return integer
function RenderingServer.texture_get_native_handle(texture, srgb) end

---@return RID
function RenderingServer.shader_create() end

---@param shader RID
---@param code string
function RenderingServer.shader_set_code(shader, code) end

---@param shader RID
---@param path string
function RenderingServer.shader_set_path_hint(shader, path) end

---@param shader RID
---@return string
function RenderingServer.shader_get_code(shader) end

---@param shader RID
---@return Array<Dictionary>
function RenderingServer.get_shader_parameter_list(shader) end

---@param shader RID
---@param name string
---@return Object
function RenderingServer.shader_get_parameter_default(shader, name) end

---@param shader RID
---@param name string
---@param texture RID
---@param index integer?  # Default = 0
function RenderingServer.shader_set_default_texture_parameter(shader, name, texture, index) end

---@param shader RID
---@param name string
---@param index integer?  # Default = 0
---@return RID
function RenderingServer.shader_get_default_texture_parameter(shader, name, index) end

---@return RID
function RenderingServer.material_create() end

---@param shader_material RID
---@param shader RID
function RenderingServer.material_set_shader(shader_material, shader) end

---@param material RID
---@param parameter string
---@param value Object
function RenderingServer.material_set_param(material, parameter, value) end

---@param material RID
---@param parameter string
---@return Object
function RenderingServer.material_get_param(material, parameter) end

---@param material RID
---@param priority integer
function RenderingServer.material_set_render_priority(material, priority) end

---@param material RID
---@param next_material RID
function RenderingServer.material_set_next_pass(material, next_material) end

---@param surfaces Array<Dictionary>
---@param blend_shape_count integer?  # Default = 0
---@return RID
function RenderingServer.mesh_create_from_surfaces(surfaces, blend_shape_count) end

---@return RID
function RenderingServer.mesh_create() end

---@param format RenderingServer.ArrayFormat
---@param vertex_count integer
---@param array_index integer
---@return integer
function RenderingServer.mesh_surface_get_format_offset(format, vertex_count, array_index) end

---@param format RenderingServer.ArrayFormat
---@param vertex_count integer
---@return integer
function RenderingServer.mesh_surface_get_format_vertex_stride(format, vertex_count) end

---@param format RenderingServer.ArrayFormat
---@param vertex_count integer
---@return integer
function RenderingServer.mesh_surface_get_format_normal_tangent_stride(format, vertex_count) end

---@param format RenderingServer.ArrayFormat
---@param vertex_count integer
---@return integer
function RenderingServer.mesh_surface_get_format_attribute_stride(format, vertex_count) end

---@param format RenderingServer.ArrayFormat
---@param vertex_count integer
---@return integer
function RenderingServer.mesh_surface_get_format_skin_stride(format, vertex_count) end

---@param format RenderingServer.ArrayFormat
---@param vertex_count integer
---@return integer
function RenderingServer.mesh_surface_get_format_index_stride(format, vertex_count) end

---@param mesh RID
---@param surface table<any,any>
function RenderingServer.mesh_add_surface(mesh, surface) end

---@param mesh RID
---@param primitive RenderingServer.PrimitiveType
---@param arrays Array<any>
---@param blend_shapes Array<any>?  # Default = []
---@param lods table<any,any>?  # Default = {  }
---@param compress_format RenderingServer.ArrayFormat?  # Default = 0
function RenderingServer.mesh_add_surface_from_arrays(mesh, primitive, arrays, blend_shapes, lods, compress_format) end

---@param mesh RID
---@return integer
function RenderingServer.mesh_get_blend_shape_count(mesh) end

---@param mesh RID
---@param mode RenderingServer.BlendShapeMode
function RenderingServer.mesh_set_blend_shape_mode(mesh, mode) end

---@param mesh RID
---@return RenderingServer.BlendShapeMode
function RenderingServer.mesh_get_blend_shape_mode(mesh) end

---@param mesh RID
---@param surface integer
---@param material RID
function RenderingServer.mesh_surface_set_material(mesh, surface, material) end

---@param mesh RID
---@param surface integer
---@return RID
function RenderingServer.mesh_surface_get_material(mesh, surface) end

---@param mesh RID
---@param surface integer
---@return table<any,any>
function RenderingServer.mesh_get_surface(mesh, surface) end

---@param mesh RID
---@param surface integer
---@return Array<any>
function RenderingServer.mesh_surface_get_arrays(mesh, surface) end

---@param mesh RID
---@param surface integer
---@return Array<Array>
function RenderingServer.mesh_surface_get_blend_shape_arrays(mesh, surface) end

---@param mesh RID
---@return integer
function RenderingServer.mesh_get_surface_count(mesh) end

---@param mesh RID
---@param aabb AABB
function RenderingServer.mesh_set_custom_aabb(mesh, aabb) end

---@param mesh RID
---@return AABB
function RenderingServer.mesh_get_custom_aabb(mesh) end

---@param mesh RID
---@param surface integer
function RenderingServer.mesh_surface_remove(mesh, surface) end

---@param mesh RID
function RenderingServer.mesh_clear(mesh) end

---@param mesh RID
---@param surface integer
---@param offset integer
---@param data PackedByteArray
function RenderingServer.mesh_surface_update_vertex_region(mesh, surface, offset, data) end

---@param mesh RID
---@param surface integer
---@param offset integer
---@param data PackedByteArray
function RenderingServer.mesh_surface_update_attribute_region(mesh, surface, offset, data) end

---@param mesh RID
---@param surface integer
---@param offset integer
---@param data PackedByteArray
function RenderingServer.mesh_surface_update_skin_region(mesh, surface, offset, data) end

---@param mesh RID
---@param surface integer
---@param offset integer
---@param data PackedByteArray
function RenderingServer.mesh_surface_update_index_region(mesh, surface, offset, data) end

---@param mesh RID
---@param shadow_mesh RID
function RenderingServer.mesh_set_shadow_mesh(mesh, shadow_mesh) end

---@return RID
function RenderingServer.multimesh_create() end

---@param multimesh RID
---@param instances integer
---@param transform_format RenderingServer.MultimeshTransformFormat
---@param color_format boolean?  # Default = false
---@param custom_data_format boolean?  # Default = false
---@param use_indirect boolean?  # Default = false
function RenderingServer.multimesh_allocate_data(multimesh, instances, transform_format, color_format, custom_data_format, use_indirect) end

---@param multimesh RID
---@return integer
function RenderingServer.multimesh_get_instance_count(multimesh) end

---@param multimesh RID
---@param mesh RID
function RenderingServer.multimesh_set_mesh(multimesh, mesh) end

---@param multimesh RID
---@param index integer
---@param transform Transform3D
function RenderingServer.multimesh_instance_set_transform(multimesh, index, transform) end

---@param multimesh RID
---@param index integer
---@param transform Transform2D
function RenderingServer.multimesh_instance_set_transform_2d(multimesh, index, transform) end

---@param multimesh RID
---@param index integer
---@param color Color
function RenderingServer.multimesh_instance_set_color(multimesh, index, color) end

---@param multimesh RID
---@param index integer
---@param custom_data Color
function RenderingServer.multimesh_instance_set_custom_data(multimesh, index, custom_data) end

---@param multimesh RID
---@return RID
function RenderingServer.multimesh_get_mesh(multimesh) end

---@param multimesh RID
---@return AABB
function RenderingServer.multimesh_get_aabb(multimesh) end

---@param multimesh RID
---@param aabb AABB
function RenderingServer.multimesh_set_custom_aabb(multimesh, aabb) end

---@param multimesh RID
---@return AABB
function RenderingServer.multimesh_get_custom_aabb(multimesh) end

---@param multimesh RID
---@param index integer
---@return Transform3D
function RenderingServer.multimesh_instance_get_transform(multimesh, index) end

---@param multimesh RID
---@param index integer
---@return Transform2D
function RenderingServer.multimesh_instance_get_transform_2d(multimesh, index) end

---@param multimesh RID
---@param index integer
---@return Color
function RenderingServer.multimesh_instance_get_color(multimesh, index) end

---@param multimesh RID
---@param index integer
---@return Color
function RenderingServer.multimesh_instance_get_custom_data(multimesh, index) end

---@param multimesh RID
---@param visible integer
function RenderingServer.multimesh_set_visible_instances(multimesh, visible) end

---@param multimesh RID
---@return integer
function RenderingServer.multimesh_get_visible_instances(multimesh) end

---@param multimesh RID
---@param buffer PackedFloat32Array
function RenderingServer.multimesh_set_buffer(multimesh, buffer) end

---@param multimesh RID
---@return RID
function RenderingServer.multimesh_get_command_buffer_rd_rid(multimesh) end

---@param multimesh RID
---@return RID
function RenderingServer.multimesh_get_buffer_rd_rid(multimesh) end

---@param multimesh RID
---@return PackedFloat32Array
function RenderingServer.multimesh_get_buffer(multimesh) end

---@param multimesh RID
---@param buffer PackedFloat32Array
---@param buffer_previous PackedFloat32Array
function RenderingServer.multimesh_set_buffer_interpolated(multimesh, buffer, buffer_previous) end

---@param multimesh RID
---@param interpolated boolean
function RenderingServer.multimesh_set_physics_interpolated(multimesh, interpolated) end

---@param multimesh RID
---@param quality RenderingServer.MultimeshPhysicsInterpolationQuality
function RenderingServer.multimesh_set_physics_interpolation_quality(multimesh, quality) end

---@param multimesh RID
---@param index integer
function RenderingServer.multimesh_instance_reset_physics_interpolation(multimesh, index) end

---@return RID
function RenderingServer.skeleton_create() end

---@param skeleton RID
---@param bones integer
---@param is_2d_skeleton boolean?  # Default = false
function RenderingServer.skeleton_allocate_data(skeleton, bones, is_2d_skeleton) end

---@param skeleton RID
---@return integer
function RenderingServer.skeleton_get_bone_count(skeleton) end

---@param skeleton RID
---@param bone integer
---@param transform Transform3D
function RenderingServer.skeleton_bone_set_transform(skeleton, bone, transform) end

---@param skeleton RID
---@param bone integer
---@return Transform3D
function RenderingServer.skeleton_bone_get_transform(skeleton, bone) end

---@param skeleton RID
---@param bone integer
---@param transform Transform2D
function RenderingServer.skeleton_bone_set_transform_2d(skeleton, bone, transform) end

---@param skeleton RID
---@param bone integer
---@return Transform2D
function RenderingServer.skeleton_bone_get_transform_2d(skeleton, bone) end

---@param skeleton RID
---@param base_transform Transform2D
function RenderingServer.skeleton_set_base_transform_2d(skeleton, base_transform) end

---@return RID
function RenderingServer.directional_light_create() end

---@return RID
function RenderingServer.omni_light_create() end

---@return RID
function RenderingServer.spot_light_create() end

---@param light RID
---@param color Color
function RenderingServer.light_set_color(light, color) end

---@param light RID
---@param param RenderingServer.LightParam
---@param value number
function RenderingServer.light_set_param(light, param, value) end

---@param light RID
---@param enabled boolean
function RenderingServer.light_set_shadow(light, enabled) end

---@param light RID
---@param texture RID
function RenderingServer.light_set_projector(light, texture) end

---@param light RID
---@param enable boolean
function RenderingServer.light_set_negative(light, enable) end

---@param light RID
---@param mask integer
function RenderingServer.light_set_cull_mask(light, mask) end

---@param decal RID
---@param enabled boolean
---@param begin number
---@param shadow number
---@param length number
function RenderingServer.light_set_distance_fade(decal, enabled, begin, shadow, length) end

---@param light RID
---@param enabled boolean
function RenderingServer.light_set_reverse_cull_face_mode(light, enabled) end

---@param light RID
---@param mask integer
function RenderingServer.light_set_shadow_caster_mask(light, mask) end

---@param light RID
---@param bake_mode RenderingServer.LightBakeMode
function RenderingServer.light_set_bake_mode(light, bake_mode) end

---@param light RID
---@param cascade integer
function RenderingServer.light_set_max_sdfgi_cascade(light, cascade) end

---@param light RID
---@param mode RenderingServer.LightOmniShadowMode
function RenderingServer.light_omni_set_shadow_mode(light, mode) end

---@param light RID
---@param mode RenderingServer.LightDirectionalShadowMode
function RenderingServer.light_directional_set_shadow_mode(light, mode) end

---@param light RID
---@param enable boolean
function RenderingServer.light_directional_set_blend_splits(light, enable) end

---@param light RID
---@param mode RenderingServer.LightDirectionalSkyMode
function RenderingServer.light_directional_set_sky_mode(light, mode) end

---@param filter RenderingServer.LightProjectorFilter
function RenderingServer.light_projectors_set_filter(filter) end

---@param enable boolean
function RenderingServer.lightmaps_set_bicubic_filter(enable) end

---@param quality RenderingServer.ShadowQuality
function RenderingServer.positional_soft_shadow_filter_set_quality(quality) end

---@param quality RenderingServer.ShadowQuality
function RenderingServer.directional_soft_shadow_filter_set_quality(quality) end

---@param size integer
---@param is_16bits boolean
function RenderingServer.directional_shadow_atlas_set_size(size, is_16bits) end

---@return RID
function RenderingServer.reflection_probe_create() end

---@param probe RID
---@param mode RenderingServer.ReflectionProbeUpdateMode
function RenderingServer.reflection_probe_set_update_mode(probe, mode) end

---@param probe RID
---@param intensity number
function RenderingServer.reflection_probe_set_intensity(probe, intensity) end

---@param probe RID
---@param blend_distance number
function RenderingServer.reflection_probe_set_blend_distance(probe, blend_distance) end

---@param probe RID
---@param mode RenderingServer.ReflectionProbeAmbientMode
function RenderingServer.reflection_probe_set_ambient_mode(probe, mode) end

---@param probe RID
---@param color Color
function RenderingServer.reflection_probe_set_ambient_color(probe, color) end

---@param probe RID
---@param energy number
function RenderingServer.reflection_probe_set_ambient_energy(probe, energy) end

---@param probe RID
---@param distance number
function RenderingServer.reflection_probe_set_max_distance(probe, distance) end

---@param probe RID
---@param size Vector3
function RenderingServer.reflection_probe_set_size(probe, size) end

---@param probe RID
---@param offset Vector3
function RenderingServer.reflection_probe_set_origin_offset(probe, offset) end

---@param probe RID
---@param enable boolean
function RenderingServer.reflection_probe_set_as_interior(probe, enable) end

---@param probe RID
---@param enable boolean
function RenderingServer.reflection_probe_set_enable_box_projection(probe, enable) end

---@param probe RID
---@param enable boolean
function RenderingServer.reflection_probe_set_enable_shadows(probe, enable) end

---@param probe RID
---@param layers integer
function RenderingServer.reflection_probe_set_cull_mask(probe, layers) end

---@param probe RID
---@param layers integer
function RenderingServer.reflection_probe_set_reflection_mask(probe, layers) end

---@param probe RID
---@param resolution integer
function RenderingServer.reflection_probe_set_resolution(probe, resolution) end

---@param probe RID
---@param pixels number
function RenderingServer.reflection_probe_set_mesh_lod_threshold(probe, pixels) end

---@return RID
function RenderingServer.decal_create() end

---@param decal RID
---@param size Vector3
function RenderingServer.decal_set_size(decal, size) end

---@param decal RID
---@param type RenderingServer.DecalTexture
---@param texture RID
function RenderingServer.decal_set_texture(decal, type, texture) end

---@param decal RID
---@param energy number
function RenderingServer.decal_set_emission_energy(decal, energy) end

---@param decal RID
---@param albedo_mix number
function RenderingServer.decal_set_albedo_mix(decal, albedo_mix) end

---@param decal RID
---@param color Color
function RenderingServer.decal_set_modulate(decal, color) end

---@param decal RID
---@param mask integer
function RenderingServer.decal_set_cull_mask(decal, mask) end

---@param decal RID
---@param enabled boolean
---@param begin number
---@param length number
function RenderingServer.decal_set_distance_fade(decal, enabled, begin, length) end

---@param decal RID
---@param above number
---@param below number
function RenderingServer.decal_set_fade(decal, above, below) end

---@param decal RID
---@param fade number
function RenderingServer.decal_set_normal_fade(decal, fade) end

---@param filter RenderingServer.DecalFilter
function RenderingServer.decals_set_filter(filter) end

---@param half_resolution boolean
function RenderingServer.gi_set_use_half_resolution(half_resolution) end

---@return RID
function RenderingServer.voxel_gi_create() end

---@param voxel_gi RID
---@param to_cell_xform Transform3D
---@param aabb AABB
---@param octree_size Vector3i
---@param octree_cells PackedByteArray
---@param data_cells PackedByteArray
---@param distance_field PackedByteArray
---@param level_counts PackedInt32Array
function RenderingServer.voxel_gi_allocate_data(voxel_gi, to_cell_xform, aabb, octree_size, octree_cells, data_cells, distance_field, level_counts) end

---@param voxel_gi RID
---@return Vector3i
function RenderingServer.voxel_gi_get_octree_size(voxel_gi) end

---@param voxel_gi RID
---@return PackedByteArray
function RenderingServer.voxel_gi_get_octree_cells(voxel_gi) end

---@param voxel_gi RID
---@return PackedByteArray
function RenderingServer.voxel_gi_get_data_cells(voxel_gi) end

---@param voxel_gi RID
---@return PackedByteArray
function RenderingServer.voxel_gi_get_distance_field(voxel_gi) end

---@param voxel_gi RID
---@return PackedInt32Array
function RenderingServer.voxel_gi_get_level_counts(voxel_gi) end

---@param voxel_gi RID
---@return Transform3D
function RenderingServer.voxel_gi_get_to_cell_xform(voxel_gi) end

---@param voxel_gi RID
---@param range number
function RenderingServer.voxel_gi_set_dynamic_range(voxel_gi, range) end

---@param voxel_gi RID
---@param amount number
function RenderingServer.voxel_gi_set_propagation(voxel_gi, amount) end

---@param voxel_gi RID
---@param energy number
function RenderingServer.voxel_gi_set_energy(voxel_gi, energy) end

---@param voxel_gi RID
---@param baked_exposure number
function RenderingServer.voxel_gi_set_baked_exposure_normalization(voxel_gi, baked_exposure) end

---@param voxel_gi RID
---@param bias number
function RenderingServer.voxel_gi_set_bias(voxel_gi, bias) end

---@param voxel_gi RID
---@param bias number
function RenderingServer.voxel_gi_set_normal_bias(voxel_gi, bias) end

---@param voxel_gi RID
---@param enable boolean
function RenderingServer.voxel_gi_set_interior(voxel_gi, enable) end

---@param voxel_gi RID
---@param enable boolean
function RenderingServer.voxel_gi_set_use_two_bounces(voxel_gi, enable) end

---@param quality RenderingServer.VoxelGIQuality
function RenderingServer.voxel_gi_set_quality(quality) end

---@return RID
function RenderingServer.lightmap_create() end

---@param lightmap RID
---@param light RID
---@param uses_sh boolean
function RenderingServer.lightmap_set_textures(lightmap, light, uses_sh) end

---@param lightmap RID
---@param bounds AABB
function RenderingServer.lightmap_set_probe_bounds(lightmap, bounds) end

---@param lightmap RID
---@param interior boolean
function RenderingServer.lightmap_set_probe_interior(lightmap, interior) end

---@param lightmap RID
---@param points PackedVector3Array
---@param point_sh PackedColorArray
---@param tetrahedra PackedInt32Array
---@param bsp_tree PackedInt32Array
function RenderingServer.lightmap_set_probe_capture_data(lightmap, points, point_sh, tetrahedra, bsp_tree) end

---@param lightmap RID
---@return PackedVector3Array
function RenderingServer.lightmap_get_probe_capture_points(lightmap) end

---@param lightmap RID
---@return PackedColorArray
function RenderingServer.lightmap_get_probe_capture_sh(lightmap) end

---@param lightmap RID
---@return PackedInt32Array
function RenderingServer.lightmap_get_probe_capture_tetrahedra(lightmap) end

---@param lightmap RID
---@return PackedInt32Array
function RenderingServer.lightmap_get_probe_capture_bsp_tree(lightmap) end

---@param lightmap RID
---@param baked_exposure number
function RenderingServer.lightmap_set_baked_exposure_normalization(lightmap, baked_exposure) end

---@param speed number
function RenderingServer.lightmap_set_probe_capture_update_speed(speed) end

---@return RID
function RenderingServer.particles_create() end

---@param particles RID
---@param mode RenderingServer.ParticlesMode
function RenderingServer.particles_set_mode(particles, mode) end

---@param particles RID
---@param emitting boolean
function RenderingServer.particles_set_emitting(particles, emitting) end

---@param particles RID
---@return boolean
function RenderingServer.particles_get_emitting(particles) end

---@param particles RID
---@param amount integer
function RenderingServer.particles_set_amount(particles, amount) end

---@param particles RID
---@param ratio number
function RenderingServer.particles_set_amount_ratio(particles, ratio) end

---@param particles RID
---@param lifetime number
function RenderingServer.particles_set_lifetime(particles, lifetime) end

---@param particles RID
---@param one_shot boolean
function RenderingServer.particles_set_one_shot(particles, one_shot) end

---@param particles RID
---@param time number
function RenderingServer.particles_set_pre_process_time(particles, time) end

---@param particles RID
---@param time number
function RenderingServer.particles_request_process_time(particles, time) end

---@param particles RID
---@param ratio number
function RenderingServer.particles_set_explosiveness_ratio(particles, ratio) end

---@param particles RID
---@param ratio number
function RenderingServer.particles_set_randomness_ratio(particles, ratio) end

---@param particles RID
---@param factor number
function RenderingServer.particles_set_interp_to_end(particles, factor) end

---@param particles RID
---@param velocity Vector3
function RenderingServer.particles_set_emitter_velocity(particles, velocity) end

---@param particles RID
---@param aabb AABB
function RenderingServer.particles_set_custom_aabb(particles, aabb) end

---@param particles RID
---@param scale number
function RenderingServer.particles_set_speed_scale(particles, scale) end

---@param particles RID
---@param enable boolean
function RenderingServer.particles_set_use_local_coordinates(particles, enable) end

---@param particles RID
---@param material RID
function RenderingServer.particles_set_process_material(particles, material) end

---@param particles RID
---@param fps integer
function RenderingServer.particles_set_fixed_fps(particles, fps) end

---@param particles RID
---@param enable boolean
function RenderingServer.particles_set_interpolate(particles, enable) end

---@param particles RID
---@param enable boolean
function RenderingServer.particles_set_fractional_delta(particles, enable) end

---@param particles RID
---@param size number
function RenderingServer.particles_set_collision_base_size(particles, size) end

---@param particles RID
---@param align RenderingServer.ParticlesTransformAlign
function RenderingServer.particles_set_transform_align(particles, align) end

---@param particles RID
---@param enable boolean
---@param length_sec number
function RenderingServer.particles_set_trails(particles, enable, length_sec) end

---@param particles RID
---@param bind_poses Array<Transform3D>
function RenderingServer.particles_set_trail_bind_poses(particles, bind_poses) end

---@param particles RID
---@return boolean
function RenderingServer.particles_is_inactive(particles) end

---@param particles RID
function RenderingServer.particles_request_process(particles) end

---@param particles RID
function RenderingServer.particles_restart(particles) end

---@param particles RID
---@param subemitter_particles RID
function RenderingServer.particles_set_subemitter(particles, subemitter_particles) end

---@param particles RID
---@param transform Transform3D
---@param velocity Vector3
---@param color Color
---@param custom Color
---@param emit_flags integer
function RenderingServer.particles_emit(particles, transform, velocity, color, custom, emit_flags) end

---@param particles RID
---@param order RenderingServer.ParticlesDrawOrder
function RenderingServer.particles_set_draw_order(particles, order) end

---@param particles RID
---@param count integer
function RenderingServer.particles_set_draw_passes(particles, count) end

---@param particles RID
---@param pass integer
---@param mesh RID
function RenderingServer.particles_set_draw_pass_mesh(particles, pass, mesh) end

---@param particles RID
---@return AABB
function RenderingServer.particles_get_current_aabb(particles) end

---@param particles RID
---@param transform Transform3D
function RenderingServer.particles_set_emission_transform(particles, transform) end

---@return RID
function RenderingServer.particles_collision_create() end

---@param particles_collision RID
---@param type RenderingServer.ParticlesCollisionType
function RenderingServer.particles_collision_set_collision_type(particles_collision, type) end

---@param particles_collision RID
---@param mask integer
function RenderingServer.particles_collision_set_cull_mask(particles_collision, mask) end

---@param particles_collision RID
---@param radius number
function RenderingServer.particles_collision_set_sphere_radius(particles_collision, radius) end

---@param particles_collision RID
---@param extents Vector3
function RenderingServer.particles_collision_set_box_extents(particles_collision, extents) end

---@param particles_collision RID
---@param strength number
function RenderingServer.particles_collision_set_attractor_strength(particles_collision, strength) end

---@param particles_collision RID
---@param amount number
function RenderingServer.particles_collision_set_attractor_directionality(particles_collision, amount) end

---@param particles_collision RID
---@param curve number
function RenderingServer.particles_collision_set_attractor_attenuation(particles_collision, curve) end

---@param particles_collision RID
---@param texture RID
function RenderingServer.particles_collision_set_field_texture(particles_collision, texture) end

---@param particles_collision RID
function RenderingServer.particles_collision_height_field_update(particles_collision) end

---@param particles_collision RID
---@param resolution RenderingServer.ParticlesCollisionHeightfieldResolution
function RenderingServer.particles_collision_set_height_field_resolution(particles_collision, resolution) end

---@param particles_collision RID
---@param mask integer
function RenderingServer.particles_collision_set_height_field_mask(particles_collision, mask) end

---@return RID
function RenderingServer.fog_volume_create() end

---@param fog_volume RID
---@param shape RenderingServer.FogVolumeShape
function RenderingServer.fog_volume_set_shape(fog_volume, shape) end

---@param fog_volume RID
---@param size Vector3
function RenderingServer.fog_volume_set_size(fog_volume, size) end

---@param fog_volume RID
---@param material RID
function RenderingServer.fog_volume_set_material(fog_volume, material) end

---@return RID
function RenderingServer.visibility_notifier_create() end

---@param notifier RID
---@param aabb AABB
function RenderingServer.visibility_notifier_set_aabb(notifier, aabb) end

---@param notifier RID
---@param enter_callable (Callable|function)
---@param exit_callable (Callable|function)
function RenderingServer.visibility_notifier_set_callbacks(notifier, enter_callable, exit_callable) end

---@return RID
function RenderingServer.occluder_create() end

---@param occluder RID
---@param vertices PackedVector3Array
---@param indices PackedInt32Array
function RenderingServer.occluder_set_mesh(occluder, vertices, indices) end

---@return RID
function RenderingServer.camera_create() end

---@param camera RID
---@param fovy_degrees number
---@param z_near number
---@param z_far number
function RenderingServer.camera_set_perspective(camera, fovy_degrees, z_near, z_far) end

---@param camera RID
---@param size number
---@param z_near number
---@param z_far number
function RenderingServer.camera_set_orthogonal(camera, size, z_near, z_far) end

---@param camera RID
---@param size number
---@param offset Vector2
---@param z_near number
---@param z_far number
function RenderingServer.camera_set_frustum(camera, size, offset, z_near, z_far) end

---@param camera RID
---@param transform Transform3D
function RenderingServer.camera_set_transform(camera, transform) end

---@param camera RID
---@param layers integer
function RenderingServer.camera_set_cull_mask(camera, layers) end

---@param camera RID
---@param env RID
function RenderingServer.camera_set_environment(camera, env) end

---@param camera RID
---@param effects RID
function RenderingServer.camera_set_camera_attributes(camera, effects) end

---@param camera RID
---@param compositor RID
function RenderingServer.camera_set_compositor(camera, compositor) end

---@param camera RID
---@param enable boolean
function RenderingServer.camera_set_use_vertical_aspect(camera, enable) end

---@return RID
function RenderingServer.viewport_create() end

---@param viewport RID
---@param use_xr boolean
function RenderingServer.viewport_set_use_xr(viewport, use_xr) end

---@param viewport RID
---@param width integer
---@param height integer
function RenderingServer.viewport_set_size(viewport, width, height) end

---@param viewport RID
---@param active boolean
function RenderingServer.viewport_set_active(viewport, active) end

---@param viewport RID
---@param parent_viewport RID
function RenderingServer.viewport_set_parent_viewport(viewport, parent_viewport) end

---@param viewport RID
---@param rect Rect2?  # Default = [P: (0.0, 0.0), S: (0.0, 0.0)]
---@param screen integer?  # Default = 0
function RenderingServer.viewport_attach_to_screen(viewport, rect, screen) end

---@param viewport RID
---@param enabled boolean
function RenderingServer.viewport_set_render_direct_to_screen(viewport, enabled) end

---@param viewport RID
---@param canvas_cull_mask integer
function RenderingServer.viewport_set_canvas_cull_mask(viewport, canvas_cull_mask) end

---@param viewport RID
---@param scaling_3d_mode RenderingServer.ViewportScaling3DMode
function RenderingServer.viewport_set_scaling_3d_mode(viewport, scaling_3d_mode) end

---@param viewport RID
---@param scale number
function RenderingServer.viewport_set_scaling_3d_scale(viewport, scale) end

---@param viewport RID
---@param sharpness number
function RenderingServer.viewport_set_fsr_sharpness(viewport, sharpness) end

---@param viewport RID
---@param mipmap_bias number
function RenderingServer.viewport_set_texture_mipmap_bias(viewport, mipmap_bias) end

---@param viewport RID
---@param anisotropic_filtering_level RenderingServer.ViewportAnisotropicFiltering
function RenderingServer.viewport_set_anisotropic_filtering_level(viewport, anisotropic_filtering_level) end

---@param viewport RID
---@param update_mode RenderingServer.ViewportUpdateMode
function RenderingServer.viewport_set_update_mode(viewport, update_mode) end

---@param viewport RID
---@return RenderingServer.ViewportUpdateMode
function RenderingServer.viewport_get_update_mode(viewport) end

---@param viewport RID
---@param clear_mode RenderingServer.ViewportClearMode
function RenderingServer.viewport_set_clear_mode(viewport, clear_mode) end

---@param viewport RID
---@return RID
function RenderingServer.viewport_get_render_target(viewport) end

---@param viewport RID
---@return RID
function RenderingServer.viewport_get_texture(viewport) end

---@param viewport RID
---@param disable boolean
function RenderingServer.viewport_set_disable_3d(viewport, disable) end

---@param viewport RID
---@param disable boolean
function RenderingServer.viewport_set_disable_2d(viewport, disable) end

---@param viewport RID
---@param mode RenderingServer.ViewportEnvironmentMode
function RenderingServer.viewport_set_environment_mode(viewport, mode) end

---@param viewport RID
---@param camera RID
function RenderingServer.viewport_attach_camera(viewport, camera) end

---@param viewport RID
---@param scenario RID
function RenderingServer.viewport_set_scenario(viewport, scenario) end

---@param viewport RID
---@param canvas RID
function RenderingServer.viewport_attach_canvas(viewport, canvas) end

---@param viewport RID
---@param canvas RID
function RenderingServer.viewport_remove_canvas(viewport, canvas) end

---@param viewport RID
---@param enabled boolean
function RenderingServer.viewport_set_snap_2d_transforms_to_pixel(viewport, enabled) end

---@param viewport RID
---@param enabled boolean
function RenderingServer.viewport_set_snap_2d_vertices_to_pixel(viewport, enabled) end

---@param viewport RID
---@param filter RenderingServer.CanvasItemTextureFilter
function RenderingServer.viewport_set_default_canvas_item_texture_filter(viewport, filter) end

---@param viewport RID
---@param repeat_ RenderingServer.CanvasItemTextureRepeat
function RenderingServer.viewport_set_default_canvas_item_texture_repeat(viewport, repeat_) end

---@param viewport RID
---@param canvas RID
---@param offset Transform2D
function RenderingServer.viewport_set_canvas_transform(viewport, canvas, offset) end

---@param viewport RID
---@param canvas RID
---@param layer integer
---@param sublayer integer
function RenderingServer.viewport_set_canvas_stacking(viewport, canvas, layer, sublayer) end

---@param viewport RID
---@param enabled boolean
function RenderingServer.viewport_set_transparent_background(viewport, enabled) end

---@param viewport RID
---@param transform Transform2D
function RenderingServer.viewport_set_global_canvas_transform(viewport, transform) end

---@param viewport RID
---@param oversize RenderingServer.ViewportSDFOversize
---@param scale RenderingServer.ViewportSDFScale
function RenderingServer.viewport_set_sdf_oversize_and_scale(viewport, oversize, scale) end

---@param viewport RID
---@param size integer
---@param use_16_bits boolean?  # Default = false
function RenderingServer.viewport_set_positional_shadow_atlas_size(viewport, size, use_16_bits) end

---@param viewport RID
---@param quadrant integer
---@param subdivision integer
function RenderingServer.viewport_set_positional_shadow_atlas_quadrant_subdivision(viewport, quadrant, subdivision) end

---@param viewport RID
---@param msaa RenderingServer.ViewportMSAA
function RenderingServer.viewport_set_msaa_3d(viewport, msaa) end

---@param viewport RID
---@param msaa RenderingServer.ViewportMSAA
function RenderingServer.viewport_set_msaa_2d(viewport, msaa) end

---@param viewport RID
---@param enabled boolean
function RenderingServer.viewport_set_use_hdr_2d(viewport, enabled) end

---@param viewport RID
---@param mode RenderingServer.ViewportScreenSpaceAA
function RenderingServer.viewport_set_screen_space_aa(viewport, mode) end

---@param viewport RID
---@param enable boolean
function RenderingServer.viewport_set_use_taa(viewport, enable) end

---@param viewport RID
---@param enable boolean
function RenderingServer.viewport_set_use_debanding(viewport, enable) end

---@param viewport RID
---@param enable boolean
function RenderingServer.viewport_set_use_occlusion_culling(viewport, enable) end

---@param rays_per_thread integer
function RenderingServer.viewport_set_occlusion_rays_per_thread(rays_per_thread) end

---@param quality RenderingServer.ViewportOcclusionCullingBuildQuality
function RenderingServer.viewport_set_occlusion_culling_build_quality(quality) end

---@param viewport RID
---@param type RenderingServer.ViewportRenderInfoType
---@param info RenderingServer.ViewportRenderInfo
---@return integer
function RenderingServer.viewport_get_render_info(viewport, type, info) end

---@param viewport RID
---@param draw RenderingServer.ViewportDebugDraw
function RenderingServer.viewport_set_debug_draw(viewport, draw) end

---@param viewport RID
---@param enable boolean
function RenderingServer.viewport_set_measure_render_time(viewport, enable) end

---@param viewport RID
---@return number
function RenderingServer.viewport_get_measured_render_time_cpu(viewport) end

---@param viewport RID
---@return number
function RenderingServer.viewport_get_measured_render_time_gpu(viewport) end

---@param viewport RID
---@param mode RenderingServer.ViewportVRSMode
function RenderingServer.viewport_set_vrs_mode(viewport, mode) end

---@param viewport RID
---@param mode RenderingServer.ViewportVRSUpdateMode
function RenderingServer.viewport_set_vrs_update_mode(viewport, mode) end

---@param viewport RID
---@param texture RID
function RenderingServer.viewport_set_vrs_texture(viewport, texture) end

---@return RID
function RenderingServer.sky_create() end

---@param sky RID
---@param radiance_size integer
function RenderingServer.sky_set_radiance_size(sky, radiance_size) end

---@param sky RID
---@param mode RenderingServer.SkyMode
function RenderingServer.sky_set_mode(sky, mode) end

---@param sky RID
---@param material RID
function RenderingServer.sky_set_material(sky, material) end

---@param sky RID
---@param energy number
---@param bake_irradiance boolean
---@param size Vector2i
---@return Image
function RenderingServer.sky_bake_panorama(sky, energy, bake_irradiance, size) end

---@return RID
function RenderingServer.compositor_effect_create() end

---@param effect RID
---@param enabled boolean
function RenderingServer.compositor_effect_set_enabled(effect, enabled) end

---@param effect RID
---@param callback_type RenderingServer.CompositorEffectCallbackType
---@param callback (Callable|function)
function RenderingServer.compositor_effect_set_callback(effect, callback_type, callback) end

---@param effect RID
---@param flag RenderingServer.CompositorEffectFlags
---@param set boolean
function RenderingServer.compositor_effect_set_flag(effect, flag, set) end

---@return RID
function RenderingServer.compositor_create() end

---@param compositor RID
---@param effects Array<RID>
function RenderingServer.compositor_set_compositor_effects(compositor, effects) end

---@return RID
function RenderingServer.environment_create() end

---@param env RID
---@param bg RenderingServer.EnvironmentBG
function RenderingServer.environment_set_background(env, bg) end

---@param env RID
---@param id integer
function RenderingServer.environment_set_camera_id(env, id) end

---@param env RID
---@param sky RID
function RenderingServer.environment_set_sky(env, sky) end

---@param env RID
---@param scale number
function RenderingServer.environment_set_sky_custom_fov(env, scale) end

---@param env RID
---@param orientation Basis
function RenderingServer.environment_set_sky_orientation(env, orientation) end

---@param env RID
---@param color Color
function RenderingServer.environment_set_bg_color(env, color) end

---@param env RID
---@param multiplier number
---@param exposure_value number
function RenderingServer.environment_set_bg_energy(env, multiplier, exposure_value) end

---@param env RID
---@param max_layer integer
function RenderingServer.environment_set_canvas_max_layer(env, max_layer) end

---@param env RID
---@param color Color
---@param ambient RenderingServer.EnvironmentAmbientSource?  # Default = 0
---@param energy number?  # Default = 1.0
---@param sky_contribution number?  # Default = 0.0
---@param reflection_source RenderingServer.EnvironmentReflectionSource?  # Default = 0
function RenderingServer.environment_set_ambient_light(env, color, ambient, energy, sky_contribution, reflection_source) end

---@param env RID
---@param enable boolean
---@param levels PackedFloat32Array
---@param intensity number
---@param strength number
---@param mix number
---@param bloom_threshold number
---@param blend_mode RenderingServer.EnvironmentGlowBlendMode
---@param hdr_bleed_threshold number
---@param hdr_bleed_scale number
---@param hdr_luminance_cap number
---@param glow_map_strength number
---@param glow_map RID
function RenderingServer.environment_set_glow(env, enable, levels, intensity, strength, mix, bloom_threshold, blend_mode, hdr_bleed_threshold, hdr_bleed_scale, hdr_luminance_cap, glow_map_strength, glow_map) end

---@param env RID
---@param tone_mapper RenderingServer.EnvironmentToneMapper
---@param exposure number
---@param white number
function RenderingServer.environment_set_tonemap(env, tone_mapper, exposure, white) end

---@param env RID
---@param enable boolean
---@param brightness number
---@param contrast number
---@param saturation number
---@param use_1d_color_correction boolean
---@param color_correction RID
function RenderingServer.environment_set_adjustment(env, enable, brightness, contrast, saturation, use_1d_color_correction, color_correction) end

---@param env RID
---@param enable boolean
---@param max_steps integer
---@param fade_in number
---@param fade_out number
---@param depth_tolerance number
function RenderingServer.environment_set_ssr(env, enable, max_steps, fade_in, fade_out, depth_tolerance) end

---@param env RID
---@param enable boolean
---@param radius number
---@param intensity number
---@param power number
---@param detail number
---@param horizon number
---@param sharpness number
---@param light_affect number
---@param ao_channel_affect number
function RenderingServer.environment_set_ssao(env, enable, radius, intensity, power, detail, horizon, sharpness, light_affect, ao_channel_affect) end

---@param env RID
---@param enable boolean
---@param light_color Color
---@param light_energy number
---@param sun_scatter number
---@param density number
---@param height number
---@param height_density number
---@param aerial_perspective number
---@param sky_affect number
---@param fog_mode RenderingServer.EnvironmentFogMode?  # Default = 0
function RenderingServer.environment_set_fog(env, enable, light_color, light_energy, sun_scatter, density, height, height_density, aerial_perspective, sky_affect, fog_mode) end

---@param env RID
---@param curve number
---@param begin number
---@param end_ number
function RenderingServer.environment_set_fog_depth(env, curve, begin, end_) end

---@param env RID
---@param enable boolean
---@param cascades integer
---@param min_cell_size number
---@param y_scale RenderingServer.EnvironmentSDFGIYScale
---@param use_occlusion boolean
---@param bounce_feedback number
---@param read_sky boolean
---@param energy number
---@param normal_bias number
---@param probe_bias number
function RenderingServer.environment_set_sdfgi(env, enable, cascades, min_cell_size, y_scale, use_occlusion, bounce_feedback, read_sky, energy, normal_bias, probe_bias) end

---@param env RID
---@param enable boolean
---@param density number
---@param albedo Color
---@param emission Color
---@param emission_energy number
---@param anisotropy number
---@param length number
---@param p_detail_spread number
---@param gi_inject number
---@param temporal_reprojection boolean
---@param temporal_reprojection_amount number
---@param ambient_inject number
---@param sky_affect number
function RenderingServer.environment_set_volumetric_fog(env, enable, density, albedo, emission, emission_energy, anisotropy, length, p_detail_spread, gi_inject, temporal_reprojection, temporal_reprojection_amount, ambient_inject, sky_affect) end

---@param enable boolean
function RenderingServer.environment_glow_set_use_bicubic_upscale(enable) end

---@param quality RenderingServer.EnvironmentSSRRoughnessQuality
function RenderingServer.environment_set_ssr_roughness_quality(quality) end

---@param quality RenderingServer.EnvironmentSSAOQuality
---@param half_size boolean
---@param adaptive_target number
---@param blur_passes integer
---@param fadeout_from number
---@param fadeout_to number
function RenderingServer.environment_set_ssao_quality(quality, half_size, adaptive_target, blur_passes, fadeout_from, fadeout_to) end

---@param quality RenderingServer.EnvironmentSSILQuality
---@param half_size boolean
---@param adaptive_target number
---@param blur_passes integer
---@param fadeout_from number
---@param fadeout_to number
function RenderingServer.environment_set_ssil_quality(quality, half_size, adaptive_target, blur_passes, fadeout_from, fadeout_to) end

---@param ray_count RenderingServer.EnvironmentSDFGIRayCount
function RenderingServer.environment_set_sdfgi_ray_count(ray_count) end

---@param frames RenderingServer.EnvironmentSDFGIFramesToConverge
function RenderingServer.environment_set_sdfgi_frames_to_converge(frames) end

---@param frames RenderingServer.EnvironmentSDFGIFramesToUpdateLight
function RenderingServer.environment_set_sdfgi_frames_to_update_light(frames) end

---@param size integer
---@param depth integer
function RenderingServer.environment_set_volumetric_fog_volume_size(size, depth) end

---@param active boolean
function RenderingServer.environment_set_volumetric_fog_filter_active(active) end

---@param environment RID
---@param bake_irradiance boolean
---@param size Vector2i
---@return Image
function RenderingServer.environment_bake_panorama(environment, bake_irradiance, size) end

---@param enable boolean
---@param amount number
---@param limit number
function RenderingServer.screen_space_roughness_limiter_set_active(enable, amount, limit) end

---@param quality RenderingServer.SubSurfaceScatteringQuality
function RenderingServer.sub_surface_scattering_set_quality(quality) end

---@param scale number
---@param depth_scale number
function RenderingServer.sub_surface_scattering_set_scale(scale, depth_scale) end

---@return RID
function RenderingServer.camera_attributes_create() end

---@param quality RenderingServer.DOFBlurQuality
---@param use_jitter boolean
function RenderingServer.camera_attributes_set_dof_blur_quality(quality, use_jitter) end

---@param shape RenderingServer.DOFBokehShape
function RenderingServer.camera_attributes_set_dof_blur_bokeh_shape(shape) end

---@param camera_attributes RID
---@param far_enable boolean
---@param far_distance number
---@param far_transition number
---@param near_enable boolean
---@param near_distance number
---@param near_transition number
---@param amount number
function RenderingServer.camera_attributes_set_dof_blur(camera_attributes, far_enable, far_distance, far_transition, near_enable, near_distance, near_transition, amount) end

---@param camera_attributes RID
---@param multiplier number
---@param normalization number
function RenderingServer.camera_attributes_set_exposure(camera_attributes, multiplier, normalization) end

---@param camera_attributes RID
---@param enable boolean
---@param min_sensitivity number
---@param max_sensitivity number
---@param speed number
---@param scale number
function RenderingServer.camera_attributes_set_auto_exposure(camera_attributes, enable, min_sensitivity, max_sensitivity, speed, scale) end

---@return RID
function RenderingServer.scenario_create() end

---@param scenario RID
---@param environment RID
function RenderingServer.scenario_set_environment(scenario, environment) end

---@param scenario RID
---@param environment RID
function RenderingServer.scenario_set_fallback_environment(scenario, environment) end

---@param scenario RID
---@param effects RID
function RenderingServer.scenario_set_camera_attributes(scenario, effects) end

---@param scenario RID
---@param compositor RID
function RenderingServer.scenario_set_compositor(scenario, compositor) end

---@param base RID
---@param scenario RID
---@return RID
function RenderingServer.instance_create2(base, scenario) end

---@return RID
function RenderingServer.instance_create() end

---@param instance RID
---@param base RID
function RenderingServer.instance_set_base(instance, base) end

---@param instance RID
---@param scenario RID
function RenderingServer.instance_set_scenario(instance, scenario) end

---@param instance RID
---@param mask integer
function RenderingServer.instance_set_layer_mask(instance, mask) end

---@param instance RID
---@param sorting_offset number
---@param use_aabb_center boolean
function RenderingServer.instance_set_pivot_data(instance, sorting_offset, use_aabb_center) end

---@param instance RID
---@param transform Transform3D
function RenderingServer.instance_set_transform(instance, transform) end

---@param instance RID
---@param id integer
function RenderingServer.instance_attach_object_instance_id(instance, id) end

---@param instance RID
---@param shape integer
---@param weight number
function RenderingServer.instance_set_blend_shape_weight(instance, shape, weight) end

---@param instance RID
---@param surface integer
---@param material RID
function RenderingServer.instance_set_surface_override_material(instance, surface, material) end

---@param instance RID
---@param visible boolean
function RenderingServer.instance_set_visible(instance, visible) end

---@param instance RID
---@param transparency number
function RenderingServer.instance_geometry_set_transparency(instance, transparency) end

---@param instance RID
function RenderingServer.instance_teleport(instance) end

---@param instance RID
---@param aabb AABB
function RenderingServer.instance_set_custom_aabb(instance, aabb) end

---@param instance RID
---@param skeleton RID
function RenderingServer.instance_attach_skeleton(instance, skeleton) end

---@param instance RID
---@param margin number
function RenderingServer.instance_set_extra_visibility_margin(instance, margin) end

---@param instance RID
---@param parent RID
function RenderingServer.instance_set_visibility_parent(instance, parent) end

---@param instance RID
---@param enabled boolean
function RenderingServer.instance_set_ignore_culling(instance, enabled) end

---@param instance RID
---@param flag RenderingServer.InstanceFlags
---@param enabled boolean
function RenderingServer.instance_geometry_set_flag(instance, flag, enabled) end

---@param instance RID
---@param shadow_casting_setting RenderingServer.ShadowCastingSetting
function RenderingServer.instance_geometry_set_cast_shadows_setting(instance, shadow_casting_setting) end

---@param instance RID
---@param material RID
function RenderingServer.instance_geometry_set_material_override(instance, material) end

---@param instance RID
---@param material RID
function RenderingServer.instance_geometry_set_material_overlay(instance, material) end

---@param instance RID
---@param min number
---@param max number
---@param min_margin number
---@param max_margin number
---@param fade_mode RenderingServer.VisibilityRangeFadeMode
function RenderingServer.instance_geometry_set_visibility_range(instance, min, max, min_margin, max_margin, fade_mode) end

---@param instance RID
---@param lightmap RID
---@param lightmap_uv_scale Rect2
---@param lightmap_slice integer
function RenderingServer.instance_geometry_set_lightmap(instance, lightmap, lightmap_uv_scale, lightmap_slice) end

---@param instance RID
---@param lod_bias number
function RenderingServer.instance_geometry_set_lod_bias(instance, lod_bias) end

---@param instance RID
---@param parameter string
---@param value Object
function RenderingServer.instance_geometry_set_shader_parameter(instance, parameter, value) end

---@param instance RID
---@param parameter string
---@return Object
function RenderingServer.instance_geometry_get_shader_parameter(instance, parameter) end

---@param instance RID
---@param parameter string
---@return Object
function RenderingServer.instance_geometry_get_shader_parameter_default_value(instance, parameter) end

---@param instance RID
---@return Array<Dictionary>
function RenderingServer.instance_geometry_get_shader_parameter_list(instance) end

---@param aabb AABB
---@param scenario RID?  # Default = RID(0)
---@return PackedInt64Array
function RenderingServer.instances_cull_aabb(aabb, scenario) end

---@param from Vector3
---@param to Vector3
---@param scenario RID?  # Default = RID(0)
---@return PackedInt64Array
function RenderingServer.instances_cull_ray(from, to, scenario) end

---@param convex Array<Plane>
---@param scenario RID?  # Default = RID(0)
---@return PackedInt64Array
function RenderingServer.instances_cull_convex(convex, scenario) end

---@param base RID
---@param material_overrides Array<RID>
---@param image_size Vector2i
---@return Array<Image>
function RenderingServer.bake_render_uv2(base, material_overrides, image_size) end

---@return RID
function RenderingServer.canvas_create() end

---@param canvas RID
---@param item RID
---@param mirroring Vector2
function RenderingServer.canvas_set_item_mirroring(canvas, item, mirroring) end

---@param item RID
---@param repeat_size Vector2
---@param repeat_times integer
function RenderingServer.canvas_set_item_repeat(item, repeat_size, repeat_times) end

---@param canvas RID
---@param color Color
function RenderingServer.canvas_set_modulate(canvas, color) end

---@param disable boolean
function RenderingServer.canvas_set_disable_scale(disable) end

---@return RID
function RenderingServer.canvas_texture_create() end

---@param canvas_texture RID
---@param channel RenderingServer.CanvasTextureChannel
---@param texture RID
function RenderingServer.canvas_texture_set_channel(canvas_texture, channel, texture) end

---@param canvas_texture RID
---@param base_color Color
---@param shininess number
function RenderingServer.canvas_texture_set_shading_parameters(canvas_texture, base_color, shininess) end

---@param canvas_texture RID
---@param filter RenderingServer.CanvasItemTextureFilter
function RenderingServer.canvas_texture_set_texture_filter(canvas_texture, filter) end

---@param canvas_texture RID
---@param repeat_ RenderingServer.CanvasItemTextureRepeat
function RenderingServer.canvas_texture_set_texture_repeat(canvas_texture, repeat_) end

---@return RID
function RenderingServer.canvas_item_create() end

---@param item RID
---@param parent RID
function RenderingServer.canvas_item_set_parent(item, parent) end

---@param item RID
---@param filter RenderingServer.CanvasItemTextureFilter
function RenderingServer.canvas_item_set_default_texture_filter(item, filter) end

---@param item RID
---@param repeat_ RenderingServer.CanvasItemTextureRepeat
function RenderingServer.canvas_item_set_default_texture_repeat(item, repeat_) end

---@param item RID
---@param visible boolean
function RenderingServer.canvas_item_set_visible(item, visible) end

---@param item RID
---@param mask integer
function RenderingServer.canvas_item_set_light_mask(item, mask) end

---@param item RID
---@param visibility_layer integer
function RenderingServer.canvas_item_set_visibility_layer(item, visibility_layer) end

---@param item RID
---@param transform Transform2D
function RenderingServer.canvas_item_set_transform(item, transform) end

---@param item RID
---@param clip boolean
function RenderingServer.canvas_item_set_clip(item, clip) end

---@param item RID
---@param enabled boolean
function RenderingServer.canvas_item_set_distance_field_mode(item, enabled) end

---@param item RID
---@param use_custom_rect boolean
---@param rect Rect2?  # Default = [P: (0.0, 0.0), S: (0.0, 0.0)]
function RenderingServer.canvas_item_set_custom_rect(item, use_custom_rect, rect) end

---@param item RID
---@param color Color
function RenderingServer.canvas_item_set_modulate(item, color) end

---@param item RID
---@param color Color
function RenderingServer.canvas_item_set_self_modulate(item, color) end

---@param item RID
---@param enabled boolean
function RenderingServer.canvas_item_set_draw_behind_parent(item, enabled) end

---@param item RID
---@param interpolated boolean
function RenderingServer.canvas_item_set_interpolated(item, interpolated) end

---@param item RID
function RenderingServer.canvas_item_reset_physics_interpolation(item) end

---@param item RID
---@param transform Transform2D
function RenderingServer.canvas_item_transform_physics_interpolation(item, transform) end

---@param item RID
---@param from Vector2
---@param to Vector2
---@param color Color
---@param width number?  # Default = -1.0
---@param antialiased boolean?  # Default = false
function RenderingServer.canvas_item_add_line(item, from, to, color, width, antialiased) end

---@param item RID
---@param points PackedVector2Array
---@param colors PackedColorArray
---@param width number?  # Default = -1.0
---@param antialiased boolean?  # Default = false
function RenderingServer.canvas_item_add_polyline(item, points, colors, width, antialiased) end

---@param item RID
---@param points PackedVector2Array
---@param colors PackedColorArray
---@param width number?  # Default = -1.0
---@param antialiased boolean?  # Default = false
function RenderingServer.canvas_item_add_multiline(item, points, colors, width, antialiased) end

---@param item RID
---@param rect Rect2
---@param color Color
---@param antialiased boolean?  # Default = false
function RenderingServer.canvas_item_add_rect(item, rect, color, antialiased) end

---@param item RID
---@param pos Vector2
---@param radius number
---@param color Color
---@param antialiased boolean?  # Default = false
function RenderingServer.canvas_item_add_circle(item, pos, radius, color, antialiased) end

---@param item RID
---@param rect Rect2
---@param texture RID
---@param tile boolean?  # Default = false
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param transpose boolean?  # Default = false
function RenderingServer.canvas_item_add_texture_rect(item, rect, texture, tile, modulate, transpose) end

---@param item RID
---@param rect Rect2
---@param texture RID
---@param src_rect Rect2
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param outline_size integer?  # Default = 0
---@param px_range number?  # Default = 1.0
---@param scale number?  # Default = 1.0
function RenderingServer.canvas_item_add_msdf_texture_rect_region(item, rect, texture, src_rect, modulate, outline_size, px_range, scale) end

---@param item RID
---@param rect Rect2
---@param texture RID
---@param src_rect Rect2
---@param modulate Color
function RenderingServer.canvas_item_add_lcd_texture_rect_region(item, rect, texture, src_rect, modulate) end

---@param item RID
---@param rect Rect2
---@param texture RID
---@param src_rect Rect2
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param transpose boolean?  # Default = false
---@param clip_uv boolean?  # Default = true
function RenderingServer.canvas_item_add_texture_rect_region(item, rect, texture, src_rect, modulate, transpose, clip_uv) end

---@param item RID
---@param rect Rect2
---@param source Rect2
---@param texture RID
---@param topleft Vector2
---@param bottomright Vector2
---@param x_axis_mode RenderingServer.NinePatchAxisMode?  # Default = 0
---@param y_axis_mode RenderingServer.NinePatchAxisMode?  # Default = 0
---@param draw_center boolean?  # Default = true
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
function RenderingServer.canvas_item_add_nine_patch(item, rect, source, texture, topleft, bottomright, x_axis_mode, y_axis_mode, draw_center, modulate) end

---@param item RID
---@param points PackedVector2Array
---@param colors PackedColorArray
---@param uvs PackedVector2Array
---@param texture RID
function RenderingServer.canvas_item_add_primitive(item, points, colors, uvs, texture) end

---@param item RID
---@param points PackedVector2Array
---@param colors PackedColorArray
---@param uvs PackedVector2Array?  # Default = []
---@param texture RID?  # Default = RID(0)
function RenderingServer.canvas_item_add_polygon(item, points, colors, uvs, texture) end

---@param item RID
---@param indices PackedInt32Array
---@param points PackedVector2Array
---@param colors PackedColorArray
---@param uvs PackedVector2Array?  # Default = []
---@param bones PackedInt32Array?  # Default = []
---@param weights PackedFloat32Array?  # Default = []
---@param texture RID?  # Default = RID(0)
---@param count integer?  # Default = -1
function RenderingServer.canvas_item_add_triangle_array(item, indices, points, colors, uvs, bones, weights, texture, count) end

---@param item RID
---@param mesh RID
---@param transform Transform2D?  # Default = [X: (1.0, 0.0), Y: (0.0, 1.0), O: (0.0, 0.0)]
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param texture RID?  # Default = RID(0)
function RenderingServer.canvas_item_add_mesh(item, mesh, transform, modulate, texture) end

---@param item RID
---@param mesh RID
---@param texture RID?  # Default = RID(0)
function RenderingServer.canvas_item_add_multimesh(item, mesh, texture) end

---@param item RID
---@param particles RID
---@param texture RID
function RenderingServer.canvas_item_add_particles(item, particles, texture) end

---@param item RID
---@param transform Transform2D
function RenderingServer.canvas_item_add_set_transform(item, transform) end

---@param item RID
---@param ignore boolean
function RenderingServer.canvas_item_add_clip_ignore(item, ignore) end

---@param item RID
---@param animation_length number
---@param slice_begin number
---@param slice_end number
---@param offset number?  # Default = 0.0
function RenderingServer.canvas_item_add_animation_slice(item, animation_length, slice_begin, slice_end, offset) end

---@param item RID
---@param enabled boolean
function RenderingServer.canvas_item_set_sort_children_by_y(item, enabled) end

---@param item RID
---@param z_index integer
function RenderingServer.canvas_item_set_z_index(item, z_index) end

---@param item RID
---@param enabled boolean
function RenderingServer.canvas_item_set_z_as_relative_to_parent(item, enabled) end

---@param item RID
---@param enabled boolean
---@param rect Rect2
function RenderingServer.canvas_item_set_copy_to_backbuffer(item, enabled, rect) end

---@param item RID
---@param skeleton RID
function RenderingServer.canvas_item_attach_skeleton(item, skeleton) end

---@param item RID
function RenderingServer.canvas_item_clear(item) end

---@param item RID
---@param index integer
function RenderingServer.canvas_item_set_draw_index(item, index) end

---@param item RID
---@param material RID
function RenderingServer.canvas_item_set_material(item, material) end

---@param item RID
---@param enabled boolean
function RenderingServer.canvas_item_set_use_parent_material(item, enabled) end

---@param instance RID
---@param parameter string
---@param value Object
function RenderingServer.canvas_item_set_instance_shader_parameter(instance, parameter, value) end

---@param instance RID
---@param parameter string
---@return Object
function RenderingServer.canvas_item_get_instance_shader_parameter(instance, parameter) end

---@param instance RID
---@param parameter string
---@return Object
function RenderingServer.canvas_item_get_instance_shader_parameter_default_value(instance, parameter) end

---@param instance RID
---@return Array<Dictionary>
function RenderingServer.canvas_item_get_instance_shader_parameter_list(instance) end

---@param item RID
---@param enable boolean
---@param area Rect2
---@param enter_callable (Callable|function)
---@param exit_callable (Callable|function)
function RenderingServer.canvas_item_set_visibility_notifier(item, enable, area, enter_callable, exit_callable) end

---@param item RID
---@param mode RenderingServer.CanvasGroupMode
---@param clear_margin number?  # Default = 5.0
---@param fit_empty boolean?  # Default = false
---@param fit_margin number?  # Default = 0.0
---@param blur_mipmaps boolean?  # Default = false
function RenderingServer.canvas_item_set_canvas_group_mode(item, mode, clear_margin, fit_empty, fit_margin, blur_mipmaps) end

---@param item RID
---@return Rect2
function RenderingServer.debug_canvas_item_get_rect(item) end

---@return RID
function RenderingServer.canvas_light_create() end

---@param light RID
---@param canvas RID
function RenderingServer.canvas_light_attach_to_canvas(light, canvas) end

---@param light RID
---@param enabled boolean
function RenderingServer.canvas_light_set_enabled(light, enabled) end

---@param light RID
---@param scale number
function RenderingServer.canvas_light_set_texture_scale(light, scale) end

---@param light RID
---@param transform Transform2D
function RenderingServer.canvas_light_set_transform(light, transform) end

---@param light RID
---@param texture RID
function RenderingServer.canvas_light_set_texture(light, texture) end

---@param light RID
---@param offset Vector2
function RenderingServer.canvas_light_set_texture_offset(light, offset) end

---@param light RID
---@param color Color
function RenderingServer.canvas_light_set_color(light, color) end

---@param light RID
---@param height number
function RenderingServer.canvas_light_set_height(light, height) end

---@param light RID
---@param energy number
function RenderingServer.canvas_light_set_energy(light, energy) end

---@param light RID
---@param min_z integer
---@param max_z integer
function RenderingServer.canvas_light_set_z_range(light, min_z, max_z) end

---@param light RID
---@param min_layer integer
---@param max_layer integer
function RenderingServer.canvas_light_set_layer_range(light, min_layer, max_layer) end

---@param light RID
---@param mask integer
function RenderingServer.canvas_light_set_item_cull_mask(light, mask) end

---@param light RID
---@param mask integer
function RenderingServer.canvas_light_set_item_shadow_cull_mask(light, mask) end

---@param light RID
---@param mode RenderingServer.CanvasLightMode
function RenderingServer.canvas_light_set_mode(light, mode) end

---@param light RID
---@param enabled boolean
function RenderingServer.canvas_light_set_shadow_enabled(light, enabled) end

---@param light RID
---@param filter RenderingServer.CanvasLightShadowFilter
function RenderingServer.canvas_light_set_shadow_filter(light, filter) end

---@param light RID
---@param color Color
function RenderingServer.canvas_light_set_shadow_color(light, color) end

---@param light RID
---@param smooth number
function RenderingServer.canvas_light_set_shadow_smooth(light, smooth) end

---@param light RID
---@param mode RenderingServer.CanvasLightBlendMode
function RenderingServer.canvas_light_set_blend_mode(light, mode) end

---@param light RID
---@param interpolated boolean
function RenderingServer.canvas_light_set_interpolated(light, interpolated) end

---@param light RID
function RenderingServer.canvas_light_reset_physics_interpolation(light) end

---@param light RID
---@param transform Transform2D
function RenderingServer.canvas_light_transform_physics_interpolation(light, transform) end

---@return RID
function RenderingServer.canvas_light_occluder_create() end

---@param occluder RID
---@param canvas RID
function RenderingServer.canvas_light_occluder_attach_to_canvas(occluder, canvas) end

---@param occluder RID
---@param enabled boolean
function RenderingServer.canvas_light_occluder_set_enabled(occluder, enabled) end

---@param occluder RID
---@param polygon RID
function RenderingServer.canvas_light_occluder_set_polygon(occluder, polygon) end

---@param occluder RID
---@param enable boolean
function RenderingServer.canvas_light_occluder_set_as_sdf_collision(occluder, enable) end

---@param occluder RID
---@param transform Transform2D
function RenderingServer.canvas_light_occluder_set_transform(occluder, transform) end

---@param occluder RID
---@param mask integer
function RenderingServer.canvas_light_occluder_set_light_mask(occluder, mask) end

---@param occluder RID
---@param interpolated boolean
function RenderingServer.canvas_light_occluder_set_interpolated(occluder, interpolated) end

---@param occluder RID
function RenderingServer.canvas_light_occluder_reset_physics_interpolation(occluder) end

---@param occluder RID
---@param transform Transform2D
function RenderingServer.canvas_light_occluder_transform_physics_interpolation(occluder, transform) end

---@return RID
function RenderingServer.canvas_occluder_polygon_create() end

---@param occluder_polygon RID
---@param shape PackedVector2Array
---@param closed boolean
function RenderingServer.canvas_occluder_polygon_set_shape(occluder_polygon, shape, closed) end

---@param occluder_polygon RID
---@param mode RenderingServer.CanvasOccluderPolygonCullMode
function RenderingServer.canvas_occluder_polygon_set_cull_mode(occluder_polygon, mode) end

---@param size integer
function RenderingServer.canvas_set_shadow_texture_size(size) end

---@param name string
---@param type RenderingServer.GlobalShaderParameterType
---@param default_value Object
function RenderingServer.global_shader_parameter_add(name, type, default_value) end

---@param name string
function RenderingServer.global_shader_parameter_remove(name) end

---@return Array<StringName>
function RenderingServer.global_shader_parameter_get_list() end

---@param name string
---@param value Object
function RenderingServer.global_shader_parameter_set(name, value) end

---@param name string
---@param value Object
function RenderingServer.global_shader_parameter_set_override(name, value) end

---@param name string
---@return Object
function RenderingServer.global_shader_parameter_get(name) end

---@param name string
---@return RenderingServer.GlobalShaderParameterType
function RenderingServer.global_shader_parameter_get_type(name) end

---@param rid RID
function RenderingServer.free_rid(rid) end

---@param callable (Callable|function)
function RenderingServer.request_frame_drawn_callback(callable) end

---@return boolean
function RenderingServer.has_changed() end

---@param info RenderingServer.RenderingInfo
---@return integer
function RenderingServer.get_rendering_info(info) end

---@return string
function RenderingServer.get_video_adapter_name() end

---@return string
function RenderingServer.get_video_adapter_vendor() end

---@return RenderingDevice.DeviceType
function RenderingServer.get_video_adapter_type() end

---@return string
function RenderingServer.get_video_adapter_api_version() end

---@return string
function RenderingServer.get_current_rendering_driver_name() end

---@return string
function RenderingServer.get_current_rendering_method() end

---@param latitudes integer
---@param longitudes integer
---@param radius number
---@return RID
function RenderingServer.make_sphere_mesh(latitudes, longitudes, radius) end

---@return RID
function RenderingServer.get_test_cube() end

---@return RID
function RenderingServer.get_test_texture() end

---@return RID
function RenderingServer.get_white_texture() end

---@param image Image
---@param color Color
---@param scale boolean
---@param use_filter boolean?  # Default = true
function RenderingServer.set_boot_image(image, color, scale, use_filter) end

---@return Color
function RenderingServer.get_default_clear_color() end

---@param color Color
function RenderingServer.set_default_clear_color(color) end

---@param feature string
---@return boolean
function RenderingServer.has_os_feature(feature) end

---@param generate boolean
function RenderingServer.set_debug_generate_wireframes(generate) end

---@return boolean
function RenderingServer.is_render_loop_enabled() end

---@param enabled boolean
function RenderingServer.set_render_loop_enabled(enabled) end

---@return number
function RenderingServer.get_frame_setup_time_cpu() end

function RenderingServer.force_sync() end

---@param swap_buffers boolean?  # Default = true
---@param frame_step number?  # Default = 0.0
function RenderingServer.force_draw(swap_buffers, frame_step) end

---@return RenderingDevice
function RenderingServer.get_rendering_device() end

---@return RenderingDevice
function RenderingServer.create_local_rendering_device() end

---@return boolean
function RenderingServer.is_on_render_thread() end

---@param callable (Callable|function)
function RenderingServer.call_on_render_thread(callable) end

---@param feature RenderingServer.Features
---@return boolean
function RenderingServer.has_feature(feature) end
