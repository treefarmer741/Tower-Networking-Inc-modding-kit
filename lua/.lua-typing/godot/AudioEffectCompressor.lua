---@meta _
-- Generated API for game version 0.9.1

---@class AudioEffectCompressor : AudioEffect
---@field threshold number
---@field ratio number
---@field gain number
---@field attack_us number
---@field release_ms number
---@field mix number
---@field sidechain string
local AudioEffectCompressor = {}

---@param threshold number
function AudioEffectCompressor.set_threshold(threshold) end

---@return number
function AudioEffectCompressor.get_threshold() end

---@param ratio number
function AudioEffectCompressor.set_ratio(ratio) end

---@return number
function AudioEffectCompressor.get_ratio() end

---@param gain number
function AudioEffectCompressor.set_gain(gain) end

---@return number
function AudioEffectCompressor.get_gain() end

---@param attack_us number
function AudioEffectCompressor.set_attack_us(attack_us) end

---@return number
function AudioEffectCompressor.get_attack_us() end

---@param release_ms number
function AudioEffectCompressor.set_release_ms(release_ms) end

---@return number
function AudioEffectCompressor.get_release_ms() end

---@param mix number
function AudioEffectCompressor.set_mix(mix) end

---@return number
function AudioEffectCompressor.get_mix() end

---@param sidechain string
function AudioEffectCompressor.set_sidechain(sidechain) end

---@return string
function AudioEffectCompressor.get_sidechain() end
