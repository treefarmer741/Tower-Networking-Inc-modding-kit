---@meta _
-- Generated API for game version 0.10.0

---@class Environment : Resource
---@field background_mode integer
---@field background_color Color
---@field background_energy_multiplier number
---@field background_intensity number
---@field background_canvas_max_layer integer
---@field background_camera_feed_id integer
---@field sky Sky
---@field sky_custom_fov number
---@field sky_rotation Vector3
---@field ambient_light_source integer
---@field ambient_light_color Color
---@field ambient_light_sky_contribution number
---@field ambient_light_energy number
---@field reflected_light_source integer
---@field tonemap_mode integer
---@field tonemap_exposure number
---@field tonemap_white number
---@field ssr_enabled boolean
---@field ssr_max_steps integer
---@field ssr_fade_in number
---@field ssr_fade_out number
---@field ssr_depth_tolerance number
---@field ssao_enabled boolean
---@field ssao_radius number
---@field ssao_intensity number
---@field ssao_power number
---@field ssao_detail number
---@field ssao_horizon number
---@field ssao_sharpness number
---@field ssao_light_affect number
---@field ssao_ao_channel_affect number
---@field ssil_enabled boolean
---@field ssil_radius number
---@field ssil_intensity number
---@field ssil_sharpness number
---@field ssil_normal_rejection number
---@field sdfgi_enabled boolean
---@field sdfgi_use_occlusion boolean
---@field sdfgi_read_sky_light boolean
---@field sdfgi_bounce_feedback number
---@field sdfgi_cascades integer
---@field sdfgi_min_cell_size number
---@field sdfgi_cascade0_distance number
---@field sdfgi_max_distance number
---@field sdfgi_y_scale integer
---@field sdfgi_energy number
---@field sdfgi_normal_bias number
---@field sdfgi_probe_bias number
---@field glow_enabled boolean
---@field glow_normalized boolean
---@field glow_intensity number
---@field glow_strength number
---@field glow_mix number
---@field glow_bloom number
---@field glow_blend_mode integer
---@field glow_hdr_threshold number
---@field glow_hdr_scale number
---@field glow_hdr_luminance_cap number
---@field glow_map_strength number
---@field glow_map Texture2D
---@field fog_enabled boolean
---@field fog_mode integer
---@field fog_light_color Color
---@field fog_light_energy number
---@field fog_sun_scatter number
---@field fog_density number
---@field fog_aerial_perspective number
---@field fog_sky_affect number
---@field fog_height number
---@field fog_height_density number
---@field fog_depth_curve number
---@field fog_depth_begin number
---@field fog_depth_end number
---@field volumetric_fog_enabled boolean
---@field volumetric_fog_density number
---@field volumetric_fog_albedo Color
---@field volumetric_fog_emission Color
---@field volumetric_fog_emission_energy number
---@field volumetric_fog_gi_inject number
---@field volumetric_fog_anisotropy number
---@field volumetric_fog_length number
---@field volumetric_fog_detail_spread number
---@field volumetric_fog_ambient_inject number
---@field volumetric_fog_sky_affect number
---@field volumetric_fog_temporal_reprojection_enabled boolean
---@field volumetric_fog_temporal_reprojection_amount number
---@field adjustment_enabled boolean
---@field adjustment_brightness number
---@field adjustment_contrast number
---@field adjustment_saturation number
---@field adjustment_color_correction Texture2D,Texture3D
local Environment = {
	---@type number
	["glow_levels/1"] = nil,
	---@type number
	["glow_levels/2"] = nil,
	---@type number
	["glow_levels/3"] = nil,
	---@type number
	["glow_levels/4"] = nil,
	---@type number
	["glow_levels/5"] = nil,
	---@type number
	["glow_levels/6"] = nil,
	---@type number
	["glow_levels/7"] = nil,
}

---@param mode Environment.BGMode
function Environment.set_background(mode) end

---@return Environment.BGMode
function Environment.get_background() end

---@param sky Sky
function Environment.set_sky(sky) end

---@return Sky
function Environment.get_sky() end

---@param scale number
function Environment.set_sky_custom_fov(scale) end

---@return number
function Environment.get_sky_custom_fov() end

---@param euler_radians Vector3
function Environment.set_sky_rotation(euler_radians) end

---@return Vector3
function Environment.get_sky_rotation() end

---@param color Color
function Environment.set_bg_color(color) end

---@return Color
function Environment.get_bg_color() end

---@param energy number
function Environment.set_bg_energy_multiplier(energy) end

---@return number
function Environment.get_bg_energy_multiplier() end

---@param energy number
function Environment.set_bg_intensity(energy) end

---@return number
function Environment.get_bg_intensity() end

---@param layer integer
function Environment.set_canvas_max_layer(layer) end

---@return integer
function Environment.get_canvas_max_layer() end

---@param id integer
function Environment.set_camera_feed_id(id) end

---@return integer
function Environment.get_camera_feed_id() end

---@param color Color
function Environment.set_ambient_light_color(color) end

---@return Color
function Environment.get_ambient_light_color() end

---@param source Environment.AmbientSource
function Environment.set_ambient_source(source) end

---@return Environment.AmbientSource
function Environment.get_ambient_source() end

---@param energy number
function Environment.set_ambient_light_energy(energy) end

---@return number
function Environment.get_ambient_light_energy() end

---@param ratio number
function Environment.set_ambient_light_sky_contribution(ratio) end

---@return number
function Environment.get_ambient_light_sky_contribution() end

---@param source Environment.ReflectionSource
function Environment.set_reflection_source(source) end

---@return Environment.ReflectionSource
function Environment.get_reflection_source() end

---@param mode Environment.ToneMapper
function Environment.set_tonemapper(mode) end

---@return Environment.ToneMapper
function Environment.get_tonemapper() end

---@param exposure number
function Environment.set_tonemap_exposure(exposure) end

---@return number
function Environment.get_tonemap_exposure() end

---@param white number
function Environment.set_tonemap_white(white) end

---@return number
function Environment.get_tonemap_white() end

---@param enabled boolean
function Environment.set_ssr_enabled(enabled) end

---@return boolean
function Environment.is_ssr_enabled() end

---@param max_steps integer
function Environment.set_ssr_max_steps(max_steps) end

---@return integer
function Environment.get_ssr_max_steps() end

---@param fade_in number
function Environment.set_ssr_fade_in(fade_in) end

---@return number
function Environment.get_ssr_fade_in() end

---@param fade_out number
function Environment.set_ssr_fade_out(fade_out) end

---@return number
function Environment.get_ssr_fade_out() end

---@param depth_tolerance number
function Environment.set_ssr_depth_tolerance(depth_tolerance) end

---@return number
function Environment.get_ssr_depth_tolerance() end

---@param enabled boolean
function Environment.set_ssao_enabled(enabled) end

---@return boolean
function Environment.is_ssao_enabled() end

---@param radius number
function Environment.set_ssao_radius(radius) end

---@return number
function Environment.get_ssao_radius() end

---@param intensity number
function Environment.set_ssao_intensity(intensity) end

---@return number
function Environment.get_ssao_intensity() end

---@param power number
function Environment.set_ssao_power(power) end

---@return number
function Environment.get_ssao_power() end

---@param detail number
function Environment.set_ssao_detail(detail) end

---@return number
function Environment.get_ssao_detail() end

---@param horizon number
function Environment.set_ssao_horizon(horizon) end

---@return number
function Environment.get_ssao_horizon() end

---@param sharpness number
function Environment.set_ssao_sharpness(sharpness) end

---@return number
function Environment.get_ssao_sharpness() end

---@param amount number
function Environment.set_ssao_direct_light_affect(amount) end

---@return number
function Environment.get_ssao_direct_light_affect() end

---@param amount number
function Environment.set_ssao_ao_channel_affect(amount) end

---@return number
function Environment.get_ssao_ao_channel_affect() end

---@param enabled boolean
function Environment.set_ssil_enabled(enabled) end

---@return boolean
function Environment.is_ssil_enabled() end

---@param radius number
function Environment.set_ssil_radius(radius) end

---@return number
function Environment.get_ssil_radius() end

---@param intensity number
function Environment.set_ssil_intensity(intensity) end

---@return number
function Environment.get_ssil_intensity() end

---@param sharpness number
function Environment.set_ssil_sharpness(sharpness) end

---@return number
function Environment.get_ssil_sharpness() end

---@param normal_rejection number
function Environment.set_ssil_normal_rejection(normal_rejection) end

---@return number
function Environment.get_ssil_normal_rejection() end

---@param enabled boolean
function Environment.set_sdfgi_enabled(enabled) end

---@return boolean
function Environment.is_sdfgi_enabled() end

---@param amount integer
function Environment.set_sdfgi_cascades(amount) end

---@return integer
function Environment.get_sdfgi_cascades() end

---@param size number
function Environment.set_sdfgi_min_cell_size(size) end

---@return number
function Environment.get_sdfgi_min_cell_size() end

---@param distance number
function Environment.set_sdfgi_max_distance(distance) end

---@return number
function Environment.get_sdfgi_max_distance() end

---@param distance number
function Environment.set_sdfgi_cascade0_distance(distance) end

---@return number
function Environment.get_sdfgi_cascade0_distance() end

---@param scale Environment.SDFGIYScale
function Environment.set_sdfgi_y_scale(scale) end

---@return Environment.SDFGIYScale
function Environment.get_sdfgi_y_scale() end

---@param enable boolean
function Environment.set_sdfgi_use_occlusion(enable) end

---@return boolean
function Environment.is_sdfgi_using_occlusion() end

---@param amount number
function Environment.set_sdfgi_bounce_feedback(amount) end

---@return number
function Environment.get_sdfgi_bounce_feedback() end

---@param enable boolean
function Environment.set_sdfgi_read_sky_light(enable) end

---@return boolean
function Environment.is_sdfgi_reading_sky_light() end

---@param amount number
function Environment.set_sdfgi_energy(amount) end

---@return number
function Environment.get_sdfgi_energy() end

---@param bias number
function Environment.set_sdfgi_normal_bias(bias) end

---@return number
function Environment.get_sdfgi_normal_bias() end

---@param bias number
function Environment.set_sdfgi_probe_bias(bias) end

---@return number
function Environment.get_sdfgi_probe_bias() end

---@param enabled boolean
function Environment.set_glow_enabled(enabled) end

---@return boolean
function Environment.is_glow_enabled() end

---@param idx integer
---@param intensity number
function Environment.set_glow_level(idx, intensity) end

---@param idx integer
---@return number
function Environment.get_glow_level(idx) end

---@param normalize boolean
function Environment.set_glow_normalized(normalize) end

---@return boolean
function Environment.is_glow_normalized() end

---@param intensity number
function Environment.set_glow_intensity(intensity) end

---@return number
function Environment.get_glow_intensity() end

---@param strength number
function Environment.set_glow_strength(strength) end

---@return number
function Environment.get_glow_strength() end

---@param mix number
function Environment.set_glow_mix(mix) end

---@return number
function Environment.get_glow_mix() end

---@param amount number
function Environment.set_glow_bloom(amount) end

---@return number
function Environment.get_glow_bloom() end

---@param mode Environment.GlowBlendMode
function Environment.set_glow_blend_mode(mode) end

---@return Environment.GlowBlendMode
function Environment.get_glow_blend_mode() end

---@param threshold number
function Environment.set_glow_hdr_bleed_threshold(threshold) end

---@return number
function Environment.get_glow_hdr_bleed_threshold() end

---@param scale number
function Environment.set_glow_hdr_bleed_scale(scale) end

---@return number
function Environment.get_glow_hdr_bleed_scale() end

---@param amount number
function Environment.set_glow_hdr_luminance_cap(amount) end

---@return number
function Environment.get_glow_hdr_luminance_cap() end

---@param strength number
function Environment.set_glow_map_strength(strength) end

---@return number
function Environment.get_glow_map_strength() end

---@param mode Texture
function Environment.set_glow_map(mode) end

---@return Texture
function Environment.get_glow_map() end

---@param enabled boolean
function Environment.set_fog_enabled(enabled) end

---@return boolean
function Environment.is_fog_enabled() end

---@param mode Environment.FogMode
function Environment.set_fog_mode(mode) end

---@return Environment.FogMode
function Environment.get_fog_mode() end

---@param light_color Color
function Environment.set_fog_light_color(light_color) end

---@return Color
function Environment.get_fog_light_color() end

---@param light_energy number
function Environment.set_fog_light_energy(light_energy) end

---@return number
function Environment.get_fog_light_energy() end

---@param sun_scatter number
function Environment.set_fog_sun_scatter(sun_scatter) end

---@return number
function Environment.get_fog_sun_scatter() end

---@param density number
function Environment.set_fog_density(density) end

---@return number
function Environment.get_fog_density() end

---@param height number
function Environment.set_fog_height(height) end

---@return number
function Environment.get_fog_height() end

---@param height_density number
function Environment.set_fog_height_density(height_density) end

---@return number
function Environment.get_fog_height_density() end

---@param aerial_perspective number
function Environment.set_fog_aerial_perspective(aerial_perspective) end

---@return number
function Environment.get_fog_aerial_perspective() end

---@param sky_affect number
function Environment.set_fog_sky_affect(sky_affect) end

---@return number
function Environment.get_fog_sky_affect() end

---@param curve number
function Environment.set_fog_depth_curve(curve) end

---@return number
function Environment.get_fog_depth_curve() end

---@param begin number
function Environment.set_fog_depth_begin(begin) end

---@return number
function Environment.get_fog_depth_begin() end

---@param end_ number
function Environment.set_fog_depth_end(end_) end

---@return number
function Environment.get_fog_depth_end() end

---@param enabled boolean
function Environment.set_volumetric_fog_enabled(enabled) end

---@return boolean
function Environment.is_volumetric_fog_enabled() end

---@param color Color
function Environment.set_volumetric_fog_emission(color) end

---@return Color
function Environment.get_volumetric_fog_emission() end

---@param color Color
function Environment.set_volumetric_fog_albedo(color) end

---@return Color
function Environment.get_volumetric_fog_albedo() end

---@param density number
function Environment.set_volumetric_fog_density(density) end

---@return number
function Environment.get_volumetric_fog_density() end

---@param begin number
function Environment.set_volumetric_fog_emission_energy(begin) end

---@return number
function Environment.get_volumetric_fog_emission_energy() end

---@param anisotropy number
function Environment.set_volumetric_fog_anisotropy(anisotropy) end

---@return number
function Environment.get_volumetric_fog_anisotropy() end

---@param length number
function Environment.set_volumetric_fog_length(length) end

---@return number
function Environment.get_volumetric_fog_length() end

---@param detail_spread number
function Environment.set_volumetric_fog_detail_spread(detail_spread) end

---@return number
function Environment.get_volumetric_fog_detail_spread() end

---@param gi_inject number
function Environment.set_volumetric_fog_gi_inject(gi_inject) end

---@return number
function Environment.get_volumetric_fog_gi_inject() end

---@param enabled number
function Environment.set_volumetric_fog_ambient_inject(enabled) end

---@return number
function Environment.get_volumetric_fog_ambient_inject() end

---@param sky_affect number
function Environment.set_volumetric_fog_sky_affect(sky_affect) end

---@return number
function Environment.get_volumetric_fog_sky_affect() end

---@param enabled boolean
function Environment.set_volumetric_fog_temporal_reprojection_enabled(enabled) end

---@return boolean
function Environment.is_volumetric_fog_temporal_reprojection_enabled() end

---@param temporal_reprojection_amount number
function Environment.set_volumetric_fog_temporal_reprojection_amount(temporal_reprojection_amount) end

---@return number
function Environment.get_volumetric_fog_temporal_reprojection_amount() end

---@param enabled boolean
function Environment.set_adjustment_enabled(enabled) end

---@return boolean
function Environment.is_adjustment_enabled() end

---@param brightness number
function Environment.set_adjustment_brightness(brightness) end

---@return number
function Environment.get_adjustment_brightness() end

---@param contrast number
function Environment.set_adjustment_contrast(contrast) end

---@return number
function Environment.get_adjustment_contrast() end

---@param saturation number
function Environment.set_adjustment_saturation(saturation) end

---@return number
function Environment.get_adjustment_saturation() end

---@param color_correction Texture
function Environment.set_adjustment_color_correction(color_correction) end

---@return Texture
function Environment.get_adjustment_color_correction() end
