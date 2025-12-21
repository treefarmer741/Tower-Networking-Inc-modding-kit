#ifndef TNI_API_HEADER_LOGICCONTROLLER
#define TNI_API_HEADER_LOGICCONTROLLER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LogicController : public Node {
	using Node::Node;

	constexpr LogicController(Node base) : Node{base} {}
	constexpr LogicController(uint64_t addr) : Node{addr} {}
	constexpr LogicController(Object obj) : LogicController{obj.address()} {}
	LogicController(Variant variant) : LogicController{variant.as_object().address()} {}

	enum TraversalHistory : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		SRC_NODE_PATH = 0,
		PORT_PATH = 1,
		TRAFFIC_CLASS = 2,
		TRAFFIC_WEIGHT = 3,
		REQUEST_DATA = 4,
		ADDITIONAL_FLAGS = 5,
	};
	enum TableType : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		ROUTING = 0,
		FIREWALL = 1,
	};

	PROPERTY(default_tick_period, double);
	PROPERTY(auto_cycle_enabled, bool);
	PROPERTY(installed_cpu, int64_t);
	PROPERTY(installed_mem, int64_t);
	PROPERTY(installed_sto, int64_t);
	PROPERTY(installed_nbw, int64_t);
	PROPERTY(power_load, int64_t);
	PROPERTY(infinite_power_mode, bool);
	PROPERTY(power_controller, PowerController);
	PROPERTY(force_autoconfig, bool);
	PROPERTY(skip_autoconfig_cpu, bool);
	PROPERTY(allow_storage_mods, bool);
	PROPERTY(allow_process_mods, bool);
	PROPERTY(initialize_peripherals, Variant);
	PROPERTY(auto_configured_programs, Variant);
	PROPERTY(use_stack, Variant);
	PROPERTY(peripherals, Variant);
	PROPERTY(scheduler_idx, int64_t);
	PROPERTY(wasted_cycles, int64_t);
	PROPERTY(traversal_history, Variant);
	PROPERTY(traversal_history_last_tick, Variant);
	PROPERTY(current_load, int64_t);
	PROPERTY(up_timestamp, int64_t);
	PROPERTY(networkctl, NetworkControlModule);
	PROPERTY(routectl, RouteControlModule);
	PROPERTY(firewallctl, FirewallControlModule);
	PROPERTY(dhcpctl, DHCPControlModule);
	PROPERTY(filesysctl, FileSystemControlModule);
	PROPERTY(vlanctl, VLANControlModule);
	PROPERTY(packetctl, PacketControlModule);
	PROPERTY(tick_timer, Timer);
	PROPERTY(power, Power);
	PROPERTY(mpsync, MultiplayerSynchronizer);
	PROPERTY(mpsy2, MultiplayerSynchronizer);
	PROPERTY(print_name, String);
	PROPERTY(is_virtual, bool);
	PROPERTY(vm_host_controller, LogicController);
	PROPERTY(node2d_parent, Node2D);
	PROPERTY(hardware_address, String);
	PROPERTY(network_address, String);
	PROPERTY(is_remote_debugger, bool);
	PROPERTY(is_network_switch, bool);
	PROPERTY(is_network_router, bool);
	PROPERTY(is_hardware_nlb, bool);
	PROPERTY(is_network_lb, bool);
	PROPERTY(is_ha_enabled, bool);
	PROPERTY(is_vlan_enabled, bool);
	PROPERTY(is_dns_server, bool);
	PROPERTY(is_dhcp_server, bool);
	PROPERTY(is_network_tap, bool);
	PROPERTY(is_network_filter, bool);
	PROPERTY(installed_programs, Variant);
	PROPERTY(running_programs, Variant);
	PROPERTY(live_programs, Variant);
	PROPERTY(network_ports, Variant);
	PROPERTY(os_running, bool);
	PROPERTY(free_storage, int64_t);
	PROPERTY(total_storage_capacity, int64_t);
	PROPERTY(extended_storage, int64_t);
	PROPERTY(used_storage, int64_t);
	PROPERTY(free_memory, int64_t);
	PROPERTY(used_memory, int64_t);
	PROPERTY(cpu_load, int64_t);
	PROPERTY(wasted_nbw, int64_t);
	PROPERTY(free_nbw, int64_t);
	PROPERTY(nbw_wasted_last_tick, int64_t);
	PROPERTY(nbw_used_last_tick, int64_t);
	PROPERTY(traversal_history_nbw, int64_t);
	PROPERTY(traversal_history_last_tick_nbw, int64_t);
	PROPERTY(pcap_history_marker, int64_t);
	PROPERTY(pmodset, Variant);
	PROPERTY(nw_or_hw_addr, String);
	PROPERTY(system_messages, Variant);
	PROPERTY(is_user_host, bool);
	PROPERTY(is_link_host, bool);
	PROPERTY(is_device_host, bool);
	PROPERTY(installed_program_sfps, Variant);
	PROPERTY(lbcounter, int64_t);
	PROPERTY(sorted_packet_processors, Variant);
	PROPERTY(ports, Variant);
	PROPERTY(neighbours, Variant);
	PROPERTY(reversed_ports, Variant);

	inline void time_mult_updated(double _time_mult_delta);
	inline void wipe_all_data();
	inline void reboot_os();
	inline void autoconfigure_specs_based_on_installs();
	inline Variant install_program(String prg_path, bool bypass_restrictions, int64_t modify_cpu_abs, int64_t modify_mem_abs, int64_t modify_sto_abs, String modify_rel_nm, Variant extra_install_opts);
	inline Program get_installed_program(String release_name);
	inline Variant run_installed_program(String release_name, bool bypass_restrictions);
	inline Variant halt_running_process(String release_name, bool bypass_restrictions);
	inline void remove_program(NodePath prog_path);
	inline Variant uninstall_program(String release_name, bool bypass_restrictions);
	inline void start_all_programs();
	inline void add_peripheral(Variant per, bool install_callback);
	inline void remove_peripheral(Variant per);
	inline void reset();
	inline void client_update_last_tick_usage(int64_t new_nbw_used, int64_t new_nbw_wasted);
	inline void refresh_all(bool reset_schidx);
	inline void clear_port_stats();
	inline void boot_os();
	inline void shutdown_os();
	inline void run_cycle();
	inline bool default_traversal_rule(Variant _context, Variant _from_node, Variant _from_port, Variant _current_depth);
	inline void network_traversal(Variant traversal_ctx, Variant traversal_callback);
	inline void record_traversal_history(TraversalContext context, LogicControllerSocket via_port);
	inline Variant debug_monitor_callback();
	inline void remove_table_entry(String re, int64_t tt);
	inline void clear_table(int64_t tt);
	inline TraversalContext init_traversal_ctx(Variant traffic_class, Variant request_data);
	inline bool has_hardware_address(String hwaddr);
	inline bool has_network_address(String nwaddr);
	inline bool test_modifier_presence(int64_t ctlmod);
	inline bool has_logical_address(String addr);
	inline bool has_network_port_id(Variant port_id_or_num);
	inline void push_to_use_stack(String new_use, int64_t count);
	inline Variant is_friend_class(Variant obj);
	inline void show_hint(String msg);
	inline void restore_default_programs();
	inline void dfs_port_traversal(Variant traversal_ctx, Variant traversal_callback);
	inline void add_port(Socket socket);
	inline void remove_port(Variant socket);
	inline void update_pkt_processors();
	inline void add_neighbour(Socket port, GraphController nc);
	inline void remove_neighbours_on_port(Socket port);
	inline GraphController get_neighbour(Socket via);
	inline bool default_port_traversal_rule(Variant _context, Variant _node, Variant _port, Variant _current_depth);
	inline int64_t default_port_traversal_callback(Variant _context, Variant _node, Variant _port, Variant _current_index, Variant _current_depth);
	inline void bfs_port_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule);
	inline int64_t default_traversal_callback(Variant _context, Variant _node, Variant _current_index, Variant _current_depth);
	inline void bfs_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule);
};

#include "PowerController.hpp"
#include "NetworkControlModule.hpp"
#include "RouteControlModule.hpp"
#include "FirewallControlModule.hpp"
#include "DHCPControlModule.hpp"
#include "FileSystemControlModule.hpp"
#include "VLANControlModule.hpp"
#include "PacketControlModule.hpp"
#include "Power.hpp"
#include "LogicController.hpp"
#include "Program.hpp"
#include "TraversalContext.hpp"
#include "LogicControllerSocket.hpp"
#include "Socket.hpp"
#include "GraphController.hpp"

inline void LogicController::time_mult_updated(double _time_mult_delta) { voidcall("time_mult_updated", _time_mult_delta); }
inline void LogicController::wipe_all_data() { voidcall("wipe_all_data"); }
inline void LogicController::reboot_os() { voidcall("reboot_os"); }
inline void LogicController::autoconfigure_specs_based_on_installs() { voidcall("autoconfigure_specs_based_on_installs"); }
inline Variant LogicController::install_program(String prg_path, bool bypass_restrictions, int64_t modify_cpu_abs, int64_t modify_mem_abs, int64_t modify_sto_abs, String modify_rel_nm, Variant extra_install_opts) { return operator()("install_program", prg_path, bypass_restrictions, modify_cpu_abs, modify_mem_abs, modify_sto_abs, modify_rel_nm, extra_install_opts); }
inline Program LogicController::get_installed_program(String release_name) { return Program(operator()("get_installed_program", release_name).as_object().address()); }
inline Variant LogicController::run_installed_program(String release_name, bool bypass_restrictions) { return operator()("run_installed_program", release_name, bypass_restrictions); }
inline Variant LogicController::halt_running_process(String release_name, bool bypass_restrictions) { return operator()("halt_running_process", release_name, bypass_restrictions); }
inline void LogicController::remove_program(NodePath prog_path) { voidcall("remove_program", prog_path); }
inline Variant LogicController::uninstall_program(String release_name, bool bypass_restrictions) { return operator()("uninstall_program", release_name, bypass_restrictions); }
inline void LogicController::start_all_programs() { voidcall("start_all_programs"); }
inline void LogicController::add_peripheral(Variant per, bool install_callback) { voidcall("add_peripheral", per, install_callback); }
inline void LogicController::remove_peripheral(Variant per) { voidcall("remove_peripheral", per); }
inline void LogicController::reset() { voidcall("reset"); }
inline void LogicController::client_update_last_tick_usage(int64_t new_nbw_used, int64_t new_nbw_wasted) { voidcall("client_update_last_tick_usage", new_nbw_used, new_nbw_wasted); }
inline void LogicController::refresh_all(bool reset_schidx) { voidcall("refresh_all", reset_schidx); }
inline void LogicController::clear_port_stats() { voidcall("clear_port_stats"); }
inline void LogicController::boot_os() { voidcall("boot_os"); }
inline void LogicController::shutdown_os() { voidcall("shutdown_os"); }
inline void LogicController::run_cycle() { voidcall("run_cycle"); }
inline bool LogicController::default_traversal_rule(Variant _context, Variant _from_node, Variant _from_port, Variant _current_depth) { return operator()("default_traversal_rule", _context, _from_node, _from_port, _current_depth); }
inline void LogicController::network_traversal(Variant traversal_ctx, Variant traversal_callback) { voidcall("network_traversal", traversal_ctx, traversal_callback); }
inline void LogicController::record_traversal_history(TraversalContext context, LogicControllerSocket via_port) { voidcall("record_traversal_history", context, via_port); }
inline Variant LogicController::debug_monitor_callback() { return operator()("debug_monitor_callback"); }
inline void LogicController::remove_table_entry(String re, int64_t tt) { voidcall("remove_table_entry", re, tt); }
inline void LogicController::clear_table(int64_t tt) { voidcall("clear_table", tt); }
inline TraversalContext LogicController::init_traversal_ctx(Variant traffic_class, Variant request_data) { return TraversalContext(operator()("init_traversal_ctx", traffic_class, request_data).as_object().address()); }
inline bool LogicController::has_hardware_address(String hwaddr) { return operator()("has_hardware_address", hwaddr); }
inline bool LogicController::has_network_address(String nwaddr) { return operator()("has_network_address", nwaddr); }
inline bool LogicController::test_modifier_presence(int64_t ctlmod) { return operator()("test_modifier_presence", ctlmod); }
inline bool LogicController::has_logical_address(String addr) { return operator()("has_logical_address", addr); }
inline bool LogicController::has_network_port_id(Variant port_id_or_num) { return operator()("has_network_port_id", port_id_or_num); }
inline void LogicController::push_to_use_stack(String new_use, int64_t count) { voidcall("push_to_use_stack", new_use, count); }
inline Variant LogicController::is_friend_class(Variant obj) { return operator()("is_friend_class", obj); }
inline void LogicController::show_hint(String msg) { voidcall("show_hint", msg); }
inline void LogicController::restore_default_programs() { voidcall("restore_default_programs"); }
inline void LogicController::dfs_port_traversal(Variant traversal_ctx, Variant traversal_callback) { voidcall("dfs_port_traversal", traversal_ctx, traversal_callback); }
inline void LogicController::add_port(Socket socket) { voidcall("add_port", socket); }
inline void LogicController::remove_port(Variant socket) { voidcall("remove_port", socket); }
inline void LogicController::update_pkt_processors() { voidcall("update_pkt_processors"); }
inline void LogicController::add_neighbour(Socket port, GraphController nc) { voidcall("add_neighbour", port, nc); }
inline void LogicController::remove_neighbours_on_port(Socket port) { voidcall("remove_neighbours_on_port", port); }
inline GraphController LogicController::get_neighbour(Socket via) { return GraphController(operator()("get_neighbour", via).as_object().address()); }
inline bool LogicController::default_port_traversal_rule(Variant _context, Variant _node, Variant _port, Variant _current_depth) { return operator()("default_port_traversal_rule", _context, _node, _port, _current_depth); }
inline int64_t LogicController::default_port_traversal_callback(Variant _context, Variant _node, Variant _port, Variant _current_index, Variant _current_depth) { return operator()("default_port_traversal_callback", _context, _node, _port, _current_index, _current_depth); }
inline void LogicController::bfs_port_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule) { voidcall("bfs_port_traversal", traversal_ctx, traversal_callback, traversal_rule); }
inline int64_t LogicController::default_traversal_callback(Variant _context, Variant _node, Variant _current_index, Variant _current_depth) { return operator()("default_traversal_callback", _context, _node, _current_index, _current_depth); }
inline void LogicController::bfs_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule) { voidcall("bfs_traversal", traversal_ctx, traversal_callback, traversal_rule); }

#endif
