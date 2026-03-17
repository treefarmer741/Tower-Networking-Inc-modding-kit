---@meta _
-- Generated API for game version 0.10.0

---@class AudioEffectPhaser : AudioEffect
---@field range_min_hz number
---@field range_max_hz number
---@field rate_hz number
---@field feedback number
---@field depth number
local AudioEffectPhaser = {}

---@param hz number
function AudioEffectPhaser.set_range_min_hz(hz) end

---@return number
function AudioEffectPhaser.get_range_min_hz() end

---@param hz number
function AudioEffectPhaser.set_range_max_hz(hz) end

---@return number
function AudioEffectPhaser.get_range_max_hz() end

---@param hz number
function AudioEffectPhaser.set_rate_hz(hz) end

---@return number
function AudioEffectPhaser.get_rate_hz() end

---@param fbk number
function AudioEffectPhaser.set_feedback(fbk) end

---@return number
function AudioEffectPhaser.get_feedback() end

---@param depth number
function AudioEffectPhaser.set_depth(depth) end

---@return number
function AudioEffectPhaser.get_depth() end
