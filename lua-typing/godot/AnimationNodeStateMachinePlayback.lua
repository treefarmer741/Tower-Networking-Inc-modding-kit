---@meta _
-- Generated API for game version 0.10.0

---@class AnimationNodeStateMachinePlayback : Resource
local AnimationNodeStateMachinePlayback = {}

---@param to_node string
---@param reset_on_teleport boolean?  # Default = true
function AnimationNodeStateMachinePlayback.travel(to_node, reset_on_teleport) end

---@param node string
---@param reset boolean?  # Default = true
function AnimationNodeStateMachinePlayback.start(node, reset) end

function AnimationNodeStateMachinePlayback.next() end

function AnimationNodeStateMachinePlayback.stop() end

---@return boolean
function AnimationNodeStateMachinePlayback.is_playing() end

---@return string
function AnimationNodeStateMachinePlayback.get_current_node() end

---@return number
function AnimationNodeStateMachinePlayback.get_current_play_position() end

---@return number
function AnimationNodeStateMachinePlayback.get_current_length() end

---@return string
function AnimationNodeStateMachinePlayback.get_fading_from_node() end

---@return Array<StringName>
function AnimationNodeStateMachinePlayback.get_travel_path() end
