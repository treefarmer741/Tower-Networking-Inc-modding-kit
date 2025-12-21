---@meta _
-- Generated API for game version 0.9.1

---@class AudioEffectPitchShift : AudioEffect
---@field pitch_scale number
---@field oversampling number
---@field fft_size integer
local AudioEffectPitchShift = {}

---@param rate number
function AudioEffectPitchShift.set_pitch_scale(rate) end

---@return number
function AudioEffectPitchShift.get_pitch_scale() end

---@param amount integer
function AudioEffectPitchShift.set_oversampling(amount) end

---@return integer
function AudioEffectPitchShift.get_oversampling() end

---@param size AudioEffectPitchShift.FFTSize
function AudioEffectPitchShift.set_fft_size(size) end

---@return AudioEffectPitchShift.FFTSize
function AudioEffectPitchShift.get_fft_size() end
