---@meta _
-- Generated API for game version 0.10.0

---@class AudioEffectHardLimiter : AudioEffect
---@field pre_gain_db number
---@field ceiling_db number
---@field release number
local AudioEffectHardLimiter = {}

---@param ceiling number
function AudioEffectHardLimiter.set_ceiling_db(ceiling) end

---@return number
function AudioEffectHardLimiter.get_ceiling_db() end

---@param p_pre_gain number
function AudioEffectHardLimiter.set_pre_gain_db(p_pre_gain) end

---@return number
function AudioEffectHardLimiter.get_pre_gain_db() end

---@param p_release number
function AudioEffectHardLimiter.set_release(p_release) end

---@return number
function AudioEffectHardLimiter.get_release() end
