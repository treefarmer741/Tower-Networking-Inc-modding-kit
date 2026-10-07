---@meta _
-- Generated API for game version 0.10.0

---@class AnimationNodeBlendTree : AnimationRootNode
---@field graph_offset Vector2
local AnimationNodeBlendTree = {}

---@param name string
---@param node AnimationNode
---@param position Vector2?  # Default = (0.0, 0.0)
function AnimationNodeBlendTree.add_node(name, node, position) end

---@param name string
---@return AnimationNode
function AnimationNodeBlendTree.get_node(name) end

---@param name string
function AnimationNodeBlendTree.remove_node(name) end

---@param name string
---@param new_name string
function AnimationNodeBlendTree.rename_node(name, new_name) end

---@param name string
---@return boolean
function AnimationNodeBlendTree.has_node(name) end

---@param input_node string
---@param input_index integer
---@param output_node string
function AnimationNodeBlendTree.connect_node(input_node, input_index, output_node) end

---@param input_node string
---@param input_index integer
function AnimationNodeBlendTree.disconnect_node(input_node, input_index) end

---@return Array<StringName>
function AnimationNodeBlendTree.get_node_list() end

---@param name string
---@param position Vector2
function AnimationNodeBlendTree.set_node_position(name, position) end

---@param name string
---@return Vector2
function AnimationNodeBlendTree.get_node_position(name) end

---@param offset Vector2
function AnimationNodeBlendTree.set_graph_offset(offset) end

---@return Vector2
function AnimationNodeBlendTree.get_graph_offset() end
