---@meta _
-- Generated API for game version 0.9.1

---@class AnimationNode : Resource
---@field filter_enabled boolean
---@field filters Array<any>
local AnimationNode = {}

---@param name string
---@return boolean
function AnimationNode.add_input(name) end

---@param index integer
function AnimationNode.remove_input(index) end

---@param input integer
---@param name string
---@return boolean
function AnimationNode.set_input_name(input, name) end

---@param input integer
---@return string
function AnimationNode.get_input_name(input) end

---@return integer
function AnimationNode.get_input_count() end

---@param name string
---@return integer
function AnimationNode.find_input(name) end

---@param path string
---@param enable boolean
function AnimationNode.set_filter_path(path, enable) end

---@param path string
---@return boolean
function AnimationNode.is_path_filtered(path) end

---@param enable boolean
function AnimationNode.set_filter_enabled(enable) end

---@return boolean
function AnimationNode.is_filter_enabled() end

---@return integer
function AnimationNode.get_processing_animation_tree_instance_id() end

---@return boolean
function AnimationNode.is_process_testing() end

---@param animation string
---@param time number
---@param delta number
---@param seeked boolean
---@param is_external_seeking boolean
---@param blend number
---@param looped_flag Animation.LoopedFlag?  # Default = 0
function AnimationNode.blend_animation(animation, time, delta, seeked, is_external_seeking, blend, looped_flag) end

---@param name string
---@param node AnimationNode
---@param time number
---@param seek boolean
---@param is_external_seeking boolean
---@param blend number
---@param filter AnimationNode.FilterAction?  # Default = 0
---@param sync boolean?  # Default = true
---@param test_only boolean?  # Default = false
---@return number
function AnimationNode.blend_node(name, node, time, seek, is_external_seeking, blend, filter, sync, test_only) end

---@param input_index integer
---@param time number
---@param seek boolean
---@param is_external_seeking boolean
---@param blend number
---@param filter AnimationNode.FilterAction?  # Default = 0
---@param sync boolean?  # Default = true
---@param test_only boolean?  # Default = false
---@return number
function AnimationNode.blend_input(input_index, time, seek, is_external_seeking, blend, filter, sync, test_only) end

---@param name string
---@param value Object
function AnimationNode.set_parameter(name, value) end

---@param name string
---@return Object
function AnimationNode.get_parameter(name) end
