---@meta _
-- Generated API for game version 0.9.1

---@class ReflectionProbe : VisualInstance3D
---@field update_mode integer
---@field intensity number
---@field blend_distance number
---@field max_distance number
---@field size Vector3
---@field origin_offset Vector3
---@field box_projection boolean
---@field interior boolean
---@field enable_shadows boolean
---@field cull_mask integer
---@field reflection_mask integer
---@field mesh_lod_threshold number
---@field ambient_mode integer
---@field ambient_color Color
---@field ambient_color_energy number
local ReflectionProbe = {}

---@param intensity number
function ReflectionProbe.set_intensity(intensity) end

---@return number
function ReflectionProbe.get_intensity() end

---@param blend_distance number
function ReflectionProbe.set_blend_distance(blend_distance) end

---@return number
function ReflectionProbe.get_blend_distance() end

---@param ambient ReflectionProbe.AmbientMode
function ReflectionProbe.set_ambient_mode(ambient) end

---@return ReflectionProbe.AmbientMode
function ReflectionProbe.get_ambient_mode() end

---@param ambient Color
function ReflectionProbe.set_ambient_color(ambient) end

---@return Color
function ReflectionProbe.get_ambient_color() end

---@param ambient_energy number
function ReflectionProbe.set_ambient_color_energy(ambient_energy) end

---@return number
function ReflectionProbe.get_ambient_color_energy() end

---@param max_distance number
function ReflectionProbe.set_max_distance(max_distance) end

---@return number
function ReflectionProbe.get_max_distance() end

---@param ratio number
function ReflectionProbe.set_mesh_lod_threshold(ratio) end

---@return number
function ReflectionProbe.get_mesh_lod_threshold() end

---@param size Vector3
function ReflectionProbe.set_size(size) end

---@return Vector3
function ReflectionProbe.get_size() end

---@param origin_offset Vector3
function ReflectionProbe.set_origin_offset(origin_offset) end

---@return Vector3
function ReflectionProbe.get_origin_offset() end

---@param enable boolean
function ReflectionProbe.set_as_interior(enable) end

---@return boolean
function ReflectionProbe.is_set_as_interior() end

---@param enable boolean
function ReflectionProbe.set_enable_box_projection(enable) end

---@return boolean
function ReflectionProbe.is_box_projection_enabled() end

---@param enable boolean
function ReflectionProbe.set_enable_shadows(enable) end

---@return boolean
function ReflectionProbe.are_shadows_enabled() end

---@param layers integer
function ReflectionProbe.set_cull_mask(layers) end

---@return integer
function ReflectionProbe.get_cull_mask() end

---@param layers integer
function ReflectionProbe.set_reflection_mask(layers) end

---@return integer
function ReflectionProbe.get_reflection_mask() end

---@param mode ReflectionProbe.UpdateMode
function ReflectionProbe.set_update_mode(mode) end

---@return ReflectionProbe.UpdateMode
function ReflectionProbe.get_update_mode() end
