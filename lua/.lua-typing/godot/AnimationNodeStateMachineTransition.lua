---@meta _
-- Generated API for game version 0.9.1

---@class AnimationNodeStateMachineTransition : Resource
---@field xfade_time number
---@field xfade_curve Curve
---@field break_loop_at_end boolean
---@field reset boolean
---@field priority integer
---@field switch_mode integer
---@field advance_mode integer
---@field advance_condition string
---@field advance_expression string
local AnimationNodeStateMachineTransition = {}

---@param mode AnimationNodeStateMachineTransition.SwitchMode
function AnimationNodeStateMachineTransition.set_switch_mode(mode) end

---@return AnimationNodeStateMachineTransition.SwitchMode
function AnimationNodeStateMachineTransition.get_switch_mode() end

---@param mode AnimationNodeStateMachineTransition.AdvanceMode
function AnimationNodeStateMachineTransition.set_advance_mode(mode) end

---@return AnimationNodeStateMachineTransition.AdvanceMode
function AnimationNodeStateMachineTransition.get_advance_mode() end

---@param name string
function AnimationNodeStateMachineTransition.set_advance_condition(name) end

---@return string
function AnimationNodeStateMachineTransition.get_advance_condition() end

---@param secs number
function AnimationNodeStateMachineTransition.set_xfade_time(secs) end

---@return number
function AnimationNodeStateMachineTransition.get_xfade_time() end

---@param curve Curve
function AnimationNodeStateMachineTransition.set_xfade_curve(curve) end

---@return Curve
function AnimationNodeStateMachineTransition.get_xfade_curve() end

---@param enable boolean
function AnimationNodeStateMachineTransition.set_break_loop_at_end(enable) end

---@return boolean
function AnimationNodeStateMachineTransition.is_loop_broken_at_end() end

---@param reset boolean
function AnimationNodeStateMachineTransition.set_reset(reset) end

---@return boolean
function AnimationNodeStateMachineTransition.is_reset() end

---@param priority integer
function AnimationNodeStateMachineTransition.set_priority(priority) end

---@return integer
function AnimationNodeStateMachineTransition.get_priority() end

---@param text string
function AnimationNodeStateMachineTransition.set_advance_expression(text) end

---@return string
function AnimationNodeStateMachineTransition.get_advance_expression() end
