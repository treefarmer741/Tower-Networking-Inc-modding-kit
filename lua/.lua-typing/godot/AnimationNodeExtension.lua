---@meta _
-- Generated API for game version 0.9.1

---@class AnimationNodeExtension : AnimationNode
local AnimationNodeExtension = {}

---@param node_info PackedFloat32Array
---@return boolean
function AnimationNodeExtension.is_looping(node_info) end

---@param node_info PackedFloat32Array
---@param break_loop boolean
---@return number
function AnimationNodeExtension.get_remaining_time(node_info, break_loop) end
