---@meta _
-- Generated API for game version 0.9.1

---@class Viewport : Node
---@field disable_3d boolean
---@field use_xr boolean
---@field own_world_3d boolean
---@field world_3d World3D
---@field world_2d World2D
---@field transparent_bg boolean
---@field handle_input_locally boolean
---@field snap_2d_transforms_to_pixel boolean
---@field snap_2d_vertices_to_pixel boolean
---@field msaa_2d integer
---@field msaa_3d integer
---@field screen_space_aa integer
---@field use_taa boolean
---@field use_debanding boolean
---@field use_occlusion_culling boolean
---@field mesh_lod_threshold number
---@field debug_draw integer
---@field use_hdr_2d boolean
---@field scaling_3d_mode integer
---@field scaling_3d_scale number
---@field texture_mipmap_bias number
---@field anisotropic_filtering_level integer
---@field fsr_sharpness number
---@field vrs_mode integer
---@field vrs_update_mode integer
---@field vrs_texture Texture2D
---@field canvas_item_default_texture_filter integer
---@field canvas_item_default_texture_repeat integer
---@field audio_listener_enable_2d boolean
---@field audio_listener_enable_3d boolean
---@field physics_object_picking boolean
---@field physics_object_picking_sort boolean
---@field physics_object_picking_first_only boolean
---@field gui_disable_input boolean
---@field gui_snap_controls_to_pixels boolean
---@field gui_embed_subwindows boolean
---@field sdf_oversize integer
---@field sdf_scale integer
---@field positional_shadow_atlas_size integer
---@field positional_shadow_atlas_16_bits boolean
---@field positional_shadow_atlas_quad_0 integer
---@field positional_shadow_atlas_quad_1 integer
---@field positional_shadow_atlas_quad_2 integer
---@field positional_shadow_atlas_quad_3 integer
---@field canvas_transform Transform2D
---@field global_canvas_transform Transform2D
---@field canvas_cull_mask integer
---@field oversampling boolean
---@field oversampling_override number
local Viewport = {}

---@param world_2d World2D
function Viewport.set_world_2d(world_2d) end

---@return World2D
function Viewport.get_world_2d() end

---@return World2D
function Viewport.find_world_2d() end

---@param xform Transform2D
function Viewport.set_canvas_transform(xform) end

---@return Transform2D
function Viewport.get_canvas_transform() end

---@param xform Transform2D
function Viewport.set_global_canvas_transform(xform) end

---@return Transform2D
function Viewport.get_global_canvas_transform() end

---@return Transform2D
function Viewport.get_stretch_transform() end

---@return Transform2D
function Viewport.get_final_transform() end

---@return Transform2D
function Viewport.get_screen_transform() end

---@return Rect2
function Viewport.get_visible_rect() end

---@param enable boolean
function Viewport.set_transparent_background(enable) end

---@return boolean
function Viewport.has_transparent_background() end

---@param enable boolean
function Viewport.set_use_hdr_2d(enable) end

---@return boolean
function Viewport.is_using_hdr_2d() end

---@param msaa Viewport.MSAA
function Viewport.set_msaa_2d(msaa) end

---@return Viewport.MSAA
function Viewport.get_msaa_2d() end

---@param msaa Viewport.MSAA
function Viewport.set_msaa_3d(msaa) end

---@return Viewport.MSAA
function Viewport.get_msaa_3d() end

---@param screen_space_aa Viewport.ScreenSpaceAA
function Viewport.set_screen_space_aa(screen_space_aa) end

---@return Viewport.ScreenSpaceAA
function Viewport.get_screen_space_aa() end

---@param enable boolean
function Viewport.set_use_taa(enable) end

---@return boolean
function Viewport.is_using_taa() end

---@param enable boolean
function Viewport.set_use_debanding(enable) end

---@return boolean
function Viewport.is_using_debanding() end

---@param enable boolean
function Viewport.set_use_occlusion_culling(enable) end

---@return boolean
function Viewport.is_using_occlusion_culling() end

---@param debug_draw Viewport.DebugDraw
function Viewport.set_debug_draw(debug_draw) end

---@return Viewport.DebugDraw
function Viewport.get_debug_draw() end

---@param enable boolean
function Viewport.set_use_oversampling(enable) end

---@return boolean
function Viewport.is_using_oversampling() end

---@param oversampling number
function Viewport.set_oversampling_override(oversampling) end

---@return number
function Viewport.get_oversampling_override() end

---@return number
function Viewport.get_oversampling() end

---@param type Viewport.RenderInfoType
---@param info Viewport.RenderInfo
---@return integer
function Viewport.get_render_info(type, info) end

---@return ViewportTexture
function Viewport.get_texture() end

---@param enable boolean
function Viewport.set_physics_object_picking(enable) end

---@return boolean
function Viewport.get_physics_object_picking() end

---@param enable boolean
function Viewport.set_physics_object_picking_sort(enable) end

---@return boolean
function Viewport.get_physics_object_picking_sort() end

---@param enable boolean
function Viewport.set_physics_object_picking_first_only(enable) end

---@return boolean
function Viewport.get_physics_object_picking_first_only() end

---@return RID
function Viewport.get_viewport_rid() end

---@param text string
function Viewport.push_text_input(text) end

---@param event InputEvent
---@param in_local_coords boolean?  # Default = false
function Viewport.push_input(event, in_local_coords) end

---@param event InputEvent
---@param in_local_coords boolean?  # Default = false
function Viewport.push_unhandled_input(event, in_local_coords) end

function Viewport.notify_mouse_entered() end

function Viewport.notify_mouse_exited() end

---@return Vector2
function Viewport.get_mouse_position() end

---@param position Vector2
function Viewport.warp_mouse(position) end

function Viewport.update_mouse_cursor_state() end

function Viewport.gui_cancel_drag() end

---@return Object
function Viewport.gui_get_drag_data() end

---@return string
function Viewport.gui_get_drag_description() end

---@param description string
function Viewport.gui_set_drag_description(description) end

---@return boolean
function Viewport.gui_is_dragging() end

---@return boolean
function Viewport.gui_is_drag_successful() end

function Viewport.gui_release_focus() end

---@return Control
function Viewport.gui_get_focus_owner() end

---@return Control
function Viewport.gui_get_hovered_control() end

---@param disable boolean
function Viewport.set_disable_input(disable) end

---@return boolean
function Viewport.is_input_disabled() end

---@param size integer
function Viewport.set_positional_shadow_atlas_size(size) end

---@return integer
function Viewport.get_positional_shadow_atlas_size() end

---@param enable boolean
function Viewport.set_positional_shadow_atlas_16_bits(enable) end

---@return boolean
function Viewport.get_positional_shadow_atlas_16_bits() end

---@param enabled boolean
function Viewport.set_snap_controls_to_pixels(enabled) end

---@return boolean
function Viewport.is_snap_controls_to_pixels_enabled() end

---@param enabled boolean
function Viewport.set_snap_2d_transforms_to_pixel(enabled) end

---@return boolean
function Viewport.is_snap_2d_transforms_to_pixel_enabled() end

---@param enabled boolean
function Viewport.set_snap_2d_vertices_to_pixel(enabled) end

---@return boolean
function Viewport.is_snap_2d_vertices_to_pixel_enabled() end

---@param quadrant integer
---@param subdiv Viewport.PositionalShadowAtlasQuadrantSubdiv
function Viewport.set_positional_shadow_atlas_quadrant_subdiv(quadrant, subdiv) end

---@param quadrant integer
---@return Viewport.PositionalShadowAtlasQuadrantSubdiv
function Viewport.get_positional_shadow_atlas_quadrant_subdiv(quadrant) end

function Viewport.set_input_as_handled() end

---@return boolean
function Viewport.is_input_handled() end

---@param enable boolean
function Viewport.set_handle_input_locally(enable) end

---@return boolean
function Viewport.is_handling_input_locally() end

---@param mode Viewport.DefaultCanvasItemTextureFilter
function Viewport.set_default_canvas_item_texture_filter(mode) end

---@return Viewport.DefaultCanvasItemTextureFilter
function Viewport.get_default_canvas_item_texture_filter() end

---@param enable boolean
function Viewport.set_embedding_subwindows(enable) end

---@return boolean
function Viewport.is_embedding_subwindows() end

---@return Array<Window>
function Viewport.get_embedded_subwindows() end

---@param mask integer
function Viewport.set_canvas_cull_mask(mask) end

---@return integer
function Viewport.get_canvas_cull_mask() end

---@param layer integer
---@param enable boolean
function Viewport.set_canvas_cull_mask_bit(layer, enable) end

---@param layer integer
---@return boolean
function Viewport.get_canvas_cull_mask_bit(layer) end

---@param mode Viewport.DefaultCanvasItemTextureRepeat
function Viewport.set_default_canvas_item_texture_repeat(mode) end

---@return Viewport.DefaultCanvasItemTextureRepeat
function Viewport.get_default_canvas_item_texture_repeat() end

---@param oversize Viewport.SDFOversize
function Viewport.set_sdf_oversize(oversize) end

---@return Viewport.SDFOversize
function Viewport.get_sdf_oversize() end

---@param scale Viewport.SDFScale
function Viewport.set_sdf_scale(scale) end

---@return Viewport.SDFScale
function Viewport.get_sdf_scale() end

---@param pixels number
function Viewport.set_mesh_lod_threshold(pixels) end

---@return number
function Viewport.get_mesh_lod_threshold() end

---@param enable boolean
function Viewport.set_as_audio_listener_2d(enable) end

---@return boolean
function Viewport.is_audio_listener_2d() end

---@return AudioListener2D
function Viewport.get_audio_listener_2d() end

---@return Camera2D
function Viewport.get_camera_2d() end

---@param world_3d World3D
function Viewport.set_world_3d(world_3d) end

---@return World3D
function Viewport.get_world_3d() end

---@return World3D
function Viewport.find_world_3d() end

---@param enable boolean
function Viewport.set_use_own_world_3d(enable) end

---@return boolean
function Viewport.is_using_own_world_3d() end

---@return AudioListener3D
function Viewport.get_audio_listener_3d() end

---@return Camera3D
function Viewport.get_camera_3d() end

---@param enable boolean
function Viewport.set_as_audio_listener_3d(enable) end

---@return boolean
function Viewport.is_audio_listener_3d() end

---@param disable boolean
function Viewport.set_disable_3d(disable) end

---@return boolean
function Viewport.is_3d_disabled() end

---@param use boolean
function Viewport.set_use_xr(use) end

---@return boolean
function Viewport.is_using_xr() end

---@param scaling_3d_mode Viewport.Scaling3DMode
function Viewport.set_scaling_3d_mode(scaling_3d_mode) end

---@return Viewport.Scaling3DMode
function Viewport.get_scaling_3d_mode() end

---@param scale number
function Viewport.set_scaling_3d_scale(scale) end

---@return number
function Viewport.get_scaling_3d_scale() end

---@param fsr_sharpness number
function Viewport.set_fsr_sharpness(fsr_sharpness) end

---@return number
function Viewport.get_fsr_sharpness() end

---@param texture_mipmap_bias number
function Viewport.set_texture_mipmap_bias(texture_mipmap_bias) end

---@return number
function Viewport.get_texture_mipmap_bias() end

---@param anisotropic_filtering_level Viewport.AnisotropicFiltering
function Viewport.set_anisotropic_filtering_level(anisotropic_filtering_level) end

---@return Viewport.AnisotropicFiltering
function Viewport.get_anisotropic_filtering_level() end

---@param mode Viewport.VRSMode
function Viewport.set_vrs_mode(mode) end

---@return Viewport.VRSMode
function Viewport.get_vrs_mode() end

---@param mode Viewport.VRSUpdateMode
function Viewport.set_vrs_update_mode(mode) end

---@return Viewport.VRSUpdateMode
function Viewport.get_vrs_update_mode() end

---@param texture Texture2D
function Viewport.set_vrs_texture(texture) end

---@return Texture2D
function Viewport.get_vrs_texture() end
