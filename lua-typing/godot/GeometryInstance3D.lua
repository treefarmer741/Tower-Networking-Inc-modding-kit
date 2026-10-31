---@meta _
-- Generated API for game version 0.10.0

---@class GeometryInstance3D : VisualInstance3D
---@field material_override BaseMaterial3D,ShaderMaterial
---@field material_overlay BaseMaterial3D,ShaderMaterial
---@field transparency number
---@field cast_shadow integer
---@field extra_cull_margin number
---@field custom_aabb AABB
---@field lod_bias number
---@field ignore_occlusion_culling boolean
---@field gi_mode integer
---@field gi_lightmap_texel_scale number
---@field gi_lightmap_scale integer
---@field visibility_range_begin number
---@field visibility_range_begin_margin number
---@field visibility_range_end number
---@field visibility_range_end_margin number
---@field visibility_range_fade_mode integer
local GeometryInstance3D = {}

---@param material Material
function GeometryInstance3D.set_material_override(material) end

---@return Material
function GeometryInstance3D.get_material_override() end

---@param material Material
function GeometryInstance3D.set_material_overlay(material) end

---@return Material
function GeometryInstance3D.get_material_overlay() end

---@param shadow_casting_setting GeometryInstance3D.ShadowCastingSetting
function GeometryInstance3D.set_cast_shadows_setting(shadow_casting_setting) end

---@return GeometryInstance3D.ShadowCastingSetting
function GeometryInstance3D.get_cast_shadows_setting() end

---@param bias number
function GeometryInstance3D.set_lod_bias(bias) end

---@return number
function GeometryInstance3D.get_lod_bias() end

---@param transparency number
function GeometryInstance3D.set_transparency(transparency) end

---@return number
function GeometryInstance3D.get_transparency() end

---@param distance number
function GeometryInstance3D.set_visibility_range_end_margin(distance) end

---@return number
function GeometryInstance3D.get_visibility_range_end_margin() end

---@param distance number
function GeometryInstance3D.set_visibility_range_end(distance) end

---@return number
function GeometryInstance3D.get_visibility_range_end() end

---@param distance number
function GeometryInstance3D.set_visibility_range_begin_margin(distance) end

---@return number
function GeometryInstance3D.get_visibility_range_begin_margin() end

---@param distance number
function GeometryInstance3D.set_visibility_range_begin(distance) end

---@return number
function GeometryInstance3D.get_visibility_range_begin() end

---@param mode GeometryInstance3D.VisibilityRangeFadeMode
function GeometryInstance3D.set_visibility_range_fade_mode(mode) end

---@return GeometryInstance3D.VisibilityRangeFadeMode
function GeometryInstance3D.get_visibility_range_fade_mode() end

---@param name string
---@param value Object
function GeometryInstance3D.set_instance_shader_parameter(name, value) end

---@param name string
---@return Object
function GeometryInstance3D.get_instance_shader_parameter(name) end

---@param margin number
function GeometryInstance3D.set_extra_cull_margin(margin) end

---@return number
function GeometryInstance3D.get_extra_cull_margin() end

---@param scale number
function GeometryInstance3D.set_lightmap_texel_scale(scale) end

---@return number
function GeometryInstance3D.get_lightmap_texel_scale() end

---@param scale GeometryInstance3D.LightmapScale
function GeometryInstance3D.set_lightmap_scale(scale) end

---@return GeometryInstance3D.LightmapScale
function GeometryInstance3D.get_lightmap_scale() end

---@param mode GeometryInstance3D.GIMode
function GeometryInstance3D.set_gi_mode(mode) end

---@return GeometryInstance3D.GIMode
function GeometryInstance3D.get_gi_mode() end

---@param ignore_culling boolean
function GeometryInstance3D.set_ignore_occlusion_culling(ignore_culling) end

---@return boolean
function GeometryInstance3D.is_ignoring_occlusion_culling() end

---@param aabb AABB
function GeometryInstance3D.set_custom_aabb(aabb) end

---@return AABB
function GeometryInstance3D.get_custom_aabb() end
