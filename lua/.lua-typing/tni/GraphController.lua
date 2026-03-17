---@meta _
-- Generated API for game version 0.10.0

---@class GraphController : Node
---@field ports Array<any>
---@field neighbours Array<any>
---@field reversed_ports Array<any>
local GraphController = {}
---@enum GraphController.Traversal
GraphController.Traversal = {
	["CONTINUE"] = 0,
	["BREAK"] = 1,
	["SKIP"] = 2,
}

---@param obj Object
---@return Object
function GraphController.is_friend_class(obj) end

---@param socket Socket
function GraphController.add_port(socket) end

---@param socket Socket
function GraphController.remove_port(socket) end

---@param port Socket
---@param nc GraphController
function GraphController.add_neighbour(port, nc) end

---@param port Socket
function GraphController.remove_neighbours_on_port(port) end

---@param via Socket
---@return GraphController
function GraphController.get_neighbour(via) end

---@param _context Object
---@param _node Object
---@param _port Object
---@param _current_depth Object
---@return boolean
function GraphController.default_port_traversal_rule(_context, _node, _port, _current_depth) end

---@param _context Object
---@param _node Object
---@param _port Object
---@param _current_index Object
---@param _current_depth Object
---@return GraphController.Traversal
function GraphController.default_port_traversal_callback(_context, _node, _port, _current_index, _current_depth) end

---@param traversal_ctx Object
---@param traversal_callback Object?  # Default = <null>
---@param traversal_rule Object?  # Default = <null>
function GraphController.bfs_port_traversal(traversal_ctx, traversal_callback, traversal_rule) end

---@param _context Object
---@param _from_node Object
---@param _to_node Object
---@param _current_depth Object
---@return boolean
function GraphController.default_traversal_rule(_context, _from_node, _to_node, _current_depth) end

---@param _context Object
---@param _node Object
---@param _current_index Object
---@param _current_depth Object
---@return GraphController.Traversal
function GraphController.default_traversal_callback(_context, _node, _current_index, _current_depth) end

---@param traversal_ctx Object
---@param traversal_callback Object?  # Default = <null>
---@param traversal_rule Object?  # Default = <null>
function GraphController.bfs_traversal(traversal_ctx, traversal_callback, traversal_rule) end
