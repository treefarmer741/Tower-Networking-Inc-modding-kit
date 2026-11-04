---@meta _
-- Generated API for game version 0.10.0

---@class AudioEffectDistortion : AudioEffect
---@field mode integer
---@field pre_gain number
---@field keep_hf_hz number
---@field drive number
---@field post_gain number
local AudioEffectDistortion = {}

---@param mode AudioEffectDistortion.Mode
function AudioEffectDistortion.set_mode(mode) end

---@return AudioEffectDistortion.Mode
function AudioEffectDistortion.get_mode() end

---@param pre_gain number
function AudioEffectDistortion.set_pre_gain(pre_gain) end

---@return number
function AudioEffectDistortion.get_pre_gain() end

---@param keep_hf_hz number
function AudioEffectDistortion.set_keep_hf_hz(keep_hf_hz) end

---@return number
function AudioEffectDistortion.get_keep_hf_hz() end

---@param drive number
function AudioEffectDistortion.set_drive(drive) end

---@return number
function AudioEffectDistortion.get_drive() end

---@param post_gain number
function AudioEffectDistortion.set_post_gain(post_gain) end

---@return number
function AudioEffectDistortion.get_post_gain() end
