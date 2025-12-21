#ifndef TNI_API_HEADER_GAMEWORLD
#define TNI_API_HEADER_GAMEWORLD
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct GameWorld : public Node2D {
	using Node2D::Node2D;

	constexpr GameWorld(Node2D base) : Node2D{base} {}
	constexpr GameWorld(uint64_t addr) : Node2D{addr} {}
	constexpr GameWorld(Object obj) : GameWorld{obj.address()} {}
	GameWorld(Variant variant) : GameWorld{variant.as_object().address()} {}

	PROPERTY(mobile_os_scn, Variant);  // Const value type was not supported.
	enum CostStackIndice : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		PPU = 0,
		REG_COST = 1,
	};
	PROPERTY(BASE_ACCL, Variant);  // Const value type was not supported.
	PROPERTY(phctl_scn, Variant);  // Const value type was not supported.
	PROPERTY(dmctl_scn, Variant);  // Const value type was not supported.

	PROPERTY(is_state_restored, bool);
	PROPERTY(play_options, PlayOptions);
	PROPERTY(game_stats, GameStatistics);
	PROPERTY(scenario_name, String);
	PROPERTY(disable_daycycles, bool);
	PROPERTY(loop_day, bool);
	PROPERTY(default_application_unlocks, Variant);
	PROPERTY(netsh_default_always, bool);
	PROPERTY(autosave_enabled, bool);
	PROPERTY(main_scon, SaveController);
	PROPERTY(time_mult, double);
	PROPERTY(dns_lookup, Variant);
	PROPERTY(nwaddr_lookup, Variant);
	PROPERTY(scene_res_path, String);
	PROPERTY(elevator_fee_per_floor, int64_t);
	PROPERTY(elevator_time_per_floor, double);
	PROPERTY(rng_seed, int64_t);
	PROPERTY(n_days, int64_t);
	PROPERTY(days_in_debt, int64_t);
	PROPERTY(mobile_os_cvl, MobileOSLayer);
	PROPERTY(app_licenses, Variant);
	PROPERTY(day_opening_balance, int64_t);
	PROPERTY(auto_complete_candidate_list, Variant);
	PROPERTY(just_loaded_in_on_this_day, bool);
	PROPERTY(migration_srack_c, int64_t);
	PROPERTY(difficulty_hash, int64_t);
	PROPERTY(unlocks_or_achievements_allowed, bool);
	PROPERTY(difficulty_level, String);
	PROPERTY(n_player_msg, int64_t);
	PROPERTY(player_messages, Variant);
	PROPERTY(player_cash_balance, int64_t);
	PROPERTY(player_transactions, Variant);
	PROPERTY(player_transaction_count, int64_t);
	PROPERTY(daycycle_controller, DayCycleController);
	PROPERTY(device_failure_controller, RandomEvent);
	PROPERTY(power_outage_controller, RandomEvent);
	PROPERTY(power_surge_controller, RandomEvent);
	PROPERTY(worm_spawn_controller, RandomEvent);
	PROPERTY(loan_controller, LoanController);
	PROPERTY(decentromarket_controller, DecentroMarketController);
	PROPERTY(playerhosting_controller, PlayerHostingController);
	PROPERTY(player_hostings, Variant);
	PROPERTY(propmod_controller, PropModController);
	PROPERTY(available_programs, Variant);
	PROPERTY(player_loans, Variant);
	PROPERTY(users, Variant);
	PROPERTY(user_hostings, Variant);
	PROPERTY(user_fqdn_usedescripts, Variant);
	PROPERTY(registered_domains, Variant);
	PROPERTY(floor_builders, Variant);
	PROPERTY(locations, Variant);
	PROPERTY(link_controller, LinkController);
	PROPERTY(onboarding_controller, OnboardingController);
	PROPERTY(device_merchants, Variant);
	PROPERTY(players, Variant);
	PROPERTY(device_unit_nodes, Node2D);
	PROPERTY(component_nodes, Node2D);
	PROPERTY(fixture_nodes, Node2D);
	PROPERTY(mp_spawn, MultiplayerSpawner);
	PROPERTY(cron_controller, CronController);
	PROPERTY(menuconf, Variant);
	PROPERTY(base_engine_tsms, int64_t);
	PROPERTY(engine_tsms_since_base, int64_t);
	PROPERTY(msand, Sandbox);
	PROPERTY(payment_due_today, int64_t);
	PROPERTY(base_payment_breakdown, Variant);
	PROPERTY(admin_fee_mult, double);
	PROPERTY(power_fee_mult, double);
	PROPERTY(network_fee_mult, double);
	PROPERTY(link_fee_mult, double);
	PROPERTY(save_pathdir, String);
	PROPERTY(last_autosave_time, double);
	PROPERTY(client_last_node_spawn_ts, int64_t);
	PROPERTY(client_time_since_last_spawn_ms, int64_t);
	PROPERTY(client_spawns_initialized, bool);
	PROPERTY(curr_ts, int64_t);
	PROPERTY(day_period, int64_t);
	PROPERTY(normalized_day_period, int64_t);
	PROPERTY(game_time_str, String);
	PROPERTY(game_dt_str, String);
	PROPERTY(acquired_techs, Variant);

	inline void recompute_diff_hash();
	inline void update_player_msg(Variant msg_id, GameMessage gm);
	inline Variant get_player_msg(Variant msg_id);
	inline Variant get_transactional_sum(Variant n_date, Variant count_map);
	inline Variant lookup_domain(Variant domain);
	inline Variant test_merchant_existence(Variant merchant_sfp);
	inline void try_add_merchant(Variant merchant_sfp);
	inline void try_release_program(PackedScene prog_scene);
	inline void add_autocomplete_candidate(String candid);
	inline void remove_autocomplete_candidate(String candid);
	inline Variant get_loc_index(Location loc);
	inline void add_location(String sfp);
	inline MultiplayerMouse add_player(int64_t peer_id);
	inline void try_resume_daycycle();
	inline void master_timeout();
	inline void second_elapsed();
	inline void artifact_timeout();
	inline void remove_player(int64_t peer_id);
	inline Variant debug_monitor_callback();
	inline Variant calculate_payment_due_breakdown(bool itemized);
	inline Variant get_full_savepath(String subname);
	inline void trigger_game_over(Variant msg, bool by_force);
	inline void submit_user_complaint(User failing_user);
	inline void sync_ptrans_delta(Variant s_ptrans);
	inline void sync_pmsg_delta(Variant s_pmsg);
	inline void update_last_node_spawn_ts_now();
	inline void trigger_day_elapse(Variant curr_day);
	inline void acquire_app_license(String title, int64_t license_cost);
	inline void modify_player_cash(Variant amount, Variant details, int64_t category);
	inline void send_player_message(Variant title, Variant msg, int64_t tone_enum);
	inline void add_player_hosting(String fqdn, String use_spec_csv, double ppu);
	inline void remove_player_hosting(String fqdn);
	inline void put_dns_entry(Variant fqdn, Variant netaddr);
	inline void update_server_timescale(double timescale_arg);
	inline void submit_alert_with_lowpass(String normal_alert_title, String normal_alert_full_msg, String lowpass_alert_title, String lowpass_alert_full_msg);
	inline void acquire_all_tech();
	inline void enable_all_listings();
	inline void enable_all_tech_and_listings();
};

#include "PlayOptions.hpp"
#include "GameStatistics.hpp"
#include "SaveController.hpp"
#include "MobileOSLayer.hpp"
#include "DayCycleController.hpp"
#include "RandomEvent.hpp"
#include "LoanController.hpp"
#include "DecentroMarketController.hpp"
#include "PlayerHostingController.hpp"
#include "PropModController.hpp"
#include "LinkController.hpp"
#include "OnboardingController.hpp"
#include "CronController.hpp"
#include "GameMessage.hpp"
#include "Location.hpp"
#include "MultiplayerMouse.hpp"
#include "User.hpp"

inline void GameWorld::recompute_diff_hash() { voidcall("recompute_diff_hash"); }
inline void GameWorld::update_player_msg(Variant msg_id, GameMessage gm) { voidcall("update_player_msg", msg_id, gm); }
inline Variant GameWorld::get_player_msg(Variant msg_id) { return operator()("get_player_msg", msg_id); }
inline Variant GameWorld::get_transactional_sum(Variant n_date, Variant count_map) { return operator()("get_transactional_sum", n_date, count_map); }
inline Variant GameWorld::lookup_domain(Variant domain) { return operator()("lookup_domain", domain); }
inline Variant GameWorld::test_merchant_existence(Variant merchant_sfp) { return operator()("test_merchant_existence", merchant_sfp); }
inline void GameWorld::try_add_merchant(Variant merchant_sfp) { voidcall("try_add_merchant", merchant_sfp); }
inline void GameWorld::try_release_program(PackedScene prog_scene) { voidcall("try_release_program", prog_scene); }
inline void GameWorld::add_autocomplete_candidate(String candid) { voidcall("add_autocomplete_candidate", candid); }
inline void GameWorld::remove_autocomplete_candidate(String candid) { voidcall("remove_autocomplete_candidate", candid); }
inline Variant GameWorld::get_loc_index(Location loc) { return operator()("get_loc_index", loc); }
inline void GameWorld::add_location(String sfp) { voidcall("add_location", sfp); }
inline MultiplayerMouse GameWorld::add_player(int64_t peer_id) { return MultiplayerMouse(operator()("add_player", peer_id).as_object().address()); }
inline void GameWorld::try_resume_daycycle() { voidcall("try_resume_daycycle"); }
inline void GameWorld::master_timeout() { voidcall("master_timeout"); }
inline void GameWorld::second_elapsed() { voidcall("second_elapsed"); }
inline void GameWorld::artifact_timeout() { voidcall("artifact_timeout"); }
inline void GameWorld::remove_player(int64_t peer_id) { voidcall("remove_player", peer_id); }
inline Variant GameWorld::debug_monitor_callback() { return operator()("debug_monitor_callback"); }
inline Variant GameWorld::calculate_payment_due_breakdown(bool itemized) { return operator()("calculate_payment_due_breakdown", itemized); }
inline Variant GameWorld::get_full_savepath(String subname) { return operator()("get_full_savepath", subname); }
inline void GameWorld::trigger_game_over(Variant msg, bool by_force) { voidcall("trigger_game_over", msg, by_force); }
inline void GameWorld::submit_user_complaint(User failing_user) { voidcall("submit_user_complaint", failing_user); }
inline void GameWorld::sync_ptrans_delta(Variant s_ptrans) { voidcall("sync_ptrans_delta", s_ptrans); }
inline void GameWorld::sync_pmsg_delta(Variant s_pmsg) { voidcall("sync_pmsg_delta", s_pmsg); }
inline void GameWorld::update_last_node_spawn_ts_now() { voidcall("update_last_node_spawn_ts_now"); }
inline void GameWorld::trigger_day_elapse(Variant curr_day) { voidcall("trigger_day_elapse", curr_day); }
inline void GameWorld::acquire_app_license(String title, int64_t license_cost) { voidcall("acquire_app_license", title, license_cost); }
inline void GameWorld::modify_player_cash(Variant amount, Variant details, int64_t category) { voidcall("modify_player_cash", amount, details, category); }
inline void GameWorld::send_player_message(Variant title, Variant msg, int64_t tone_enum) { voidcall("send_player_message", title, msg, tone_enum); }
inline void GameWorld::add_player_hosting(String fqdn, String use_spec_csv, double ppu) { voidcall("add_player_hosting", fqdn, use_spec_csv, ppu); }
inline void GameWorld::remove_player_hosting(String fqdn) { voidcall("remove_player_hosting", fqdn); }
inline void GameWorld::put_dns_entry(Variant fqdn, Variant netaddr) { voidcall("put_dns_entry", fqdn, netaddr); }
inline void GameWorld::update_server_timescale(double timescale_arg) { voidcall("update_server_timescale", timescale_arg); }
inline void GameWorld::submit_alert_with_lowpass(String normal_alert_title, String normal_alert_full_msg, String lowpass_alert_title, String lowpass_alert_full_msg) { voidcall("submit_alert_with_lowpass", normal_alert_title, normal_alert_full_msg, lowpass_alert_title, lowpass_alert_full_msg); }
inline void GameWorld::acquire_all_tech() { voidcall("acquire_all_tech"); }
inline void GameWorld::enable_all_listings() { voidcall("enable_all_listings"); }
inline void GameWorld::enable_all_tech_and_listings() { voidcall("enable_all_tech_and_listings"); }

#endif
