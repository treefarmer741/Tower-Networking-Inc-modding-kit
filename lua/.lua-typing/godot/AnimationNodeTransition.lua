---@meta _
-- Generated API for game version 0.9.1

---@class AnimationNodeTransition : AnimationNodeSync
---@field xfade_time number
---@field xfade_curve Curve
---@field allow_transition_to_self boolean
---@field input_count Inputs,input_
local AnimationNodeTransition = {}

---@param input_count integer
function AnimationNodeTransition.set_input_count(input_count) end

---@param input integer
---@param enable boolean
function AnimationNodeTransition.set_input_as_auto_advance(input, enable) end

---@param input integer
---@return boolean
function AnimationNodeTransition.is_input_set_as_auto_advance(input) end

---@param input integer
---@param enable boolean
function AnimationNodeTransition.set_input_break_loop_at_end(input, enable) end

---@param input integer
---@return boolean
function AnimationNodeTransition.is_input_loop_broken_at_end(input) end

---@param input integer
---@param enable boolean
function AnimationNodeTransition.set_input_reset(input, enable) end

---@param input integer
---@return boolean
function AnimationNodeTransition.is_input_reset(input) end

---@param time number
function AnimationNodeTransition.set_xfade_time(time) end

---@return number
function AnimationNodeTransition.get_xfade_time() end

---@param curve Curve
function AnimationNodeTransition.set_xfade_curve(curve) end

---@return Curve
function AnimationNodeTransition.get_xfade_curve() end

---@param enable boolean
function AnimationNodeTransition.set_allow_transition_to_self(enable) end

---@return boolean
function AnimationNodeTransition.is_allow_transition_to_self() end
