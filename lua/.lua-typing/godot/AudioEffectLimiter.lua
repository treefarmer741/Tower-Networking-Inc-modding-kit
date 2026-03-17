---@meta _
-- Generated API for game version 0.10.0

---@class AudioEffectLimiter : AudioEffect
---@field ceiling_db number
---@field threshold_db number
---@field soft_clip_db number
---@field soft_clip_ratio number
local AudioEffectLimiter = {}

---@param ceiling number
function AudioEffectLimiter.set_ceiling_db(ceiling) end

---@return number
function AudioEffectLimiter.get_ceiling_db() end

---@param threshold number
function AudioEffectLimiter.set_threshold_db(threshold) end

---@return number
function AudioEffectLimiter.get_threshold_db() end

---@param soft_clip number
function AudioEffectLimiter.set_soft_clip_db(soft_clip) end

---@return number
function AudioEffectLimiter.get_soft_clip_db() end

---@param soft_clip number
function AudioEffectLimiter.set_soft_clip_ratio(soft_clip) end

---@return number
function AudioEffectLimiter.get_soft_clip_ratio() end
