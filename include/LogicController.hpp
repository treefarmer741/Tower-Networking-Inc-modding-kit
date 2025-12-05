#ifndef TN_API_HEADER_LOGICCONTROLLER
#define TN_API_HEADER_LOGICCONTROLLER

#include <api.hpp>

struct LogicController : public Node {
	using Node::Node;

	LogicController(Variant variant) : LogicController{variant.as_object().address()} {}

	PROPERTY(default_tick_period, double);
	PROPERTY(auto_cycle_enabled, bool);
	PROPERTY(installed_cpu, int64_t);
	PROPERTY(installed_mem, int64_t);
	PROPERTY(installed_sto, int64_t);
	PROPERTY(installed_nbw, int64_t);
	PROPERTY(power_load, int64_t);
	PROPERTY(infinite_power_mode, bool);
	PROPERTY(power_controller, Variant);
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
	PROPERTY(networkctl, Variant);
	PROPERTY(routectl, Variant);
	PROPERTY(firewallctl, Variant);
	PROPERTY(dhcpctl, Variant);
	PROPERTY(filesysctl, Variant);
	PROPERTY(vlanctl, Variant);
	PROPERTY(packetctl, Variant);
	PROPERTY(tick_timer, Variant);
	PROPERTY(power, Variant);
	PROPERTY(mpsync, Variant);
	PROPERTY(mpsy2, Variant);
	PROPERTY(print_name, String);
	PROPERTY(is_virtual, bool);
	PROPERTY(vm_host_controller, Variant);
	PROPERTY(node2d_parent, Variant);
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

	inline void time_mult_updated(double _time_mult_delta) { voidcall("time_mult_updated", _time_mult_delta); }
	inline void wipe_all_data() { voidcall("wipe_all_data"); }
	inline void reboot_os() { voidcall("reboot_os"); }
	inline void autoconfigure_specs_based_on_installs() { voidcall("autoconfigure_specs_based_on_installs"); }
	inline Variant install_program(String prg_path, bool bypass_restrictions, int64_t modify_cpu_abs, int64_t modify_mem_abs, int64_t modify_sto_abs, String modify_rel_nm, Variant extra_install_opts) { return operator()("install_program", prg_path, bypass_restrictions, modify_cpu_abs, modify_mem_abs, modify_sto_abs, modify_rel_nm, extra_install_opts); }
	inline Variant get_installed_program(String release_name) { return operator()("get_installed_program", release_name); }
	inline Variant run_installed_program(String release_name, bool bypass_restrictions) { return operator()("run_installed_program", release_name, bypass_restrictions); }
	inline Variant halt_running_process(String release_name, bool bypass_restrictions) { return operator()("halt_running_process", release_name, bypass_restrictions); }
	inline void remove_program(Variant prog_path) { voidcall("remove_program", prog_path); }
	inline Variant uninstall_program(String release_name, bool bypass_restrictions) { return operator()("uninstall_program", release_name, bypass_restrictions); }
	inline void start_all_programs() { voidcall("start_all_programs"); }
	inline void add_peripheral(Variant per, bool install_callback) { voidcall("add_peripheral", per, install_callback); }
	inline void remove_peripheral(Variant per) { voidcall("remove_peripheral", per); }
	inline void reset() { voidcall("reset"); }
	inline void client_update_last_tick_usage(int64_t new_nbw_used, int64_t new_nbw_wasted) { voidcall("client_update_last_tick_usage", new_nbw_used, new_nbw_wasted); }
	inline void refresh_all(bool reset_schidx) { voidcall("refresh_all", reset_schidx); }
	inline void clear_port_stats() { voidcall("clear_port_stats"); }
	inline void boot_os() { voidcall("boot_os"); }
	inline void shutdown_os() { voidcall("shutdown_os"); }
	inline void run_cycle() { voidcall("run_cycle"); }
	inline bool default_traversal_rule(Variant _context, Variant _from_node, Variant _from_port, Variant _current_depth) { return operator()("default_traversal_rule", _context, _from_node, _from_port, _current_depth); }
	inline void network_traversal(Variant traversal_ctx, Variant traversal_callback) { voidcall("network_traversal", traversal_ctx, traversal_callback); }
	inline void record_traversal_history(Variant context, Variant via_port) { voidcall("record_traversal_history", context, via_port); }
	inline Variant debug_monitor_callback() { return operator()("debug_monitor_callback"); }
	inline void remove_table_entry(String re, int64_t tt) { voidcall("remove_table_entry", re, tt); }
	inline void clear_table(int64_t tt) { voidcall("clear_table", tt); }
	inline Variant init_traversal_ctx(Variant traffic_class, Variant request_data) { return operator()("init_traversal_ctx", traffic_class, request_data); }
	inline bool has_hardware_address(String hwaddr) { return operator()("has_hardware_address", hwaddr); }
	inline bool has_network_address(String nwaddr) { return operator()("has_network_address", nwaddr); }
	inline bool test_modifier_presence(int64_t ctlmod) { return operator()("test_modifier_presence", ctlmod); }
	inline bool has_logical_address(String addr) { return operator()("has_logical_address", addr); }
	inline bool has_network_port_id(Variant port_id_or_num) { return operator()("has_network_port_id", port_id_or_num); }
	inline void push_to_use_stack(String new_use, int64_t count) { voidcall("push_to_use_stack", new_use, count); }
	inline Variant is_friend_class(Variant obj) { return operator()("is_friend_class", obj); }
	inline void show_hint(String msg) { voidcall("show_hint", msg); }
	inline void restore_default_programs() { voidcall("restore_default_programs"); }
	inline void dfs_port_traversal(Variant traversal_ctx, Variant traversal_callback) { voidcall("dfs_port_traversal", traversal_ctx, traversal_callback); }
	inline void add_port(Variant socket) { voidcall("add_port", socket); }
	inline void remove_port(Variant socket) { voidcall("remove_port", socket); }
	inline void update_pkt_processors() { voidcall("update_pkt_processors"); }
	inline void add_neighbour(Variant port, Variant nc) { voidcall("add_neighbour", port, nc); }
	inline void remove_neighbours_on_port(Variant port) { voidcall("remove_neighbours_on_port", port); }
	inline Variant get_neighbour(Variant via) { return operator()("get_neighbour", via); }
	inline bool default_port_traversal_rule(Variant _context, Variant _node, Variant _port, Variant _current_depth) { return operator()("default_port_traversal_rule", _context, _node, _port, _current_depth); }
	inline int64_t default_port_traversal_callback(Variant _context, Variant _node, Variant _port, Variant _current_index, Variant _current_depth) { return operator()("default_port_traversal_callback", _context, _node, _port, _current_index, _current_depth); }
	inline void bfs_port_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule) { voidcall("bfs_port_traversal", traversal_ctx, traversal_callback, traversal_rule); }
	inline int64_t default_traversal_callback(Variant _context, Variant _node, Variant _current_index, Variant _current_depth) { return operator()("default_traversal_callback", _context, _node, _current_index, _current_depth); }
	inline void bfs_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule) { voidcall("bfs_traversal", traversal_ctx, traversal_callback, traversal_rule); }
};

#endif
