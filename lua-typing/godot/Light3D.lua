---@meta _
-- Generated API for game version 0.10.0

---@class Light3D : VisualInstance3D
---@field light_intensity_lumens number
---@field light_intensity_lux number
---@field light_temperature number
---@field light_color Color
---@field light_energy number
---@field light_indirect_energy number
---@field light_volumetric_fog_energy number
---@field light_projector Texture2D,-AnimatedTexture,-AtlasTexture,-CameraTexture,-CanvasTexture,-MeshTexture,-Texture2DRD,-ViewportTexture
---@field light_size number
---@field light_angular_distance number
---@field light_negative boolean
---@field light_specular number
---@field light_bake_mode integer
---@field light_cull_mask integer
---@field shadow_enabled boolean
---@field shadow_bias number
---@field shadow_normal_bias number
---@field shadow_reverse_cull_face boolean
---@field shadow_transmittance_bias number
---@field shadow_opacity number
---@field shadow_blur number
---@field shadow_caster_mask integer
---@field distance_fade_enabled boolean
---@field distance_fade_begin number
---@field distance_fade_shadow number
---@field distance_fade_length number
---@field editor_only boolean
local Light3D = {}

---@param editor_only boolean
function Light3D.set_editor_only(editor_only) end

---@return boolean
function Light3D.is_editor_only() end

---@param param Light3D.Param
---@param value number
function Light3D.set_param(param, value) end

---@param param Light3D.Param
---@return number
function Light3D.get_param(param) end

---@param enabled boolean
function Light3D.set_shadow(enabled) end

---@return boolean
function Light3D.has_shadow() end

---@param enabled boolean
function Light3D.set_negative(enabled) end

---@return boolean
function Light3D.is_negative() end

---@param cull_mask integer
function Light3D.set_cull_mask(cull_mask) end

---@return integer
function Light3D.get_cull_mask() end

---@param enable boolean
function Light3D.set_enable_distance_fade(enable) end

---@return boolean
function Light3D.is_distance_fade_enabled() end

---@param distance number
function Light3D.set_distance_fade_begin(distance) end

---@return number
function Light3D.get_distance_fade_begin() end

---@param distance number
function Light3D.set_distance_fade_shadow(distance) end

---@return number
function Light3D.get_distance_fade_shadow() end

---@param distance number
function Light3D.set_distance_fade_length(distance) end

---@return number
function Light3D.get_distance_fade_length() end

---@param color Color
function Light3D.set_color(color) end

---@return Color
function Light3D.get_color() end

---@param enable boolean
function Light3D.set_shadow_reverse_cull_face(enable) end

---@return boolean
function Light3D.get_shadow_reverse_cull_face() end

---@param caster_mask integer
function Light3D.set_shadow_caster_mask(caster_mask) end

---@return integer
function Light3D.get_shadow_caster_mask() end

---@param bake_mode Light3D.BakeMode
function Light3D.set_bake_mode(bake_mode) end

---@return Light3D.BakeMode
function Light3D.get_bake_mode() end

---@param projector Texture2D
function Light3D.set_projector(projector) end

---@return Texture2D
function Light3D.get_projector() end

---@param temperature number
function Light3D.set_temperature(temperature) end

---@return number
function Light3D.get_temperature() end

---@return Color
function Light3D.get_correlated_color() end
