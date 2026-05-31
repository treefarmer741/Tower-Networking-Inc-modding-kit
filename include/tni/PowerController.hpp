#ifndef TNI_API_HEADER_POWERCONTROLLER
#define TNI_API_HEADER_POWERCONTROLLER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "GraphController.hpp"

struct PowerController : public GraphController {
	using GraphController::GraphController;

	constexpr PowerController(GraphController base) : GraphController{base} {}
	constexpr PowerController(uint64_t addr) : GraphController{addr} {}
	constexpr PowerController(Object obj) : PowerController{obj.address()} {}
	PowerController(Variant variant) : PowerController{variant.as_object().address()} {}

	static constexpr int64_t MAX_DEPTH = 99999;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t LEAKAGE = 1;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double REFRESH_PERIOD_SECONDS = 0.7;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double SUPP_REFRESH_SECONDS = 0.3;  // NOTE: You should recompile your mod if this value changes!

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
	PROPERTY(charge_timer, Timer);
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

	inline Variant is_friend_class(Variant obj);
	inline void start_charge_timer();
	inline void set_sus_val(Variant newv);
	inline void add_local(const Power& lc);
	inline void remove_local(const Power& lc);
	inline void break_circuit();
	inline void close_circuit();
	inline Variant debug_monitor_callback();
	inline bool default_port_traversal_rule(Variant _context, Variant _from_node, Variant from_port, Variant current_depth);
	inline bool default_traversal_rule(Variant charge_ctx, Variant from_node, Variant to_node, Variant current_depth);
	inline int64_t default_port_traversal_callback(Variant _context, Variant _node, Variant _port, Variant _current_index, Variant _current_depth);
	inline int64_t default_traversal_callback(Variant _context, Variant node, Variant _current_index, Variant _current_depth);
	inline double get_remaining_hours();
	inline void time_mult_updated(double _time_mult_delta);
	inline void add_port(const Socket& socket);
	inline void remove_port(const Socket& socket);
	inline void add_neighbour(const Socket& port, const GraphController& nc);
	inline void remove_neighbours_on_port(const Socket& port);
	inline GraphController get_neighbour(const Socket& via);
	inline void bfs_port_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule);
	inline void bfs_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule);
};

#include "Power.hpp"
#include "Socket.hpp"
#include "GraphController.hpp"

inline Variant PowerController::is_friend_class(Variant obj) { return this->operator()("is_friend_class", obj); }
inline void PowerController::start_charge_timer() { this->voidcall("start_charge_timer"); }
inline void PowerController::set_sus_val(Variant newv) { this->voidcall("set_sus_val", newv); }
inline void PowerController::add_local(const Power& lc) { this->voidcall("add_local", Object(reinterpret_cast<const Object*>(&lc)->address())); }
inline void PowerController::remove_local(const Power& lc) { this->voidcall("remove_local", Object(reinterpret_cast<const Object*>(&lc)->address())); }
inline void PowerController::break_circuit() { this->voidcall("break_circuit"); }
inline void PowerController::close_circuit() { this->voidcall("close_circuit"); }
inline Variant PowerController::debug_monitor_callback() { return this->operator()("debug_monitor_callback"); }
inline bool PowerController::default_port_traversal_rule(Variant _context, Variant _from_node, Variant from_port, Variant current_depth) { return this->operator()("default_port_traversal_rule", _context, _from_node, from_port, current_depth); }
inline bool PowerController::default_traversal_rule(Variant charge_ctx, Variant from_node, Variant to_node, Variant current_depth) { return this->operator()("default_traversal_rule", charge_ctx, from_node, to_node, current_depth); }
inline int64_t PowerController::default_port_traversal_callback(Variant _context, Variant _node, Variant _port, Variant _current_index, Variant _current_depth) { return this->operator()("default_port_traversal_callback", _context, _node, _port, _current_index, _current_depth); }
inline int64_t PowerController::default_traversal_callback(Variant _context, Variant node, Variant _current_index, Variant _current_depth) { return this->operator()("default_traversal_callback", _context, node, _current_index, _current_depth); }
inline double PowerController::get_remaining_hours() { return this->operator()("get_remaining_hours"); }
inline void PowerController::time_mult_updated(double _time_mult_delta) { this->voidcall("time_mult_updated", _time_mult_delta); }
inline void PowerController::add_port(const Socket& socket) { this->voidcall("add_port", Object(reinterpret_cast<const Object*>(&socket)->address())); }
inline void PowerController::remove_port(const Socket& socket) { this->voidcall("remove_port", Object(reinterpret_cast<const Object*>(&socket)->address())); }
inline void PowerController::add_neighbour(const Socket& port, const GraphController& nc) { this->voidcall("add_neighbour", Object(reinterpret_cast<const Object*>(&port)->address()), Object(reinterpret_cast<const Object*>(&nc)->address())); }
inline void PowerController::remove_neighbours_on_port(const Socket& port) { this->voidcall("remove_neighbours_on_port", Object(reinterpret_cast<const Object*>(&port)->address())); }
inline GraphController PowerController::get_neighbour(const Socket& via) { return GraphController(this->operator()("get_neighbour", Object(reinterpret_cast<const Object*>(&via)->address())).as_object().address()); }
inline void PowerController::bfs_port_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule) { this->voidcall("bfs_port_traversal", traversal_ctx, traversal_callback, traversal_rule); }
inline void PowerController::bfs_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule) { this->voidcall("bfs_traversal", traversal_ctx, traversal_callback, traversal_rule); }

#endif
