---@meta _
-- Generated API for game version 0.10.0

---@class AudioStreamGenerator : AudioStream
---@field mix_rate_mode integer
---@field mix_rate number
---@field buffer_length number
local AudioStreamGenerator = {}

---@param hz number
function AudioStreamGenerator.set_mix_rate(hz) end

---@return number
function AudioStreamGenerator.get_mix_rate() end

---@param mode AudioStreamGenerator.AudioStreamGeneratorMixRate
function AudioStreamGenerator.set_mix_rate_mode(mode) end

---@return AudioStreamGenerator.AudioStreamGeneratorMixRate
function AudioStreamGenerator.get_mix_rate_mode() end

---@param seconds number
function AudioStreamGenerator.set_buffer_length(seconds) end

---@return number
function AudioStreamGenerator.get_buffer_length() end
