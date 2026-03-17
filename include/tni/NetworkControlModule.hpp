#ifndef TNI_API_HEADER_NETWORKCONTROLMODULE
#define TNI_API_HEADER_NETWORKCONTROLMODULE
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct NetworkControlModule : public Node {
	using Node::Node;

	constexpr NetworkControlModule(Node base) : Node{base} {}
	constexpr NetworkControlModule(uint64_t addr) : Node{addr} {}
	constexpr NetworkControlModule(Object obj) : NetworkControlModule{obj.address()} {}
	NetworkControlModule(Variant variant) : NetworkControlModule{variant.as_object().address()} {}

	static constexpr double DHCP_BASE_PERIOD = 10.0;  // NOTE: You should recompile your mod if this value changes!
	inline static const String BACK_PORT = "backend";  // NOTE: You should recompile your mod if this value changes!
	inline static const String STP_BLOCKED = "stp-blocked";  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(parent_controller, LogicController);
	PROPERTY(hwaddr_fixed, bool);
	PROPERTY(hardware_address, String);
	PROPERTY(network_address, String);
	PROPERTY(designated_dns_servers, Variant);
	PROPERTY(dhcp_enabled, String);
	PROPERTY(etc_hosts, Variant);
	PROPERTY(port_cfg, Variant);
	PROPERTY(port_met, Variant);
	PROPERTY(stp_state, Variant);
	PROPERTY(netw_priority, Variant);
	PROPERTY(dhcp_timer, Timer);
	PROPERTY(stp_timer, Timer);
	PROPERTY(is_dhcp_enabled, bool);
	PROPERTY(lb_back_ports, Variant);
	PROPERTY(stp_enabled, bool);
	PROPERTY(host_controller, LogicController);

	inline void deallocate_addresses();
	inline Variant dhcp_matcher(Variant node, Variant _curr_pkt);
	inline Variant request_dhcp_options();
	inline void dns_cache_request(Variant domain_name);
	inline void resolve_ctx_domain(TraversalContext traversal_ctx, bool cache_to_etchosts);
	inline Variant get_resolved_addr(String laddr);
	inline void request_dns_cache(String laddr);
	inline void reset_hwaddr();
	inline void reset_all();
	inline void set_network_address(String nwaddr);
	inline void set_dhcp_mode(String new_mode);
	inline void set_designated_dns_servers(Variant dns_servers);
	inline Variant get_save_var_list();
	inline void handle_save(Variant save_obj);
	inline void handle_load(Variant save_obj);
	inline void try_schedule_dhcp_request();
	inline void set_etc_host_entry(Variant entry, Variant val);
	inline void clear_etc_host();
	inline String get_etchost_str();
	inline void set_etchost_with_configstr(String cfgs);
	inline void set_stp_mode(bool is_en);
	inline void set_net_priority(String key, int64_t value);
	inline int64_t get_net_priority(Variant key);
	inline void set_port_metric(Variant port_id, int64_t metval);
	inline int64_t get_port_metric(Variant port_id);
	inline void set_port_config(Variant port_id, String cfg);
	inline bool test_port_stp_blocked(String port_id);
	inline void os_startup();
	inline void os_shutdown();
	inline void unblock_all_stp_blocks();
	inline Variant get_stp_local_bid();
	inline void set_as_stp_root();
	inline void set_new_stp_root(NodePath root_np, String root_port_id, int64_t path_cost);
	inline String get_stp_root_port_id();
	inline int64_t get_stp_path_cost();
	inline NodePath get_stp_root_np();
	inline Variant get_stp_port_pdus();
	inline void set_stp_port_pdu(String stp_port_id, Variant pduval);
	inline void process_bpdu(Variant packet);
	inline void redo_stp_port_cfg();
};

#include "LogicController.hpp"
#include "TraversalContext.hpp"

inline void NetworkControlModule::deallocate_addresses() { voidcall("deallocate_addresses"); }
inline Variant NetworkControlModule::dhcp_matcher(Variant node, Variant _curr_pkt) { return operator()("dhcp_matcher", node, _curr_pkt); }
inline Variant NetworkControlModule::request_dhcp_options() { return operator()("request_dhcp_options"); }
inline void NetworkControlModule::dns_cache_request(Variant domain_name) { voidcall("dns_cache_request", domain_name); }
inline void NetworkControlModule::resolve_ctx_domain(TraversalContext traversal_ctx, bool cache_to_etchosts) { voidcall("resolve_ctx_domain", traversal_ctx, cache_to_etchosts); }
inline Variant NetworkControlModule::get_resolved_addr(String laddr) { return operator()("get_resolved_addr", laddr); }
inline void NetworkControlModule::request_dns_cache(String laddr) { voidcall("request_dns_cache", laddr); }
inline void NetworkControlModule::reset_hwaddr() { voidcall("reset_hwaddr"); }
inline void NetworkControlModule::reset_all() { voidcall("reset_all"); }
inline void NetworkControlModule::set_network_address(String nwaddr) { voidcall("set_network_address", nwaddr); }
inline void NetworkControlModule::set_dhcp_mode(String new_mode) { voidcall("set_dhcp_mode", new_mode); }
inline void NetworkControlModule::set_designated_dns_servers(Variant dns_servers) { voidcall("set_designated_dns_servers", dns_servers); }
inline Variant NetworkControlModule::get_save_var_list() { return operator()("get_save_var_list"); }
inline void NetworkControlModule::handle_save(Variant save_obj) { voidcall("handle_save", save_obj); }
inline void NetworkControlModule::handle_load(Variant save_obj) { voidcall("handle_load", save_obj); }
inline void NetworkControlModule::try_schedule_dhcp_request() { voidcall("try_schedule_dhcp_request"); }
inline void NetworkControlModule::set_etc_host_entry(Variant entry, Variant val) { voidcall("set_etc_host_entry", entry, val); }
inline void NetworkControlModule::clear_etc_host() { voidcall("clear_etc_host"); }
inline String NetworkControlModule::get_etchost_str() { return operator()("get_etchost_str"); }
inline void NetworkControlModule::set_etchost_with_configstr(String cfgs) { voidcall("set_etchost_with_configstr", cfgs); }
inline void NetworkControlModule::set_stp_mode(bool is_en) { voidcall("set_stp_mode", is_en); }
inline void NetworkControlModule::set_net_priority(String key, int64_t value) { voidcall("set_net_priority", key, value); }
inline int64_t NetworkControlModule::get_net_priority(Variant key) { return operator()("get_net_priority", key); }
inline void NetworkControlModule::set_port_metric(Variant port_id, int64_t metval) { voidcall("set_port_metric", port_id, metval); }
inline int64_t NetworkControlModule::get_port_metric(Variant port_id) { return operator()("get_port_metric", port_id); }
inline void NetworkControlModule::set_port_config(Variant port_id, String cfg) { voidcall("set_port_config", port_id, cfg); }
inline bool NetworkControlModule::test_port_stp_blocked(String port_id) { return operator()("test_port_stp_blocked", port_id); }
inline void NetworkControlModule::os_startup() { voidcall("os_startup"); }
inline void NetworkControlModule::os_shutdown() { voidcall("os_shutdown"); }
inline void NetworkControlModule::unblock_all_stp_blocks() { voidcall("unblock_all_stp_blocks"); }
inline Variant NetworkControlModule::get_stp_local_bid() { return operator()("get_stp_local_bid"); }
inline void NetworkControlModule::set_as_stp_root() { voidcall("set_as_stp_root"); }
inline void NetworkControlModule::set_new_stp_root(NodePath root_np, String root_port_id, int64_t path_cost) { voidcall("set_new_stp_root", root_np, root_port_id, path_cost); }
inline String NetworkControlModule::get_stp_root_port_id() { return operator()("get_stp_root_port_id"); }
inline int64_t NetworkControlModule::get_stp_path_cost() { return operator()("get_stp_path_cost"); }
inline NodePath NetworkControlModule::get_stp_root_np() { return operator()("get_stp_root_np"); }
inline Variant NetworkControlModule::get_stp_port_pdus() { return operator()("get_stp_port_pdus"); }
inline void NetworkControlModule::set_stp_port_pdu(String stp_port_id, Variant pduval) { voidcall("set_stp_port_pdu", stp_port_id, pduval); }
inline void NetworkControlModule::process_bpdu(Variant packet) { voidcall("process_bpdu", packet); }
inline void NetworkControlModule::redo_stp_port_cfg() { voidcall("redo_stp_port_cfg"); }

#endif
