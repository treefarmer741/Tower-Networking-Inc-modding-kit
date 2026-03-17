---@meta _
-- Generated API for game version 0.10.0

---@class PowerController : Node
---@field MAX_DEPTH integer # Constant value: 99999
---@field LEAKAGE integer # Constant value: 1
---@field REFRESH_PERIOD_SECONDS number # Constant value: 0.7
---@field SUPP_REFRESH_SECONDS number # Constant value: 0.3
---@field propagate_charges boolean
---@field disabled boolean
---@field charge_rate integer
---@field allow_passthrough boolean
---@field charge_capacity integer
---@field can_discharge_to_supply boolean
---@field surge_blocker boolean
---@field functional boolean
---@field is_enabled_and_functional boolean
---@field depth integer
---@field locals Array<any>
---@field charges integer
---@field charge_ratio number
---@field total_supplying_time_s number
---@field current_load integer
---@field displayed_load integer
---@field can_supply_power boolean
---@field in_src integer
---@field latest_discharge_size integer
---@field will_charge boolean
---@field sus_enabled boolean
---@field ports Array<any>
---@field neighbours Array<any>
---@field reversed_ports Array<any>
local PowerController = {}

---@param obj Object
---@return Object
function PowerController.is_friend_class(obj) end

---@param newv Object
function PowerController.set_sus_val(newv) end

---@param lc Power
function PowerController.add_local(lc) end

---@param lc Power
function PowerController.remove_local(lc) end

function PowerController.break_circuit() end

function PowerController.close_circuit() end

---@return Object
function PowerController.debug_monitor_callback() end

---@param _context Object
---@param _from_node Object
---@param from_port Object
---@param current_depth Object
---@return boolean
function PowerController.default_port_traversal_rule(_context, _from_node, from_port, current_depth) end

---@param charge_ctx Object
---@param from_node Object
---@param to_node Object
---@param current_depth Object
---@return boolean
function PowerController.default_traversal_rule(charge_ctx, from_node, to_node, current_depth) end

---@param _context Object
---@param _node Object
---@param _port Object
---@param _current_index Object
---@param _current_depth Object
---@return GraphController.Traversal
function PowerController.default_port_traversal_callback(_context, _node, _port, _current_index, _current_depth) end

---@param _context Object
---@param node Object
---@param _current_index Object
---@param _current_depth Object
---@return GraphController.Traversal
function PowerController.default_traversal_callback(_context, node, _current_index, _current_depth) end

---@return number
function PowerController.get_remaining_hours() end

---@param _time_mult_delta number
function PowerController.time_mult_updated(_time_mult_delta) end

---@param obj Object
---@return Object
function PowerController.is_friend_class(obj) end

---@param socket Socket
function PowerController.add_port(socket) end

---@param socket Socket
function PowerController.remove_port(socket) end

---@param port Socket
---@param nc GraphController
function PowerController.add_neighbour(port, nc) end

---@param port Socket
function PowerController.remove_neighbours_on_port(port) end

---@param via Socket
---@return GraphController
function PowerController.get_neighbour(via) end

---@param _context Object
---@param _node Object
---@param _port Object
---@param _current_depth Object
---@return boolean
function PowerController.default_port_traversal_rule(_context, _node, _port, _current_depth) end

---@param _context Object
---@param _node Object
---@param _port Object
---@param _current_index Object
---@param _current_depth Object
---@return GraphController.Traversal
function PowerController.default_port_traversal_callback(_context, _node, _port, _current_index, _current_depth) end

---@param traversal_ctx Object
---@param traversal_callback Object?  # Default = <null>
---@param traversal_rule Object?  # Default = <null>
function PowerController.bfs_port_traversal(traversal_ctx, traversal_callback, traversal_rule) end

---@param _context Object
---@param _from_node Object
---@param _to_node Object
---@param _current_depth Object
---@return boolean
function PowerController.default_traversal_rule(_context, _from_node, _to_node, _current_depth) end

---@param _context Object
---@param _node Object
---@param _current_index Object
---@param _current_depth Object
---@return GraphController.Traversal
function PowerController.default_traversal_callback(_context, _node, _current_index, _current_depth) end

---@param traversal_ctx Object
---@param traversal_callback Object?  # Default = <null>
---@param traversal_rule Object?  # Default = <null>
function PowerController.bfs_traversal(traversal_ctx, traversal_callback, traversal_rule) end
