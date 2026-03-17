---@meta _
-- Generated API for game version 0.10.0

---@class AudioEffectSpectrumAnalyzer : AudioEffect
---@field buffer_length number
---@field tap_back_pos number
---@field fft_size integer
local AudioEffectSpectrumAnalyzer = {}

---@param seconds number
function AudioEffectSpectrumAnalyzer.set_buffer_length(seconds) end

---@return number
function AudioEffectSpectrumAnalyzer.get_buffer_length() end

---@param seconds number
function AudioEffectSpectrumAnalyzer.set_tap_back_pos(seconds) end

---@return number
function AudioEffectSpectrumAnalyzer.get_tap_back_pos() end

---@param size AudioEffectSpectrumAnalyzer.FFTSize
function AudioEffectSpectrumAnalyzer.set_fft_size(size) end

---@return AudioEffectSpectrumAnalyzer.FFTSize
function AudioEffectSpectrumAnalyzer.get_fft_size() end
