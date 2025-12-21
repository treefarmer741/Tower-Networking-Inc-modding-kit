---@meta _
-- Generated API for game version 0.9.1

---@class OpenXRAPIExtension : RefCounted
local OpenXRAPIExtension = {}

---@return integer
function OpenXRAPIExtension.get_instance() end

---@return integer
function OpenXRAPIExtension.get_system_id() end

---@return integer
function OpenXRAPIExtension.get_session() end

---@param pose integer
---@return Transform3D
function OpenXRAPIExtension.transform_from_pose(pose) end

---@param result integer
---@param format string
---@param args Array<any>
---@return boolean
function OpenXRAPIExtension.xr_result(result, format, args) end

---@param check_run_in_editor boolean
---@return boolean
function OpenXRAPIExtension.openxr_is_enabled(check_run_in_editor) end

---@param name string
---@return integer
function OpenXRAPIExtension.get_instance_proc_addr(name) end

---@param result integer
---@return string
function OpenXRAPIExtension.get_error_string(result) end

---@param swapchain_format integer
---@return string
function OpenXRAPIExtension.get_swapchain_format_name(swapchain_format) end

---@param object_type integer
---@param object_handle integer
---@param object_name string
function OpenXRAPIExtension.set_object_name(object_type, object_handle, object_name) end

---@param label_name string
function OpenXRAPIExtension.begin_debug_label_region(label_name) end

function OpenXRAPIExtension.end_debug_label_region() end

---@param label_name string
function OpenXRAPIExtension.insert_debug_label(label_name) end

---@return boolean
function OpenXRAPIExtension.is_initialized() end

---@return boolean
function OpenXRAPIExtension.is_running() end

---@param space integer
function OpenXRAPIExtension.set_custom_play_space(space) end

---@return integer
function OpenXRAPIExtension.get_play_space() end

---@return integer
function OpenXRAPIExtension.get_predicted_display_time() end

---@return integer
function OpenXRAPIExtension.get_next_frame_time() end

---@return boolean
function OpenXRAPIExtension.can_render() end

---@param name string
---@param action_set RID
---@return RID
function OpenXRAPIExtension.find_action(name, action_set) end

---@param action RID
---@return integer
function OpenXRAPIExtension.action_get_handle(action) end

---@param hand_index integer
---@return integer
function OpenXRAPIExtension.get_hand_tracker(hand_index) end

---@param extension OpenXRExtensionWrapper
function OpenXRAPIExtension.register_composition_layer_provider(extension) end

---@param extension OpenXRExtensionWrapper
function OpenXRAPIExtension.unregister_composition_layer_provider(extension) end

---@param extension OpenXRExtensionWrapper
function OpenXRAPIExtension.register_projection_views_extension(extension) end

---@param extension OpenXRExtensionWrapper
function OpenXRAPIExtension.unregister_projection_views_extension(extension) end

---@param extension OpenXRExtensionWrapper
function OpenXRAPIExtension.register_frame_info_extension(extension) end

---@param extension OpenXRExtensionWrapper
function OpenXRAPIExtension.unregister_frame_info_extension(extension) end

---@return number
function OpenXRAPIExtension.get_render_state_z_near() end

---@return number
function OpenXRAPIExtension.get_render_state_z_far() end

---@param render_target RID
function OpenXRAPIExtension.set_velocity_texture(render_target) end

---@param render_target RID
function OpenXRAPIExtension.set_velocity_depth_texture(render_target) end

---@param target_size Vector2i
function OpenXRAPIExtension.set_velocity_target_size(target_size) end

---@return PackedInt64Array
function OpenXRAPIExtension.get_supported_swapchain_formats() end

---@param create_flags integer
---@param usage_flags integer
---@param swapchain_format integer
---@param width integer
---@param height integer
---@param sample_count integer
---@param array_size integer
---@return integer
function OpenXRAPIExtension.openxr_swapchain_create(create_flags, usage_flags, swapchain_format, width, height, sample_count, array_size) end

---@param swapchain integer
function OpenXRAPIExtension.openxr_swapchain_free(swapchain) end

---@param swapchain integer
---@return integer
function OpenXRAPIExtension.openxr_swapchain_get_swapchain(swapchain) end

---@param swapchain integer
function OpenXRAPIExtension.openxr_swapchain_acquire(swapchain) end

---@param swapchain integer
---@return RID
function OpenXRAPIExtension.openxr_swapchain_get_image(swapchain) end

---@param swapchain integer
function OpenXRAPIExtension.openxr_swapchain_release(swapchain) end

---@return integer
function OpenXRAPIExtension.get_projection_layer() end

---@param render_region Rect2i
function OpenXRAPIExtension.set_render_region(render_region) end

---@param enabled boolean
function OpenXRAPIExtension.set_emulate_environment_blend_mode_alpha_blend(enabled) end

---@return OpenXRAPIExtension.OpenXRAlphaBlendModeSupport
function OpenXRAPIExtension.is_environment_blend_mode_alpha_supported() end
