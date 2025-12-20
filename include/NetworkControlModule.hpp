#ifndef TNI_API_HEADER_NETWORKCONTROLMODULE
#define TNI_API_HEADER_NETWORKCONTROLMODULE
// Generated API for game version 0.9.1
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

	PROPERTY(hwaddr_fixed, bool);
	PROPERTY(hardware_address, String);
	PROPERTY(network_address, String);
	PROPERTY(designated_dns_servers, Variant);
	PROPERTY(dhcp_enabled, String);
	PROPERTY(etc_hosts, Variant);
	PROPERTY(lb_back_ports, Variant);
	PROPERTY(dhcp_timer, Timer);
	PROPERTY(is_dhcp_enabled, bool);
	PROPERTY(host_controller, LogicController);

	inline void deallocate_addresses();
	inline TraversalContext request_dhcp_options();
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
};

#include "LogicController.hpp"
#include "TraversalContext.hpp"

inline void NetworkControlModule::deallocate_addresses() { voidcall("deallocate_addresses"); }
inline TraversalContext NetworkControlModule::request_dhcp_options() { return TraversalContext(operator()("request_dhcp_options").as_object().address()); }
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

#endif
