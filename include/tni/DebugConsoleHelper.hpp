#ifndef TNI_API_HEADER_DEBUGCONSOLEHELPER
#define TNI_API_HEADER_DEBUGCONSOLEHELPER
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct DebugConsoleHelper : public Node {
	using Node::Node;

	constexpr DebugConsoleHelper(Node base) : Node{base} {}
	constexpr DebugConsoleHelper(uint64_t addr) : Node{addr} {}
	constexpr DebugConsoleHelper(Object obj) : DebugConsoleHelper{obj.address()} {}
	DebugConsoleHelper(Variant variant) : DebugConsoleHelper{variant.as_object().address()} {}



	inline Variant count_devices(Variant _args);
	inline Variant count_users(Variant _args);
	inline void in_game_notify(Variant args);
	inline Variant get_game_opts(Variant _args);
	inline Variant get_acquired_techs(Variant _args);
	inline void maximize_user_lowest_sat_now(Variant _args);
	inline void trigger_devfail(Variant args);
	inline Variant restock_merchants(Variant _a);
	inline Variant unlock_tech(Variant args);
	inline Variant set_local_dns(Variant args);
	inline Variant set_program_autostart(Variant args);
	inline Variant set_floor_power(Variant args);
	inline Variant test_floor_surge(Variant args);
	inline Variant test_floor_outage(Variant args);
	inline Variant test_surge_controller(Variant _args);
	inline Variant test_outage_controller(Variant _args);
	inline Variant test_devfail_controller(Variant _args);
	inline Variant test_worm_controller(Variant _args);
	inline Variant test_copod_controller(Variant _args);
	inline Variant copod_attackers(Variant _args);
	inline Variant stop_copod(Variant _args);
	inline Variant test_secretariat_attack(Variant args);
	inline Variant test_rebel_worm(Variant args);
	inline Variant test_decentro_worm(Variant args);
	inline Variant test_secretariat_audit(Variant _args);
	inline Variant trigger_free_play(Variant _args);
	inline Variant list_panopticon_status(Variant _args);
	inline Variant set_playopt(Variant args);
	inline Variant set_clock(Variant args);
	inline Variant inc_days(Variant args);
	inline Variant add_cash(Variant args);
	inline Variant add_secretariat_credit(Variant args);
	inline Variant add_decentro(Variant args);
	inline Variant please_all(Variant _args);
	inline Variant reload_console_funcs(Variant _args);
};


inline Variant DebugConsoleHelper::count_devices(Variant _args) { return this->operator()("count_devices", _args); }
inline Variant DebugConsoleHelper::count_users(Variant _args) { return this->operator()("count_users", _args); }
inline void DebugConsoleHelper::in_game_notify(Variant args) { this->voidcall("in_game_notify", args); }
inline Variant DebugConsoleHelper::get_game_opts(Variant _args) { return this->operator()("get_game_opts", _args); }
inline Variant DebugConsoleHelper::get_acquired_techs(Variant _args) { return this->operator()("get_acquired_techs", _args); }
inline void DebugConsoleHelper::maximize_user_lowest_sat_now(Variant _args) { this->voidcall("maximize_user_lowest_sat_now", _args); }
inline void DebugConsoleHelper::trigger_devfail(Variant args) { this->voidcall("trigger_devfail", args); }
inline Variant DebugConsoleHelper::restock_merchants(Variant _a) { return this->operator()("restock_merchants", _a); }
inline Variant DebugConsoleHelper::unlock_tech(Variant args) { return this->operator()("unlock_tech", args); }
inline Variant DebugConsoleHelper::set_local_dns(Variant args) { return this->operator()("set_local_dns", args); }
inline Variant DebugConsoleHelper::set_program_autostart(Variant args) { return this->operator()("set_program_autostart", args); }
inline Variant DebugConsoleHelper::set_floor_power(Variant args) { return this->operator()("set_floor_power", args); }
inline Variant DebugConsoleHelper::test_floor_surge(Variant args) { return this->operator()("test_floor_surge", args); }
inline Variant DebugConsoleHelper::test_floor_outage(Variant args) { return this->operator()("test_floor_outage", args); }
inline Variant DebugConsoleHelper::test_surge_controller(Variant _args) { return this->operator()("test_surge_controller", _args); }
inline Variant DebugConsoleHelper::test_outage_controller(Variant _args) { return this->operator()("test_outage_controller", _args); }
inline Variant DebugConsoleHelper::test_devfail_controller(Variant _args) { return this->operator()("test_devfail_controller", _args); }
inline Variant DebugConsoleHelper::test_worm_controller(Variant _args) { return this->operator()("test_worm_controller", _args); }
inline Variant DebugConsoleHelper::test_copod_controller(Variant _args) { return this->operator()("test_copod_controller", _args); }
inline Variant DebugConsoleHelper::copod_attackers(Variant _args) { return this->operator()("copod_attackers", _args); }
inline Variant DebugConsoleHelper::stop_copod(Variant _args) { return this->operator()("stop_copod", _args); }
inline Variant DebugConsoleHelper::test_secretariat_attack(Variant args) { return this->operator()("test_secretariat_attack", args); }
inline Variant DebugConsoleHelper::test_rebel_worm(Variant args) { return this->operator()("test_rebel_worm", args); }
inline Variant DebugConsoleHelper::test_decentro_worm(Variant args) { return this->operator()("test_decentro_worm", args); }
inline Variant DebugConsoleHelper::test_secretariat_audit(Variant _args) { return this->operator()("test_secretariat_audit", _args); }
inline Variant DebugConsoleHelper::trigger_free_play(Variant _args) { return this->operator()("trigger_free_play", _args); }
inline Variant DebugConsoleHelper::list_panopticon_status(Variant _args) { return this->operator()("list_panopticon_status", _args); }
inline Variant DebugConsoleHelper::set_playopt(Variant args) { return this->operator()("set_playopt", args); }
inline Variant DebugConsoleHelper::set_clock(Variant args) { return this->operator()("set_clock", args); }
inline Variant DebugConsoleHelper::inc_days(Variant args) { return this->operator()("inc_days", args); }
inline Variant DebugConsoleHelper::add_cash(Variant args) { return this->operator()("add_cash", args); }
inline Variant DebugConsoleHelper::add_secretariat_credit(Variant args) { return this->operator()("add_secretariat_credit", args); }
inline Variant DebugConsoleHelper::add_decentro(Variant args) { return this->operator()("add_decentro", args); }
inline Variant DebugConsoleHelper::please_all(Variant _args) { return this->operator()("please_all", _args); }
inline Variant DebugConsoleHelper::reload_console_funcs(Variant _args) { return this->operator()("reload_console_funcs", _args); }

#endif
