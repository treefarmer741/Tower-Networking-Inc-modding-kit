---@meta _
-- Generated API for game version 0.10.0

---@class NodeUtils : Object
local NodeUtils = {}

---@param script GDScript
---@return string
function NodeUtils.get_class_name(script) end

---@param parent Node
---@param nodepath string
---@param ensure_native_type string?  # Default = 
---@return Node
function NodeUtils.get_node_or_null(parent, nodepath, ensure_native_type) end

---@param inv Object
---@return string
function NodeUtils.get_node_path(inv) end

---@param ps PackedScene
---@param ntype GDScript
---@return Node
function NodeUtils.init_and_ensure_packed_scene_type(ps, ntype) end

---@param parent Node
function NodeUtils.clear_and_free_children(parent) end

---@param target Node
function NodeUtils.recursive_free(target) end

---@param child Node
---@param test_func (Callable|function)
---@param ensure_found Object?  # Default = true
---@return Node
function NodeUtils.get_parent_by_type(child, test_func, ensure_found) end

---@param parent Node
---@param ntype string
---@param ensure_at_least_one boolean?  # Default = true
---@param ensure_at_most_one boolean?  # Default = true
---@return Node
function NodeUtils.get_child_by_native_type(parent, ntype, ensure_at_least_one, ensure_at_most_one) end

---@param parent Node
---@param test_func Object
---@param ensure_at_least_one boolean?  # Default = true
---@param ensure_at_most_one boolean?  # Default = true
---@return Node
function NodeUtils.get_child_by_type(parent, test_func, ensure_at_least_one, ensure_at_most_one) end

---@param parent Node
---@param test_func (Callable|function)
---@return Array<Node>
function NodeUtils.rfind_children(parent, test_func) end

---@param n Node2D
---@return Rect2
function NodeUtils.get_bounding_rect_of_sprite2d_children(n) end
