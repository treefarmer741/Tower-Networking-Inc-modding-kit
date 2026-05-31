#ifndef TNI_API_HEADER_DHCPCONTROLMODULE
#define TNI_API_HEADER_DHCPCONTROLMODULE
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "LogicControlModule.hpp"

struct DHCPControlModule : public LogicControlModule {
	using LogicControlModule::LogicControlModule;

	constexpr DHCPControlModule(LogicControlModule base) : LogicControlModule{base} {}
	constexpr DHCPControlModule(uint64_t addr) : LogicControlModule{addr} {}
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
	inline Variant configure(const NetworkControlModule& netctl);
	inline String get_configstr();
	inline void set_with_configstr(String cfgs);
	inline void handle_save(Variant save_obj);
	inline void handle_load(Variant save_obj);
};

#include "LogicController.hpp"
#include "NetworkControlModule.hpp"

inline void DHCPControlModule::reset_all() { this->voidcall("reset_all"); }
inline void DHCPControlModule::set_option_nwaddr_bind(String hwaddr, String nwaddr) { this->voidcall("set_option_nwaddr_bind", hwaddr, nwaddr); }
inline void DHCPControlModule::set_option_dns(Variant dns_srv_addrs) { this->voidcall("set_option_dns", dns_srv_addrs); }
inline void DHCPControlModule::set_option_prefix(String naddr_prefix) { this->voidcall("set_option_prefix", naddr_prefix); }
inline void DHCPControlModule::clear_all_options() { this->voidcall("clear_all_options"); }
inline Variant DHCPControlModule::get_save_var_list() { return this->operator()("get_save_var_list"); }
inline Variant DHCPControlModule::configure(const NetworkControlModule& netctl) { return this->operator()("configure", Object(reinterpret_cast<const Object*>(&netctl)->address())); }
inline String DHCPControlModule::get_configstr() { return this->operator()("get_configstr"); }
inline void DHCPControlModule::set_with_configstr(String cfgs) { this->voidcall("set_with_configstr", cfgs); }
inline void DHCPControlModule::handle_save(Variant save_obj) { this->voidcall("handle_save", save_obj); }
inline void DHCPControlModule::handle_load(Variant save_obj) { this->voidcall("handle_load", save_obj); }

#endif
