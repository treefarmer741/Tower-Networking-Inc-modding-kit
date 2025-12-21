---@meta _
-- Generated API for game version 0.9.1

---@class OpenXRDpadBindingModifier : OpenXRIPBindingModifier
---@field action_set OpenXRActionSet
---@field input_path string
---@field threshold number
---@field threshold_released number
---@field center_region number
---@field wedge_angle number
---@field is_sticky boolean
---@field on_haptic OpenXRHapticBase
---@field off_haptic OpenXRHapticBase
local OpenXRDpadBindingModifier = {}

---@param action_set OpenXRActionSet
function OpenXRDpadBindingModifier.set_action_set(action_set) end

---@return OpenXRActionSet
function OpenXRDpadBindingModifier.get_action_set() end

---@param input_path string
function OpenXRDpadBindingModifier.set_input_path(input_path) end

---@return string
function OpenXRDpadBindingModifier.get_input_path() end

---@param threshold number
function OpenXRDpadBindingModifier.set_threshold(threshold) end

---@return number
function OpenXRDpadBindingModifier.get_threshold() end

---@param threshold_released number
function OpenXRDpadBindingModifier.set_threshold_released(threshold_released) end

---@return number
function OpenXRDpadBindingModifier.get_threshold_released() end

---@param center_region number
function OpenXRDpadBindingModifier.set_center_region(center_region) end

---@return number
function OpenXRDpadBindingModifier.get_center_region() end

---@param wedge_angle number
function OpenXRDpadBindingModifier.set_wedge_angle(wedge_angle) end

---@return number
function OpenXRDpadBindingModifier.get_wedge_angle() end

---@param is_sticky boolean
function OpenXRDpadBindingModifier.set_is_sticky(is_sticky) end

---@return boolean
function OpenXRDpadBindingModifier.get_is_sticky() end

---@param haptic OpenXRHapticBase
function OpenXRDpadBindingModifier.set_on_haptic(haptic) end

---@return OpenXRHapticBase
function OpenXRDpadBindingModifier.get_on_haptic() end

---@param haptic OpenXRHapticBase
function OpenXRDpadBindingModifier.set_off_haptic(haptic) end

---@return OpenXRHapticBase
function OpenXRDpadBindingModifier.get_off_haptic() end
