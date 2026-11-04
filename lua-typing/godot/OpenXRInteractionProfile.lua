---@meta _
-- Generated API for game version 0.10.0

---@class OpenXRInteractionProfile : Resource
---@field interaction_profile_path string
---@field bindings OpenXRIPBinding
---@field binding_modifiers OpenXRIPBindingModifier
local OpenXRInteractionProfile = {}

---@param interaction_profile_path string
function OpenXRInteractionProfile.set_interaction_profile_path(interaction_profile_path) end

---@return string
function OpenXRInteractionProfile.get_interaction_profile_path() end

---@return integer
function OpenXRInteractionProfile.get_binding_count() end

---@param index integer
---@return OpenXRIPBinding
function OpenXRInteractionProfile.get_binding(index) end

---@param bindings Array<any>
function OpenXRInteractionProfile.set_bindings(bindings) end

---@return Array<any>
function OpenXRInteractionProfile.get_bindings() end

---@return integer
function OpenXRInteractionProfile.get_binding_modifier_count() end

---@param index integer
---@return OpenXRIPBindingModifier
function OpenXRInteractionProfile.get_binding_modifier(index) end

---@param binding_modifiers Array<any>
function OpenXRInteractionProfile.set_binding_modifiers(binding_modifiers) end

---@return Array<any>
function OpenXRInteractionProfile.get_binding_modifiers() end
