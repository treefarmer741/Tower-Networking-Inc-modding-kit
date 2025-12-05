#ifndef TN_API_HEADER_POWERCONTROLLER
#define TN_API_HEADER_POWERCONTROLLER

#include <api.hpp>

struct PowerController : public Node {
	using Node::Node;

	PowerController(Variant variant) : PowerController{variant.as_object().address()} {}

	PROPERTY(propagate_charges, bool);
	PROPERTY(disabled, bool);
	PROPERTY(charge_rate, int64_t);
	PROPERTY(allow_passthrough, bool);
	PROPERTY(charge_capacity, int64_t);
	PROPERTY(can_discharge_to_supply, bool);
	PROPERTY(surge_blocker, bool);
	PROPERTY(functional, bool);
	PROPERTY(is_enabled_and_functional, bool);
	PROPERTY(depth, int64_t);
	PROPERTY(locals, Variant);
	PROPERTY(charges, int64_t);
	PROPERTY(charge_ratio, double);
	PROPERTY(total_supplying_time_s, double);
	PROPERTY(current_load, int64_t);
	PROPERTY(displayed_load, int64_t);
	PROPERTY(can_supply_power, bool);
	PROPERTY(in_src, int64_t);
	PROPERTY(latest_discharge_size, int64_t);
	PROPERTY(will_charge, bool);
	PROPERTY(sus_enabled, bool);
	PROPERTY(ports, Variant);
	PROPERTY(neighbours, Variant);
	PROPERTY(reversed_ports, Variant);

	inline Variant is_friend_class(Variant obj) { return operator()("is_friend_class", obj); }
	inline void set_sus_val(Variant newv) { voidcall("set_sus_val", newv); }
	inline void add_local(Variant lc) { voidcall("add_local", lc); }
	inline void remove_local(Variant lc) { voidcall("remove_local", lc); }
	inline void break_circuit() { voidcall("break_circuit"); }
	inline void close_circuit() { voidcall("close_circuit"); }
	inline Variant debug_monitor_callback() { return operator()("debug_monitor_callback"); }
	inline bool default_port_traversal_rule(Variant _context, Variant _from_node, Variant from_port, Variant current_depth) { return operator()("default_port_traversal_rule", _context, _from_node, from_port, current_depth); }
	inline bool default_traversal_rule(Variant charge_ctx, Variant from_node, Variant to_node, Variant current_depth) { return operator()("default_traversal_rule", charge_ctx, from_node, to_node, current_depth); }
	inline int64_t default_port_traversal_callback(Variant _context, Variant _node, Variant _port, Variant _current_index, Variant _current_depth) { return operator()("default_port_traversal_callback", _context, _node, _port, _current_index, _current_depth); }
	inline int64_t default_traversal_callback(Variant _context, Variant node, Variant _current_index, Variant _current_depth) { return operator()("default_traversal_callback", _context, node, _current_index, _current_depth); }
	inline double get_remaining_hours() { return operator()("get_remaining_hours"); }
	inline void time_mult_updated(double _time_mult_delta) { voidcall("time_mult_updated", _time_mult_delta); }
	inline void add_port(Variant socket) { voidcall("add_port", socket); }
	inline void remove_port(Variant socket) { voidcall("remove_port", socket); }
	inline void add_neighbour(Variant port, Variant nc) { voidcall("add_neighbour", port, nc); }
	inline void remove_neighbours_on_port(Variant port) { voidcall("remove_neighbours_on_port", port); }
	inline Variant get_neighbour(Variant via) { return operator()("get_neighbour", via); }
	inline void bfs_port_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule) { voidcall("bfs_port_traversal", traversal_ctx, traversal_callback, traversal_rule); }
	inline void bfs_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule) { voidcall("bfs_traversal", traversal_ctx, traversal_callback, traversal_rule); }
};

#endif
