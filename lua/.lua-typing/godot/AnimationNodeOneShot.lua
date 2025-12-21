---@meta _
-- Generated API for game version 0.9.1

---@class AnimationNodeOneShot : AnimationNodeSync
---@field mix_mode integer
---@field fadein_time number
---@field fadein_curve Curve
---@field fadeout_time number
---@field fadeout_curve Curve
---@field break_loop_at_end boolean
---@field autorestart boolean
---@field autorestart_delay number
---@field autorestart_random_delay number
local AnimationNodeOneShot = {}

---@param time number
function AnimationNodeOneShot.set_fadein_time(time) end

---@return number
function AnimationNodeOneShot.get_fadein_time() end

---@param curve Curve
function AnimationNodeOneShot.set_fadein_curve(curve) end

---@return Curve
function AnimationNodeOneShot.get_fadein_curve() end

---@param time number
function AnimationNodeOneShot.set_fadeout_time(time) end

---@return number
function AnimationNodeOneShot.get_fadeout_time() end

---@param curve Curve
function AnimationNodeOneShot.set_fadeout_curve(curve) end

---@return Curve
function AnimationNodeOneShot.get_fadeout_curve() end

---@param enable boolean
function AnimationNodeOneShot.set_break_loop_at_end(enable) end

---@return boolean
function AnimationNodeOneShot.is_loop_broken_at_end() end

---@param active boolean
function AnimationNodeOneShot.set_autorestart(active) end

---@return boolean
function AnimationNodeOneShot.has_autorestart() end

---@param time number
function AnimationNodeOneShot.set_autorestart_delay(time) end

---@return number
function AnimationNodeOneShot.get_autorestart_delay() end

---@param time number
function AnimationNodeOneShot.set_autorestart_random_delay(time) end

---@return number
function AnimationNodeOneShot.get_autorestart_random_delay() end

---@param mode AnimationNodeOneShot.MixMode
function AnimationNodeOneShot.set_mix_mode(mode) end

---@return AnimationNodeOneShot.MixMode
function AnimationNodeOneShot.get_mix_mode() end
