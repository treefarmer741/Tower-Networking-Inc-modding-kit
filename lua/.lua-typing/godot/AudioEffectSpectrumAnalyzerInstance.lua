---@meta _
-- Generated API for game version 0.9.1

---@class AudioEffectSpectrumAnalyzerInstance : AudioEffectInstance
local AudioEffectSpectrumAnalyzerInstance = {}

---@param from_hz number
---@param to_hz number
---@param mode AudioEffectSpectrumAnalyzerInstance.MagnitudeMode?  # Default = 1
---@return Vector2
function AudioEffectSpectrumAnalyzerInstance.get_magnitude_for_frequency_range(from_hz, to_hz, mode) end
