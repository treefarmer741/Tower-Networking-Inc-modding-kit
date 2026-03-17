---@meta _
-- Generated API for game version 0.10.0

---@class OmniLight3D : Light3D
---@field omni_range number
---@field omni_attenuation number
---@field omni_shadow_mode integer
local OmniLight3D = {}

---@param mode OmniLight3D.ShadowMode
function OmniLight3D.set_shadow_mode(mode) end

---@return OmniLight3D.ShadowMode
function OmniLight3D.get_shadow_mode() end
