---@meta _
-- Generated API for game version 0.10.0

---@class OpenXRAnalogThresholdModifier : OpenXRActionBindingModifier
---@field on_threshold number
---@field off_threshold number
---@field on_haptic OpenXRHapticBase
---@field off_haptic OpenXRHapticBase
local OpenXRAnalogThresholdModifier = {}

---@param on_threshold number
function OpenXRAnalogThresholdModifier.set_on_threshold(on_threshold) end

---@return number
function OpenXRAnalogThresholdModifier.get_on_threshold() end

---@param off_threshold number
function OpenXRAnalogThresholdModifier.set_off_threshold(off_threshold) end

---@return number
function OpenXRAnalogThresholdModifier.get_off_threshold() end

---@param haptic OpenXRHapticBase
function OpenXRAnalogThresholdModifier.set_on_haptic(haptic) end

---@return OpenXRHapticBase
function OpenXRAnalogThresholdModifier.get_on_haptic() end

---@param haptic OpenXRHapticBase
function OpenXRAnalogThresholdModifier.set_off_haptic(haptic) end

---@return OpenXRHapticBase
function OpenXRAnalogThresholdModifier.get_off_haptic() end
