---@meta _
-- Generated API for game version 0.10.0

---@class RouteControlModule : Node
---@field MAX_PORT_GROUPS integer # Constant value: 10
---@field ADR_CYTL_DEFAULT integer # Constant value: 4
---@field routing_table table<any,any>
---@field default_route_port_id string
---@field broadcast_forwarding boolean
---@field rip_advertise_paths Array<any>
---@field rip_enabled boolean
---@field port_groups table<any,any>
---@field ha_hb_timer Timer
---@field rip_hb_timer Timer
---@field parent_controller LogicController
---@field route_entries Array<any>
---@field routing_rules Array<any>
---@field host_controller LogicController
local RouteControlModule = {}
---@enum RouteControlModule.RVID
RouteControlModule.RVID = {
	["DST_PORT_ID"] = 0,
	["METRIC"] = 1,
	["CYCTL"] = 2,
}

function RouteControlModule.reset_all() end

---@param candidate_port_id string
---@return Array<any>
function RouteControlModule.get_all_port_ids_from_nonintgroup_with_memberid(candidate_port_id) end

---@param candidate_port_id string
---@return Object
function RouteControlModule.get_groupid_from_portid(candidate_port_id) end

---@param rte string
---@param type_id integer
---@return Object
function RouteControlModule.get_route_value(rte, type_id) end

---@param rte string
---@return boolean
function RouteControlModule.has_route(rte) end

---@param rte string
---@param dst_port_id string
---@param metric integer?  # Default = 0
function RouteControlModule.update_route_value(rte, dst_port_id, metric) end

---@return string
function RouteControlModule.get_configstr() end

---@param cfgs string
function RouteControlModule.set_with_configstr(cfgs) end

---@param port_id string
function RouteControlModule.set_default_route_port_id(port_id) end

---@param rte string
---@param port_id string
---@param metric integer?  # Default = 0
function RouteControlModule.add_route(rte, port_id, metric) end

---@param rte string
function RouteControlModule.remove_route(rte) end

function RouteControlModule.clear_route_table() end

---@return Array<string>
function RouteControlModule.get_save_var_list() end

---@param save_obj Object
function RouteControlModule.handle_load(save_obj) end

function RouteControlModule.reset() end

---@param new_mode boolean
function RouteControlModule.set_broadcast_policy(new_mode) end

---@param type_s integer
---@param entry string
function RouteControlModule.add_rip_config(type_s, entry) end

---@param type_s integer
---@param entry string
function RouteControlModule.remove_rip_config(type_s, entry) end

---@param new_mode boolean
function RouteControlModule.set_rip_mode(new_mode) end

---@param context Object
---@param node Object
---@param via_port Object
---@param _current_index Object
---@param current_depth Object
---@return GraphController.Traversal
function RouteControlModule.rip_update_remote_router(context, node, via_port, _current_index, current_depth) end

---@param rte string
function RouteControlModule.refresh_route(rte) end

---@param rte string
---@return Object
function RouteControlModule.is_route_expired(rte) end

function RouteControlModule.refresh() end

---@param port_ids Array<any>
function RouteControlModule.create_port_group(port_ids) end

---@param port_group_id string
function RouteControlModule.remove_port_group(port_group_id) end

---@param save_obj Object
function RouteControlModule.handle_save(save_obj) end

---@param save_obj Object
function RouteControlModule.handle_load(save_obj) end

---@return Array<string>
function RouteControlModule.get_save_var_list() end
