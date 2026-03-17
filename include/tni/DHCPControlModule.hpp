#ifndef TNI_API_HEADER_DHCPCONTROLMODULE
#define TNI_API_HEADER_DHCPCONTROLMODULE
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DHCPControlModule : public Node {
	using Node::Node;

	constexpr DHCPControlModule(Node base) : Node{base} {}
	constexpr DHCPControlModule(uint64_t addr) : Node{addr} {}
	constexpr DHCPControlModule(Object obj) : DHCPControlModule{obj.address()} {}
	DHCPControlModule(Variant variant) : DHCPControlModule{variant.as_object().address()} {}


	PROPERTY(option_dns, Variant);
	PROPERTY(option_prefix, String);
	PROPERTY(option_nwaddr_bind, Variant);
	PROPERTY(host_controller, LogicController);

	inline void reset_all();
	inline void set_option_nwaddr_bind(String hwaddr, String nwaddr);
	inline void set_option_dns(Variant dns_srv_addrs);
	inline void set_option_prefix(String naddr_prefix);
	inline void clear_all_options();
	inline Variant get_save_var_list();
	inline Variant configure(NetworkControlModule netctl);
	inline String get_configstr();
	inline void set_with_configstr(String cfgs);
	inline void handle_save(Variant save_obj);
	inline void handle_load(Variant save_obj);
};

#include "LogicController.hpp"
#include "NetworkControlModule.hpp"

inline void DHCPControlModule::reset_all() { voidcall("reset_all"); }
inline void DHCPControlModule::set_option_nwaddr_bind(String hwaddr, String nwaddr) { voidcall("set_option_nwaddr_bind", hwaddr, nwaddr); }
inline void DHCPControlModule::set_option_dns(Variant dns_srv_addrs) { voidcall("set_option_dns", dns_srv_addrs); }
inline void DHCPControlModule::set_option_prefix(String naddr_prefix) { voidcall("set_option_prefix", naddr_prefix); }
inline void DHCPControlModule::clear_all_options() { voidcall("clear_all_options"); }
inline Variant DHCPControlModule::get_save_var_list() { return operator()("get_save_var_list"); }
inline Variant DHCPControlModule::configure(NetworkControlModule netctl) { return operator()("configure", netctl); }
inline String DHCPControlModule::get_configstr() { return operator()("get_configstr"); }
inline void DHCPControlModule::set_with_configstr(String cfgs) { voidcall("set_with_configstr", cfgs); }
inline void DHCPControlModule::handle_save(Variant save_obj) { voidcall("handle_save", save_obj); }
inline void DHCPControlModule::handle_load(Variant save_obj) { voidcall("handle_load", save_obj); }

#endif
