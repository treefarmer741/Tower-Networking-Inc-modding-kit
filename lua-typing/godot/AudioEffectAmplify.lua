---@meta _
-- Generated API for game version 0.10.0

---@class AudioEffectAmplify : AudioEffect
---@field volume_db number
---@field volume_linear number
local AudioEffectAmplify = {}

---@param volume number
function AudioEffectAmplify.set_volume_db(volume) end

---@return number
function AudioEffectAmplify.get_volume_db() end

---@param volume number
function AudioEffectAmplify.set_volume_linear(volume) end

---@return number
function AudioEffectAmplify.get_volume_linear() end
