---@meta _
-- Generated API for game version 0.10.0

---@class RenderSceneBuffersRD : RenderSceneBuffers
local RenderSceneBuffersRD = {}

---@param context string
---@param name string
---@return boolean
function RenderSceneBuffersRD.has_texture(context, name) end

---@param context string
---@param name string
---@param data_format RenderingDevice.DataFormat
---@param usage_bits integer
---@param texture_samples RenderingDevice.TextureSamples
---@param size Vector2i
---@param layers integer
---@param mipmaps integer
---@param unique boolean
---@param discardable boolean
---@return RID
function RenderSceneBuffersRD.create_texture(context, name, data_format, usage_bits, texture_samples, size, layers, mipmaps, unique, discardable) end

---@param context string
---@param name string
---@param format RDTextureFormat
---@param view RDTextureView
---@param unique boolean
---@return RID
function RenderSceneBuffersRD.create_texture_from_format(context, name, format, view, unique) end

---@param context string
---@param name string
---@param view_name string
---@param view RDTextureView
---@return RID
function RenderSceneBuffersRD.create_texture_view(context, name, view_name, view) end

---@param context string
---@param name string
---@return RID
function RenderSceneBuffersRD.get_texture(context, name) end

---@param context string
---@param name string
---@return RDTextureFormat
function RenderSceneBuffersRD.get_texture_format(context, name) end

---@param context string
---@param name string
---@param layer integer
---@param mipmap integer
---@param layers integer
---@param mipmaps integer
---@return RID
function RenderSceneBuffersRD.get_texture_slice(context, name, layer, mipmap, layers, mipmaps) end

---@param context string
---@param name string
---@param layer integer
---@param mipmap integer
---@param layers integer
---@param mipmaps integer
---@param view RDTextureView
---@return RID
function RenderSceneBuffersRD.get_texture_slice_view(context, name, layer, mipmap, layers, mipmaps, view) end

---@param context string
---@param name string
---@param mipmap integer
---@return Vector2i
function RenderSceneBuffersRD.get_texture_slice_size(context, name, mipmap) end

---@param context string
function RenderSceneBuffersRD.clear_context(context) end

---@param msaa boolean?  # Default = false
---@return RID
function RenderSceneBuffersRD.get_color_texture(msaa) end

---@param layer integer
---@param msaa boolean?  # Default = false
---@return RID
function RenderSceneBuffersRD.get_color_layer(layer, msaa) end

---@param msaa boolean?  # Default = false
---@return RID
function RenderSceneBuffersRD.get_depth_texture(msaa) end

---@param layer integer
---@param msaa boolean?  # Default = false
---@return RID
function RenderSceneBuffersRD.get_depth_layer(layer, msaa) end

---@param msaa boolean?  # Default = false
---@return RID
function RenderSceneBuffersRD.get_velocity_texture(msaa) end

---@param layer integer
---@param msaa boolean?  # Default = false
---@return RID
function RenderSceneBuffersRD.get_velocity_layer(layer, msaa) end

---@return RID
function RenderSceneBuffersRD.get_render_target() end

---@return integer
function RenderSceneBuffersRD.get_view_count() end

---@return Vector2i
function RenderSceneBuffersRD.get_internal_size() end

---@return Vector2i
function RenderSceneBuffersRD.get_target_size() end

---@return RenderingServer.ViewportScaling3DMode
function RenderSceneBuffersRD.get_scaling_3d_mode() end

---@return number
function RenderSceneBuffersRD.get_fsr_sharpness() end

---@return RenderingServer.ViewportMSAA
function RenderSceneBuffersRD.get_msaa_3d() end

---@return RenderingDevice.TextureSamples
function RenderSceneBuffersRD.get_texture_samples() end

---@return RenderingServer.ViewportScreenSpaceAA
function RenderSceneBuffersRD.get_screen_space_aa() end

---@return boolean
function RenderSceneBuffersRD.get_use_taa() end

---@return boolean
function RenderSceneBuffersRD.get_use_debanding() end
