---@meta _
-- Generated API for game version 0.9.1

---@class AudioEffectStereoEnhance : AudioEffect
---@field pan_pullout number
---@field time_pullout_ms number
---@field surround number
local AudioEffectStereoEnhance = {}

---@param amount number
function AudioEffectStereoEnhance.set_pan_pullout(amount) end

---@return number
function AudioEffectStereoEnhance.get_pan_pullout() end

---@param amount number
function AudioEffectStereoEnhance.set_time_pullout(amount) end

---@return number
function AudioEffectStereoEnhance.get_time_pullout() end

---@param amount number
function AudioEffectStereoEnhance.set_surround(amount) end

---@return number
function AudioEffectStereoEnhance.get_surround() end
