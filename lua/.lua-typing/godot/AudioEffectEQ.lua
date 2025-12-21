---@meta _
-- Generated API for game version 0.9.1

---@class AudioEffectEQ : AudioEffect
local AudioEffectEQ = {}

---@param band_idx integer
---@param volume_db number
function AudioEffectEQ.set_band_gain_db(band_idx, volume_db) end

---@param band_idx integer
---@return number
function AudioEffectEQ.get_band_gain_db(band_idx) end

---@return integer
function AudioEffectEQ.get_band_count() end
