---@meta _
-- Generated API for game version 0.9.1

---@class CompositorEffect : Resource
---@field enabled boolean
---@field effect_callback_type integer
---@field access_resolved_color boolean
---@field access_resolved_depth boolean
---@field needs_motion_vectors boolean
---@field needs_normal_roughness boolean
---@field needs_separate_specular boolean
local CompositorEffect = {}

---@param enabled boolean
function CompositorEffect.set_enabled(enabled) end

---@return boolean
function CompositorEffect.get_enabled() end

---@param effect_callback_type CompositorEffect.EffectCallbackType
function CompositorEffect.set_effect_callback_type(effect_callback_type) end

---@return CompositorEffect.EffectCallbackType
function CompositorEffect.get_effect_callback_type() end

---@param enable boolean
function CompositorEffect.set_access_resolved_color(enable) end

---@return boolean
function CompositorEffect.get_access_resolved_color() end

---@param enable boolean
function CompositorEffect.set_access_resolved_depth(enable) end

---@return boolean
function CompositorEffect.get_access_resolved_depth() end

---@param enable boolean
function CompositorEffect.set_needs_motion_vectors(enable) end

---@return boolean
function CompositorEffect.get_needs_motion_vectors() end

---@param enable boolean
function CompositorEffect.set_needs_normal_roughness(enable) end

---@return boolean
function CompositorEffect.get_needs_normal_roughness() end

---@param enable boolean
function CompositorEffect.set_needs_separate_specular(enable) end

---@return boolean
function CompositorEffect.get_needs_separate_specular() end
