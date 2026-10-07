---@meta _
-- Generated API for game version 0.10.0

---@class AnimationNodeAnimation : AnimationRootNode
---@field animation string
---@field play_mode integer
---@field advance_on_start boolean
---@field use_custom_timeline boolean
---@field timeline_length number
---@field stretch_time_scale boolean
---@field start_offset number
---@field loop_mode integer
local AnimationNodeAnimation = {}

---@param name string
function AnimationNodeAnimation.set_animation(name) end

---@return string
function AnimationNodeAnimation.get_animation() end

---@param mode AnimationNodeAnimation.PlayMode
function AnimationNodeAnimation.set_play_mode(mode) end

---@return AnimationNodeAnimation.PlayMode
function AnimationNodeAnimation.get_play_mode() end

---@param advance_on_start boolean
function AnimationNodeAnimation.set_advance_on_start(advance_on_start) end

---@return boolean
function AnimationNodeAnimation.is_advance_on_start() end

---@param use_custom_timeline boolean
function AnimationNodeAnimation.set_use_custom_timeline(use_custom_timeline) end

---@return boolean
function AnimationNodeAnimation.is_using_custom_timeline() end

---@param timeline_length number
function AnimationNodeAnimation.set_timeline_length(timeline_length) end

---@return number
function AnimationNodeAnimation.get_timeline_length() end

---@param stretch_time_scale boolean
function AnimationNodeAnimation.set_stretch_time_scale(stretch_time_scale) end

---@return boolean
function AnimationNodeAnimation.is_stretching_time_scale() end

---@param start_offset number
function AnimationNodeAnimation.set_start_offset(start_offset) end

---@return number
function AnimationNodeAnimation.get_start_offset() end

---@param loop_mode Animation.LoopMode
function AnimationNodeAnimation.set_loop_mode(loop_mode) end

---@return Animation.LoopMode
function AnimationNodeAnimation.get_loop_mode() end
