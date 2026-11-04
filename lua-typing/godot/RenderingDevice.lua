---@meta _
-- Generated API for game version 0.10.0

---@class RenderingDevice : Object
local RenderingDevice = {}

---@param format RDTextureFormat
---@param view RDTextureView
---@param data Array<PackedByteArray>?  # Default = []
---@return RID
function RenderingDevice.texture_create(format, view, data) end

---@param view RDTextureView
---@param with_texture RID
---@return RID
function RenderingDevice.texture_create_shared(view, with_texture) end

---@param view RDTextureView
---@param with_texture RID
---@param layer integer
---@param mipmap integer
---@param mipmaps integer?  # Default = 1
---@param slice_type RenderingDevice.TextureSliceType?  # Default = 0
---@return RID
function RenderingDevice.texture_create_shared_from_slice(view, with_texture, layer, mipmap, mipmaps, slice_type) end

---@param type RenderingDevice.TextureType
---@param format RenderingDevice.DataFormat
---@param samples RenderingDevice.TextureSamples
---@param usage_flags RenderingDevice.TextureUsageBits
---@param image integer
---@param width integer
---@param height integer
---@param depth integer
---@param layers integer
---@param mipmaps integer?  # Default = 1
---@return RID
function RenderingDevice.texture_create_from_extension(type, format, samples, usage_flags, image, width, height, depth, layers, mipmaps) end

---@param texture RID
---@param layer integer
---@param data PackedByteArray
---@return Error
function RenderingDevice.texture_update(texture, layer, data) end

---@param texture RID
---@param layer integer
---@return PackedByteArray
function RenderingDevice.texture_get_data(texture, layer) end

---@param texture RID
---@param layer integer
---@param callback (Callable|function)
---@return Error
function RenderingDevice.texture_get_data_async(texture, layer, callback) end

---@param format RenderingDevice.DataFormat
---@param usage_flags RenderingDevice.TextureUsageBits
---@return boolean
function RenderingDevice.texture_is_format_supported_for_usage(format, usage_flags) end

---@param texture RID
---@return boolean
function RenderingDevice.texture_is_shared(texture) end

---@param texture RID
---@return boolean
function RenderingDevice.texture_is_valid(texture) end

---@param texture RID
---@param discardable boolean
function RenderingDevice.texture_set_discardable(texture, discardable) end

---@param texture RID
---@return boolean
function RenderingDevice.texture_is_discardable(texture) end

---@param from_texture RID
---@param to_texture RID
---@param from_pos Vector3
---@param to_pos Vector3
---@param size Vector3
---@param src_mipmap integer
---@param dst_mipmap integer
---@param src_layer integer
---@param dst_layer integer
---@return Error
function RenderingDevice.texture_copy(from_texture, to_texture, from_pos, to_pos, size, src_mipmap, dst_mipmap, src_layer, dst_layer) end

---@param texture RID
---@param color Color
---@param base_mipmap integer
---@param mipmap_count integer
---@param base_layer integer
---@param layer_count integer
---@return Error
function RenderingDevice.texture_clear(texture, color, base_mipmap, mipmap_count, base_layer, layer_count) end

---@param from_texture RID
---@param to_texture RID
---@return Error
function RenderingDevice.texture_resolve_multisample(from_texture, to_texture) end

---@param texture RID
---@return RDTextureFormat
function RenderingDevice.texture_get_format(texture) end

---@param texture RID
---@return integer
function RenderingDevice.texture_get_native_handle(texture) end

---@param attachments Array<RDAttachmentFormat>
---@param view_count integer?  # Default = 1
---@return integer
function RenderingDevice.framebuffer_format_create(attachments, view_count) end

---@param attachments Array<RDAttachmentFormat>
---@param passes Array<RDFramebufferPass>
---@param view_count integer?  # Default = 1
---@return integer
function RenderingDevice.framebuffer_format_create_multipass(attachments, passes, view_count) end

---@param samples RenderingDevice.TextureSamples?  # Default = 0
---@return integer
function RenderingDevice.framebuffer_format_create_empty(samples) end

---@param format integer
---@param render_pass integer?  # Default = 0
---@return RenderingDevice.TextureSamples
function RenderingDevice.framebuffer_format_get_texture_samples(format, render_pass) end

---@param textures Array<RID>
---@param validate_with_format integer?  # Default = -1
---@param view_count integer?  # Default = 1
---@return RID
function RenderingDevice.framebuffer_create(textures, validate_with_format, view_count) end

---@param textures Array<RID>
---@param passes Array<RDFramebufferPass>
---@param validate_with_format integer?  # Default = -1
---@param view_count integer?  # Default = 1
---@return RID
function RenderingDevice.framebuffer_create_multipass(textures, passes, validate_with_format, view_count) end

---@param size Vector2i
---@param samples RenderingDevice.TextureSamples?  # Default = 0
---@param validate_with_format integer?  # Default = -1
---@return RID
function RenderingDevice.framebuffer_create_empty(size, samples, validate_with_format) end

---@param framebuffer RID
---@return integer
function RenderingDevice.framebuffer_get_format(framebuffer) end

---@param framebuffer RID
---@return boolean
function RenderingDevice.framebuffer_is_valid(framebuffer) end

---@param state RDSamplerState
---@return RID
function RenderingDevice.sampler_create(state) end

---@param format RenderingDevice.DataFormat
---@param sampler_filter RenderingDevice.SamplerFilter
---@return boolean
function RenderingDevice.sampler_is_format_supported_for_filter(format, sampler_filter) end

---@param size_bytes integer
---@param data PackedByteArray?  # Default = []
---@param creation_bits RenderingDevice.BufferCreationBits?  # Default = 0
---@return RID
function RenderingDevice.vertex_buffer_create(size_bytes, data, creation_bits) end

---@param vertex_descriptions Array<RDVertexAttribute>
---@return integer
function RenderingDevice.vertex_format_create(vertex_descriptions) end

---@param vertex_count integer
---@param vertex_format integer
---@param src_buffers Array<RID>
---@param offsets PackedInt64Array?  # Default = []
---@return RID
function RenderingDevice.vertex_array_create(vertex_count, vertex_format, src_buffers, offsets) end

---@param size_indices integer
---@param format RenderingDevice.IndexBufferFormat
---@param data PackedByteArray?  # Default = []
---@param use_restart_indices boolean?  # Default = false
---@param creation_bits RenderingDevice.BufferCreationBits?  # Default = 0
---@return RID
function RenderingDevice.index_buffer_create(size_indices, format, data, use_restart_indices, creation_bits) end

---@param index_buffer RID
---@param index_offset integer
---@param index_count integer
---@return RID
function RenderingDevice.index_array_create(index_buffer, index_offset, index_count) end

---@param shader_source RDShaderSource
---@param allow_cache boolean?  # Default = true
---@return RDShaderSPIRV
function RenderingDevice.shader_compile_spirv_from_source(shader_source, allow_cache) end

---@param spirv_data RDShaderSPIRV
---@param name string?  # Default = 
---@return PackedByteArray
function RenderingDevice.shader_compile_binary_from_spirv(spirv_data, name) end

---@param spirv_data RDShaderSPIRV
---@param name string?  # Default = 
---@return RID
function RenderingDevice.shader_create_from_spirv(spirv_data, name) end

---@param binary_data PackedByteArray
---@param placeholder_rid RID?  # Default = RID(0)
---@return RID
function RenderingDevice.shader_create_from_bytecode(binary_data, placeholder_rid) end

---@return RID
function RenderingDevice.shader_create_placeholder() end

---@param shader RID
---@return integer
function RenderingDevice.shader_get_vertex_input_attribute_mask(shader) end

---@param size_bytes integer
---@param data PackedByteArray?  # Default = []
---@param creation_bits RenderingDevice.BufferCreationBits?  # Default = 0
---@return RID
function RenderingDevice.uniform_buffer_create(size_bytes, data, creation_bits) end

---@param size_bytes integer
---@param data PackedByteArray?  # Default = []
---@param usage RenderingDevice.StorageBufferUsage?  # Default = 0
---@param creation_bits RenderingDevice.BufferCreationBits?  # Default = 0
---@return RID
function RenderingDevice.storage_buffer_create(size_bytes, data, usage, creation_bits) end

---@param size_bytes integer
---@param format RenderingDevice.DataFormat
---@param data PackedByteArray?  # Default = []
---@return RID
function RenderingDevice.texture_buffer_create(size_bytes, format, data) end

---@param uniforms Array<RDUniform>
---@param shader RID
---@param shader_set integer
---@return RID
function RenderingDevice.uniform_set_create(uniforms, shader, shader_set) end

---@param uniform_set RID
---@return boolean
function RenderingDevice.uniform_set_is_valid(uniform_set) end

---@param src_buffer RID
---@param dst_buffer RID
---@param src_offset integer
---@param dst_offset integer
---@param size integer
---@return Error
function RenderingDevice.buffer_copy(src_buffer, dst_buffer, src_offset, dst_offset, size) end

---@param buffer RID
---@param offset integer
---@param size_bytes integer
---@param data PackedByteArray
---@return Error
function RenderingDevice.buffer_update(buffer, offset, size_bytes, data) end

---@param buffer RID
---@param offset integer
---@param size_bytes integer
---@return Error
function RenderingDevice.buffer_clear(buffer, offset, size_bytes) end

---@param buffer RID
---@param offset_bytes integer?  # Default = 0
---@param size_bytes integer?  # Default = 0
---@return PackedByteArray
function RenderingDevice.buffer_get_data(buffer, offset_bytes, size_bytes) end

---@param buffer RID
---@param callback (Callable|function)
---@param offset_bytes integer?  # Default = 0
---@param size_bytes integer?  # Default = 0
---@return Error
function RenderingDevice.buffer_get_data_async(buffer, callback, offset_bytes, size_bytes) end

---@param buffer RID
---@return integer
function RenderingDevice.buffer_get_device_address(buffer) end

---@param shader RID
---@param framebuffer_format integer
---@param vertex_format integer
---@param primitive RenderingDevice.RenderPrimitive
---@param rasterization_state RDPipelineRasterizationState
---@param multisample_state RDPipelineMultisampleState
---@param stencil_state RDPipelineDepthStencilState
---@param color_blend_state RDPipelineColorBlendState
---@param dynamic_state_flags RenderingDevice.PipelineDynamicStateFlags?  # Default = 0
---@param for_render_pass integer?  # Default = 0
---@param specialization_constants Array<RDPipelineSpecializationConstant>?  # Default = []
---@return RID
function RenderingDevice.render_pipeline_create(shader, framebuffer_format, vertex_format, primitive, rasterization_state, multisample_state, stencil_state, color_blend_state, dynamic_state_flags, for_render_pass, specialization_constants) end

---@param render_pipeline RID
---@return boolean
function RenderingDevice.render_pipeline_is_valid(render_pipeline) end

---@param shader RID
---@param specialization_constants Array<RDPipelineSpecializationConstant>?  # Default = []
---@return RID
function RenderingDevice.compute_pipeline_create(shader, specialization_constants) end

---@param compute_pipeline RID
---@return boolean
function RenderingDevice.compute_pipeline_is_valid(compute_pipeline) end

---@param screen integer?  # Default = 0
---@return integer
function RenderingDevice.screen_get_width(screen) end

---@param screen integer?  # Default = 0
---@return integer
function RenderingDevice.screen_get_height(screen) end

---@param screen integer?  # Default = 0
---@return integer
function RenderingDevice.screen_get_framebuffer_format(screen) end

---@param screen integer?  # Default = 0
---@param clear_color Color?  # Default = (0.0, 0.0, 0.0, 1.0)
---@return integer
function RenderingDevice.draw_list_begin_for_screen(screen, clear_color) end

---@param framebuffer RID
---@param draw_flags RenderingDevice.DrawFlags?  # Default = 0
---@param clear_color_values PackedColorArray?  # Default = []
---@param clear_depth_value number?  # Default = 1.0
---@param clear_stencil_value integer?  # Default = 0
---@param region Rect2?  # Default = [P: (0.0, 0.0), S: (0.0, 0.0)]
---@param breadcrumb integer?  # Default = 0
---@return integer
function RenderingDevice.draw_list_begin(framebuffer, draw_flags, clear_color_values, clear_depth_value, clear_stencil_value, region, breadcrumb) end

---@param framebuffer RID
---@param splits integer
---@param initial_color_action RenderingDevice.InitialAction
---@param final_color_action RenderingDevice.FinalAction
---@param initial_depth_action RenderingDevice.InitialAction
---@param final_depth_action RenderingDevice.FinalAction
---@param clear_color_values PackedColorArray?  # Default = []
---@param clear_depth number?  # Default = 1.0
---@param clear_stencil integer?  # Default = 0
---@param region Rect2?  # Default = [P: (0.0, 0.0), S: (0.0, 0.0)]
---@param storage_textures Array<RID>?  # Default = []
---@return PackedInt64Array
function RenderingDevice.draw_list_begin_split(framebuffer, splits, initial_color_action, final_color_action, initial_depth_action, final_depth_action, clear_color_values, clear_depth, clear_stencil, region, storage_textures) end

---@param draw_list integer
---@param color Color
function RenderingDevice.draw_list_set_blend_constants(draw_list, color) end

---@param draw_list integer
---@param render_pipeline RID
function RenderingDevice.draw_list_bind_render_pipeline(draw_list, render_pipeline) end

---@param draw_list integer
---@param uniform_set RID
---@param set_index integer
function RenderingDevice.draw_list_bind_uniform_set(draw_list, uniform_set, set_index) end

---@param draw_list integer
---@param vertex_array RID
function RenderingDevice.draw_list_bind_vertex_array(draw_list, vertex_array) end

---@param draw_list integer
---@param index_array RID
function RenderingDevice.draw_list_bind_index_array(draw_list, index_array) end

---@param draw_list integer
---@param buffer PackedByteArray
---@param size_bytes integer
function RenderingDevice.draw_list_set_push_constant(draw_list, buffer, size_bytes) end

---@param draw_list integer
---@param use_indices boolean
---@param instances integer
---@param procedural_vertex_count integer?  # Default = 0
function RenderingDevice.draw_list_draw(draw_list, use_indices, instances, procedural_vertex_count) end

---@param draw_list integer
---@param use_indices boolean
---@param buffer RID
---@param offset integer?  # Default = 0
---@param draw_count integer?  # Default = 1
---@param stride integer?  # Default = 0
function RenderingDevice.draw_list_draw_indirect(draw_list, use_indices, buffer, offset, draw_count, stride) end

---@param draw_list integer
---@param rect Rect2?  # Default = [P: (0.0, 0.0), S: (0.0, 0.0)]
function RenderingDevice.draw_list_enable_scissor(draw_list, rect) end

---@param draw_list integer
function RenderingDevice.draw_list_disable_scissor(draw_list) end

---@return integer
function RenderingDevice.draw_list_switch_to_next_pass() end

---@param splits integer
---@return PackedInt64Array
function RenderingDevice.draw_list_switch_to_next_pass_split(splits) end

function RenderingDevice.draw_list_end() end

---@return integer
function RenderingDevice.compute_list_begin() end

---@param compute_list integer
---@param compute_pipeline RID
function RenderingDevice.compute_list_bind_compute_pipeline(compute_list, compute_pipeline) end

---@param compute_list integer
---@param buffer PackedByteArray
---@param size_bytes integer
function RenderingDevice.compute_list_set_push_constant(compute_list, buffer, size_bytes) end

---@param compute_list integer
---@param uniform_set RID
---@param set_index integer
function RenderingDevice.compute_list_bind_uniform_set(compute_list, uniform_set, set_index) end

---@param compute_list integer
---@param x_groups integer
---@param y_groups integer
---@param z_groups integer
function RenderingDevice.compute_list_dispatch(compute_list, x_groups, y_groups, z_groups) end

---@param compute_list integer
---@param buffer RID
---@param offset integer
function RenderingDevice.compute_list_dispatch_indirect(compute_list, buffer, offset) end

---@param compute_list integer
function RenderingDevice.compute_list_add_barrier(compute_list) end

function RenderingDevice.compute_list_end() end

---@param rid RID
function RenderingDevice.free_rid(rid) end

---@param name string
function RenderingDevice.capture_timestamp(name) end

---@return integer
function RenderingDevice.get_captured_timestamps_count() end

---@return integer
function RenderingDevice.get_captured_timestamps_frame() end

---@param index integer
---@return integer
function RenderingDevice.get_captured_timestamp_gpu_time(index) end

---@param index integer
---@return integer
function RenderingDevice.get_captured_timestamp_cpu_time(index) end

---@param index integer
---@return string
function RenderingDevice.get_captured_timestamp_name(index) end

---@param feature RenderingDevice.Features
---@return boolean
function RenderingDevice.has_feature(feature) end

---@param limit RenderingDevice.Limit
---@return integer
function RenderingDevice.limit_get(limit) end

---@return integer
function RenderingDevice.get_frame_delay() end

function RenderingDevice.submit() end

function RenderingDevice.sync() end

---@param from RenderingDevice.BarrierMask?  # Default = 32767
---@param to RenderingDevice.BarrierMask?  # Default = 32767
function RenderingDevice.barrier(from, to) end

function RenderingDevice.full_barrier() end

---@return RenderingDevice
function RenderingDevice.create_local_device() end

---@param id RID
---@param name string
function RenderingDevice.set_resource_name(id, name) end

---@param name string
---@param color Color
function RenderingDevice.draw_command_begin_label(name, color) end

---@param name string
---@param color Color
function RenderingDevice.draw_command_insert_label(name, color) end

function RenderingDevice.draw_command_end_label() end

---@return string
function RenderingDevice.get_device_vendor_name() end

---@return string
function RenderingDevice.get_device_name() end

---@return string
function RenderingDevice.get_device_pipeline_cache_uuid() end

---@param type RenderingDevice.MemoryType
---@return integer
function RenderingDevice.get_memory_usage(type) end

---@param resource RenderingDevice.DriverResource
---@param rid RID
---@param index integer
---@return integer
function RenderingDevice.get_driver_resource(resource, rid, index) end

---@return string
function RenderingDevice.get_perf_report() end

---@return string
function RenderingDevice.get_driver_and_device_memory_report() end

---@param type_index integer
---@return string
function RenderingDevice.get_tracked_object_name(type_index) end

---@return integer
function RenderingDevice.get_tracked_object_type_count() end

---@return integer
function RenderingDevice.get_driver_total_memory() end

---@return integer
function RenderingDevice.get_driver_allocation_count() end

---@param type integer
---@return integer
function RenderingDevice.get_driver_memory_by_object_type(type) end

---@param type integer
---@return integer
function RenderingDevice.get_driver_allocs_by_object_type(type) end

---@return integer
function RenderingDevice.get_device_total_memory() end

---@return integer
function RenderingDevice.get_device_allocation_count() end

---@param type integer
---@return integer
function RenderingDevice.get_device_memory_by_object_type(type) end

---@param type integer
---@return integer
function RenderingDevice.get_device_allocs_by_object_type(type) end
