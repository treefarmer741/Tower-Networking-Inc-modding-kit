---@meta _
-- Generated API for game version 0.10.0

---@class PortTraversal : Object
local PortTraversal = {}

---@param context Object
---@param node Object
---@param _via_port Object
---@param _current_index Object
---@param _current_depth Object
---@return GraphController.Traversal
function PortTraversal.count_accessible_uses(context, node, _via_port, _current_index, _current_depth) end

---@param context Object
---@param node Object
---@param via_port Object
---@param _current_index Object
---@param current_depth Object
---@return GraphController.Traversal
function PortTraversal.simply_enumerate_nodes(context, node, via_port, _current_index, current_depth) end

---@param context Object
---@param node Object
---@param _via_port Object
---@param _current_index Object
---@param _current_depth Object
---@return GraphController.Traversal
function PortTraversal.test_dns_server_access(context, node, _via_port, _current_index, _current_depth) end

---@param context Object
---@param node Object
---@param _via_port Object
---@param _current_index Object
---@param _current_depth Object
---@return GraphController.Traversal
function PortTraversal.test_one_consumeable_access(context, node, _via_port, _current_index, _current_depth) end

---@param context Object
---@param node Object
---@param _via_port Object
---@param _current_index Object
---@param _current_depth Object
---@return GraphController.Traversal
function PortTraversal.test_dst_laddr_node_access(context, node, _via_port, _current_index, _current_depth) end

---@param _context Object
---@param _node Object
---@param _via_port Object
---@param _current_index Object
---@param _current_depth Object
---@return GraphController.Traversal
function PortTraversal.nop(_context, _node, _via_port, _current_index, _current_depth) end

---@param context Object
---@param node Object
---@param _via_port Object
---@param _current_index Object
---@param _current_depth Object
---@return GraphController.Traversal
function PortTraversal.consume_accessible_uses_counter_a(context, node, _via_port, _current_index, _current_depth) end
