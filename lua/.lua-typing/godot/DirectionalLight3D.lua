---@meta _
-- Generated API for game version 0.9.1

---@class DirectionalLight3D : Light3D
---@field directional_shadow_mode integer
---@field directional_shadow_split_1 number
---@field directional_shadow_split_2 number
---@field directional_shadow_split_3 number
---@field directional_shadow_blend_splits boolean
---@field directional_shadow_fade_start number
---@field directional_shadow_max_distance number
---@field directional_shadow_pancake_size number
---@field sky_mode integer
local DirectionalLight3D = {}

---@param mode DirectionalLight3D.ShadowMode
function DirectionalLight3D.set_shadow_mode(mode) end

---@return DirectionalLight3D.ShadowMode
function DirectionalLight3D.get_shadow_mode() end

---@param enabled boolean
function DirectionalLight3D.set_blend_splits(enabled) end

---@return boolean
function DirectionalLight3D.is_blend_splits_enabled() end

---@param mode DirectionalLight3D.SkyMode
function DirectionalLight3D.set_sky_mode(mode) end

---@return DirectionalLight3D.SkyMode
function DirectionalLight3D.get_sky_mode() end
