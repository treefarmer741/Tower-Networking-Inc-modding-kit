---@meta _
-- Generated API for game version 0.9.1

---@class RenderSceneBuffersConfiguration : RefCounted
---@field render_target RID
---@field internal_size Vector2i
---@field target_size Vector2i
---@field view_count integer
---@field scaling_3d_mode integer
---@field msaa_3d integer
---@field screen_space_aa integer
---@field fsr_sharpness boolean
---@field texture_mipmap_bias boolean
---@field anisotropic_filtering_level integer
local RenderSceneBuffersConfiguration = {}

---@return RID
function RenderSceneBuffersConfiguration.get_render_target() end

---@param render_target RID
function RenderSceneBuffersConfiguration.set_render_target(render_target) end

---@return Vector2i
function RenderSceneBuffersConfiguration.get_internal_size() end

---@param internal_size Vector2i
function RenderSceneBuffersConfiguration.set_internal_size(internal_size) end

---@return Vector2i
function RenderSceneBuffersConfiguration.get_target_size() end

---@param target_size Vector2i
function RenderSceneBuffersConfiguration.set_target_size(target_size) end

---@return integer
function RenderSceneBuffersConfiguration.get_view_count() end

---@param view_count integer
function RenderSceneBuffersConfiguration.set_view_count(view_count) end

---@return RenderingServer.ViewportScaling3DMode
function RenderSceneBuffersConfiguration.get_scaling_3d_mode() end

---@param scaling_3d_mode RenderingServer.ViewportScaling3DMode
function RenderSceneBuffersConfiguration.set_scaling_3d_mode(scaling_3d_mode) end

---@return RenderingServer.ViewportMSAA
function RenderSceneBuffersConfiguration.get_msaa_3d() end

---@param msaa_3d RenderingServer.ViewportMSAA
function RenderSceneBuffersConfiguration.set_msaa_3d(msaa_3d) end

---@return RenderingServer.ViewportScreenSpaceAA
function RenderSceneBuffersConfiguration.get_screen_space_aa() end

---@param screen_space_aa RenderingServer.ViewportScreenSpaceAA
function RenderSceneBuffersConfiguration.set_screen_space_aa(screen_space_aa) end

---@return number
function RenderSceneBuffersConfiguration.get_fsr_sharpness() end

---@param fsr_sharpness number
function RenderSceneBuffersConfiguration.set_fsr_sharpness(fsr_sharpness) end

---@return number
function RenderSceneBuffersConfiguration.get_texture_mipmap_bias() end

---@param texture_mipmap_bias number
function RenderSceneBuffersConfiguration.set_texture_mipmap_bias(texture_mipmap_bias) end

---@return RenderingServer.ViewportAnisotropicFiltering
function RenderSceneBuffersConfiguration.get_anisotropic_filtering_level() end

---@param anisotropic_filtering_level RenderingServer.ViewportAnisotropicFiltering
function RenderSceneBuffersConfiguration.set_anisotropic_filtering_level(anisotropic_filtering_level) end
