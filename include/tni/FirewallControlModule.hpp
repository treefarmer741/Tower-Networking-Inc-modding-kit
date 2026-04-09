#ifndef TNI_API_HEADER_FIREWALLCONTROLMODULE
#define TNI_API_HEADER_FIREWALLCONTROLMODULE
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "LogicControlModule.hpp"

struct FirewallControlModule : public LogicControlModule {
	using LogicControlModule::LogicControlModule;

	constexpr FirewallControlModule(LogicControlModule base) : LogicControlModule{base} {}
	constexpr FirewallControlModule(uint64_t addr) : LogicControlModule{addr} {}
	constexpr FirewallControlModule(Object obj) : FirewallControlModule{obj.address()} {}
	FirewallControlModule(Variant variant) : FirewallControlModule{variant.as_object().address()} {}


	PROPERTY(firewall_table, Variant);
	PROPERTY(default_firewall_policy_allows, bool);
	PROPERTY(host_controller, LogicController);

	inline void reset_all();
	inline void set_default_firewall_policy(bool default_policy_allow);
	inline void add_rule(String re);
	inline void remove_rule(String re);
	inline void clear_fw_table();
	inline Variant get_save_var_list();
	inline String get_configstr();
	inline void set_with_configstr(String cfgs);
	inline void handle_save(Variant save_obj);
	inline void handle_load(Variant save_obj);
};

#include "LogicController.hpp"

inline void FirewallControlModule::reset_all() { this->voidcall("reset_all"); }
inline void FirewallControlModule::set_default_firewall_policy(bool default_policy_allow) { this->voidcall("set_default_firewall_policy", default_policy_allow); }
inline void FirewallControlModule::add_rule(String re) { this->voidcall("add_rule", re); }
inline void FirewallControlModule::remove_rule(String re) { this->voidcall("remove_rule", re); }
inline void FirewallControlModule::clear_fw_table() { this->voidcall("clear_fw_table"); }
inline Variant FirewallControlModule::get_save_var_list() { return this->operator()("get_save_var_list"); }
inline String FirewallControlModule::get_configstr() { return this->operator()("get_configstr"); }
inline void FirewallControlModule::set_with_configstr(String cfgs) { this->voidcall("set_with_configstr", cfgs); }
inline void FirewallControlModule::handle_save(Variant save_obj) { this->voidcall("handle_save", save_obj); }
inline void FirewallControlModule::handle_load(Variant save_obj) { this->voidcall("handle_load", save_obj); }

#endif
