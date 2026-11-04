---@meta _
-- Generated API for game version 0.10.0

---@class AudioEffectFilter : AudioEffect
---@field cutoff_hz number
---@field resonance number
---@field gain number
---@field db integer
local AudioEffectFilter = {}

---@param freq number
function AudioEffectFilter.set_cutoff(freq) end

---@return number
function AudioEffectFilter.get_cutoff() end

---@param amount number
function AudioEffectFilter.set_resonance(amount) end

---@return number
function AudioEffectFilter.get_resonance() end

---@param amount number
function AudioEffectFilter.set_gain(amount) end

---@return number
function AudioEffectFilter.get_gain() end

---@param amount AudioEffectFilter.FilterDB
function AudioEffectFilter.set_db(amount) end

---@return AudioEffectFilter.FilterDB
function AudioEffectFilter.get_db() end
