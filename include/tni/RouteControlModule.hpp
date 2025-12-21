#ifndef TNI_API_HEADER_ROUTECONTROLMODULE
#define TNI_API_HEADER_ROUTECONTROLMODULE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct RouteControlModule : public Node {
	using Node::Node;

	constexpr RouteControlModule(Node base) : Node{base} {}
	constexpr RouteControlModule(uint64_t addr) : Node{addr} {}
	constexpr RouteControlModule(Object obj) : RouteControlModule{obj.address()} {}
	RouteControlModule(Variant variant) : RouteControlModule{variant.as_object().address()} {}

	static constexpr int64_t MAX_PORT_GROUPS = 10;  // NOTE: You should recompile your mod if this value changes!
	enum RVID : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		DST_PORT_ID = 0,
		METRIC = 1,
		CYCTL = 2,
	};
	static constexpr int64_t ADR_CYTL_DEFAULT = 4;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(routing_table, Variant);
	PROPERTY(default_route_port_id, String);
	PROPERTY(broadcast_forwarding, bool);
	PROPERTY(rip_advertise_paths, Variant);
	PROPERTY(rip_enabled, bool);
	PROPERTY(port_groups, Variant);
	PROPERTY(route_entries, Variant);
	PROPERTY(routing_rules, Variant);
	PROPERTY(host_controller, LogicController);

	inline void reset_all();
	inline Variant get_all_port_ids_from_nonintgroup_with_memberid(String candidate_port_id);
	inline Variant get_groupid_from_portid(String candidate_port_id);
	inline Variant get_route_value(String rte, int64_t type_id);
	inline bool has_route(String rte);
	inline void update_route_value(String rte, String dst_port_id, int64_t metric);
	inline String get_configstr();
	inline void set_with_configstr(String cfgs);
	inline void set_default_route_port_id(String port_id);
	inline void add_route(String rte, String port_id, int64_t metric);
	inline void remove_route(String rte);
	inline void clear_route_table();
	inline Variant get_save_var_list();
	inline void handle_load(Variant save_obj);
	inline void reset();
	inline void set_broadcast_policy(bool new_mode);
	inline void add_rip_config(int64_t type_s, String entry);
	inline void remove_rip_config(int64_t type_s, String entry);
	inline void set_rip_mode(bool new_mode);
	inline int64_t rip_update_remote_router(Variant context, Variant node, Variant via_port, Variant _current_index, Variant current_depth);
	inline void refresh_route(String rte);
	inline Variant is_route_expired(String rte);
	inline void refresh();
	inline void create_port_group(Variant port_ids);
	inline void remove_port_group(String port_group_id);
	inline void handle_save(Variant save_obj);
};

#include "LogicController.hpp"

inline void RouteControlModule::reset_all() { voidcall("reset_all"); }
inline Variant RouteControlModule::get_all_port_ids_from_nonintgroup_with_memberid(String candidate_port_id) { return operator()("get_all_port_ids_from_nonintgroup_with_memberid", candidate_port_id); }
inline Variant RouteControlModule::get_groupid_from_portid(String candidate_port_id) { return operator()("get_groupid_from_portid", candidate_port_id); }
inline Variant RouteControlModule::get_route_value(String rte, int64_t type_id) { return operator()("get_route_value", rte, type_id); }
inline bool RouteControlModule::has_route(String rte) { return operator()("has_route", rte); }
inline void RouteControlModule::update_route_value(String rte, String dst_port_id, int64_t metric) { voidcall("update_route_value", rte, dst_port_id, metric); }
inline String RouteControlModule::get_configstr() { return operator()("get_configstr"); }
inline void RouteControlModule::set_with_configstr(String cfgs) { voidcall("set_with_configstr", cfgs); }
inline void RouteControlModule::set_default_route_port_id(String port_id) { voidcall("set_default_route_port_id", port_id); }
inline void RouteControlModule::add_route(String rte, String port_id, int64_t metric) { voidcall("add_route", rte, port_id, metric); }
inline void RouteControlModule::remove_route(String rte) { voidcall("remove_route", rte); }
inline void RouteControlModule::clear_route_table() { voidcall("clear_route_table"); }
inline Variant RouteControlModule::get_save_var_list() { return operator()("get_save_var_list"); }
inline void RouteControlModule::handle_load(Variant save_obj) { voidcall("handle_load", save_obj); }
inline void RouteControlModule::reset() { voidcall("reset"); }
inline void RouteControlModule::set_broadcast_policy(bool new_mode) { voidcall("set_broadcast_policy", new_mode); }
inline void RouteControlModule::add_rip_config(int64_t type_s, String entry) { voidcall("add_rip_config", type_s, entry); }
inline void RouteControlModule::remove_rip_config(int64_t type_s, String entry) { voidcall("remove_rip_config", type_s, entry); }
inline void RouteControlModule::set_rip_mode(bool new_mode) { voidcall("set_rip_mode", new_mode); }
inline int64_t RouteControlModule::rip_update_remote_router(Variant context, Variant node, Variant via_port, Variant _current_index, Variant current_depth) { return operator()("rip_update_remote_router", context, node, via_port, _current_index, current_depth); }
inline void RouteControlModule::refresh_route(String rte) { voidcall("refresh_route", rte); }
inline Variant RouteControlModule::is_route_expired(String rte) { return operator()("is_route_expired", rte); }
inline void RouteControlModule::refresh() { voidcall("refresh"); }
inline void RouteControlModule::create_port_group(Variant port_ids) { voidcall("create_port_group", port_ids); }
inline void RouteControlModule::remove_port_group(String port_group_id) { voidcall("remove_port_group", port_group_id); }
inline void RouteControlModule::handle_save(Variant save_obj) { voidcall("handle_save", save_obj); }

#endif
