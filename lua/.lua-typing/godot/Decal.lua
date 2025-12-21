---@meta _
-- Generated API for game version 0.9.1

---@class Decal : VisualInstance3D
---@field size Vector3
---@field texture_albedo Texture2D,-AnimatedTexture,-AtlasTexture,-CameraTexture,-CanvasTexture,-MeshTexture,-Texture2DRD,-ViewportTexture
---@field texture_normal Texture2D,-AnimatedTexture,-AtlasTexture,-CameraTexture,-CanvasTexture,-MeshTexture,-Texture2DRD,-ViewportTexture
---@field texture_orm Texture2D,-AnimatedTexture,-AtlasTexture,-CameraTexture,-CanvasTexture,-MeshTexture,-Texture2DRD,-ViewportTexture
---@field texture_emission Texture2D,-AnimatedTexture,-AtlasTexture,-CameraTexture,-CanvasTexture,-MeshTexture,-Texture2DRD,-ViewportTexture
---@field emission_energy number
---@field modulate Color
---@field albedo_mix number
---@field normal_fade number
---@field upper_fade number
---@field lower_fade number
---@field distance_fade_enabled boolean
---@field distance_fade_begin number
---@field distance_fade_length number
---@field cull_mask integer
local Decal = {}

---@param size Vector3
function Decal.set_size(size) end

---@return Vector3
function Decal.get_size() end

---@param type Decal.DecalTexture
---@param texture Texture2D
function Decal.set_texture(type, texture) end

---@param type Decal.DecalTexture
---@return Texture2D
function Decal.get_texture(type) end

---@param energy number
function Decal.set_emission_energy(energy) end

---@return number
function Decal.get_emission_energy() end

---@param energy number
function Decal.set_albedo_mix(energy) end

---@return number
function Decal.get_albedo_mix() end

---@param color Color
function Decal.set_modulate(color) end

---@return Color
function Decal.get_modulate() end

---@param fade number
function Decal.set_upper_fade(fade) end

---@return number
function Decal.get_upper_fade() end

---@param fade number
function Decal.set_lower_fade(fade) end

---@return number
function Decal.get_lower_fade() end

---@param fade number
function Decal.set_normal_fade(fade) end

---@return number
function Decal.get_normal_fade() end

---@param enable boolean
function Decal.set_enable_distance_fade(enable) end

---@return boolean
function Decal.is_distance_fade_enabled() end

---@param distance number
function Decal.set_distance_fade_begin(distance) end

---@return number
function Decal.get_distance_fade_begin() end

---@param distance number
function Decal.set_distance_fade_length(distance) end

---@return number
function Decal.get_distance_fade_length() end

---@param mask integer
function Decal.set_cull_mask(mask) end

---@return integer
function Decal.get_cull_mask() end
