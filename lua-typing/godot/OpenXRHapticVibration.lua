---@meta _
-- Generated API for game version 0.10.0

---@class OpenXRHapticVibration : OpenXRHapticBase
---@field duration integer
---@field frequency number
---@field amplitude number
local OpenXRHapticVibration = {}

---@param duration integer
function OpenXRHapticVibration.set_duration(duration) end

---@return integer
function OpenXRHapticVibration.get_duration() end

---@param frequency number
function OpenXRHapticVibration.set_frequency(frequency) end

---@return number
function OpenXRHapticVibration.get_frequency() end

---@param amplitude number
function OpenXRHapticVibration.set_amplitude(amplitude) end

---@return number
function OpenXRHapticVibration.get_amplitude() end
