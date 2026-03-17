---@meta _
-- Generated API for game version 0.10.0

---@class AnimationNodeStateMachine : AnimationRootNode
---@field state_machine_type integer
---@field allow_transition_to_self boolean
---@field reset_ends boolean
local AnimationNodeStateMachine = {}

---@param name string
---@param node AnimationNode
---@param position Vector2?  # Default = (0.0, 0.0)
function AnimationNodeStateMachine.add_node(name, node, position) end

---@param name string
---@param node AnimationNode
function AnimationNodeStateMachine.replace_node(name, node) end

---@param name string
---@return AnimationNode
function AnimationNodeStateMachine.get_node(name) end

---@param name string
function AnimationNodeStateMachine.remove_node(name) end

---@param name string
---@param new_name string
function AnimationNodeStateMachine.rename_node(name, new_name) end

---@param name string
---@return boolean
function AnimationNodeStateMachine.has_node(name) end

---@param node AnimationNode
---@return string
function AnimationNodeStateMachine.get_node_name(node) end

---@return Array<StringName>
function AnimationNodeStateMachine.get_node_list() end

---@param name string
---@param position Vector2
function AnimationNodeStateMachine.set_node_position(name, position) end

---@param name string
---@return Vector2
function AnimationNodeStateMachine.get_node_position(name) end

---@param from string
---@param to string
---@return boolean
function AnimationNodeStateMachine.has_transition(from, to) end

---@param from string
---@param to string
---@param transition AnimationNodeStateMachineTransition
function AnimationNodeStateMachine.add_transition(from, to, transition) end

---@param idx integer
---@return AnimationNodeStateMachineTransition
function AnimationNodeStateMachine.get_transition(idx) end

---@param idx integer
---@return string
function AnimationNodeStateMachine.get_transition_from(idx) end

---@param idx integer
---@return string
function AnimationNodeStateMachine.get_transition_to(idx) end

---@return integer
function AnimationNodeStateMachine.get_transition_count() end

---@param idx integer
function AnimationNodeStateMachine.remove_transition_by_index(idx) end

---@param from string
---@param to string
function AnimationNodeStateMachine.remove_transition(from, to) end

---@param offset Vector2
function AnimationNodeStateMachine.set_graph_offset(offset) end

---@return Vector2
function AnimationNodeStateMachine.get_graph_offset() end

---@param state_machine_type AnimationNodeStateMachine.StateMachineType
function AnimationNodeStateMachine.set_state_machine_type(state_machine_type) end

---@return AnimationNodeStateMachine.StateMachineType
function AnimationNodeStateMachine.get_state_machine_type() end

---@param enable boolean
function AnimationNodeStateMachine.set_allow_transition_to_self(enable) end

---@return boolean
function AnimationNodeStateMachine.is_allow_transition_to_self() end

---@param enable boolean
function AnimationNodeStateMachine.set_reset_ends(enable) end

---@return boolean
function AnimationNodeStateMachine.are_ends_reset() end
