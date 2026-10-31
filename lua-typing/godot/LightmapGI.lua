---@meta _
-- Generated API for game version 0.10.0

---@class LightmapGI : VisualInstance3D
---@field quality integer
---@field supersampling boolean
---@field supersampling_factor number
---@field bounces integer
---@field bounce_indirect_energy number
---@field directional boolean
---@field shadowmask_mode integer
---@field use_texture_for_bounces boolean
---@field interior boolean
---@field use_denoiser boolean
---@field denoiser_strength number
---@field denoiser_range integer
---@field bias number
---@field texel_scale number
---@field max_texture_size integer
---@field environment_mode integer
---@field environment_custom_sky Sky
---@field environment_custom_color Color
---@field environment_custom_energy number
---@field camera_attributes CameraAttributesPractical,CameraAttributesPhysical
---@field generate_probes_subdiv integer
---@field light_data LightmapGIData
local LightmapGI = {}

---@param data LightmapGIData
function LightmapGI.set_light_data(data) end

---@return LightmapGIData
function LightmapGI.get_light_data() end

---@param bake_quality LightmapGI.BakeQuality
function LightmapGI.set_bake_quality(bake_quality) end

---@return LightmapGI.BakeQuality
function LightmapGI.get_bake_quality() end

---@param bounces integer
function LightmapGI.set_bounces(bounces) end

---@return integer
function LightmapGI.get_bounces() end

---@param bounce_indirect_energy number
function LightmapGI.set_bounce_indirect_energy(bounce_indirect_energy) end

---@return number
function LightmapGI.get_bounce_indirect_energy() end

---@param subdivision LightmapGI.GenerateProbes
function LightmapGI.set_generate_probes(subdivision) end

---@return LightmapGI.GenerateProbes
function LightmapGI.get_generate_probes() end

---@param bias number
function LightmapGI.set_bias(bias) end

---@return number
function LightmapGI.get_bias() end

---@param mode LightmapGI.EnvironmentMode
function LightmapGI.set_environment_mode(mode) end

---@return LightmapGI.EnvironmentMode
function LightmapGI.get_environment_mode() end

---@param sky Sky
function LightmapGI.set_environment_custom_sky(sky) end

---@return Sky
function LightmapGI.get_environment_custom_sky() end

---@param color Color
function LightmapGI.set_environment_custom_color(color) end

---@return Color
function LightmapGI.get_environment_custom_color() end

---@param energy number
function LightmapGI.set_environment_custom_energy(energy) end

---@return number
function LightmapGI.get_environment_custom_energy() end

---@param texel_scale number
function LightmapGI.set_texel_scale(texel_scale) end

---@return number
function LightmapGI.get_texel_scale() end

---@param max_texture_size integer
function LightmapGI.set_max_texture_size(max_texture_size) end

---@return integer
function LightmapGI.get_max_texture_size() end

---@param enable boolean
function LightmapGI.set_supersampling_enabled(enable) end

---@return boolean
function LightmapGI.is_supersampling_enabled() end

---@param factor number
function LightmapGI.set_supersampling_factor(factor) end

---@return number
function LightmapGI.get_supersampling_factor() end

---@param use_denoiser boolean
function LightmapGI.set_use_denoiser(use_denoiser) end

---@return boolean
function LightmapGI.is_using_denoiser() end

---@param denoiser_strength number
function LightmapGI.set_denoiser_strength(denoiser_strength) end

---@return number
function LightmapGI.get_denoiser_strength() end

---@param denoiser_range integer
function LightmapGI.set_denoiser_range(denoiser_range) end

---@return integer
function LightmapGI.get_denoiser_range() end

---@param enable boolean
function LightmapGI.set_interior(enable) end

---@return boolean
function LightmapGI.is_interior() end

---@param directional boolean
function LightmapGI.set_directional(directional) end

---@return boolean
function LightmapGI.is_directional() end

---@param mode LightmapGIData.ShadowmaskMode
function LightmapGI.set_shadowmask_mode(mode) end

---@return LightmapGIData.ShadowmaskMode
function LightmapGI.get_shadowmask_mode() end

---@param use_texture_for_bounces boolean
function LightmapGI.set_use_texture_for_bounces(use_texture_for_bounces) end

---@return boolean
function LightmapGI.is_using_texture_for_bounces() end

---@param camera_attributes CameraAttributes
function LightmapGI.set_camera_attributes(camera_attributes) end

---@return CameraAttributes
function LightmapGI.get_camera_attributes() end
