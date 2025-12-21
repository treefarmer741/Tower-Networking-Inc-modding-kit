---@meta _
-- Generated API for game version 0.9.1

---@class AudioEffectReverb : AudioEffect
---@field predelay_msec number
---@field predelay_feedback number
---@field room_size number
---@field damping number
---@field spread number
---@field hipass number
---@field dry number
---@field wet number
local AudioEffectReverb = {}

---@param msec number
function AudioEffectReverb.set_predelay_msec(msec) end

---@return number
function AudioEffectReverb.get_predelay_msec() end

---@param feedback number
function AudioEffectReverb.set_predelay_feedback(feedback) end

---@return number
function AudioEffectReverb.get_predelay_feedback() end

---@param size number
function AudioEffectReverb.set_room_size(size) end

---@return number
function AudioEffectReverb.get_room_size() end

---@param amount number
function AudioEffectReverb.set_damping(amount) end

---@return number
function AudioEffectReverb.get_damping() end

---@param amount number
function AudioEffectReverb.set_spread(amount) end

---@return number
function AudioEffectReverb.get_spread() end

---@param amount number
function AudioEffectReverb.set_dry(amount) end

---@return number
function AudioEffectReverb.get_dry() end

---@param amount number
function AudioEffectReverb.set_wet(amount) end

---@return number
function AudioEffectReverb.get_wet() end

---@param amount number
function AudioEffectReverb.set_hpf(amount) end

---@return number
function AudioEffectReverb.get_hpf() end
