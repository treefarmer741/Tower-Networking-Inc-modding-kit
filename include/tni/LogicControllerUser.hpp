#ifndef TNI_API_HEADER_LOGICCONTROLLERUSER
#define TNI_API_HEADER_LOGICCONTROLLERUSER
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LogicControllerUser : public Node {
	using Node::Node;

	constexpr LogicControllerUser(Node base) : Node{base} {}
	constexpr LogicControllerUser(uint64_t addr) : Node{addr} {}
	constexpr LogicControllerUser(Object obj) : LogicControllerUser{obj.address()} {}
	LogicControllerUser(Variant variant) : LogicControllerUser{variant.as_object().address()} {}

	enum PaymentCalculationMethod : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		USAGE_FULFILMENT_TODAY = 0,
		LOWEST_SATIETY_TODAY = 1,
	};

	PROPERTY(logic_controller, LogicController);
	PROPERTY(behaviors, Variant);
	PROPERTY(hosting_behaviors, Variant);
	PROPERTY(public_client_behaviors, Variant);
	PROPERTY(user_application_unlocks, Variant);
	PROPERTY(consumption_payment_scaling, double);
	PROPERTY(allow_hwreset, bool);
	PROPERTY(bandwidth_used_last_tick, int64_t);
	PROPERTY(program_manifest_rolls, Variant);
	PROPERTY(bandwidth_used_this_tick, int64_t);
	PROPERTY(consumption_total_this_tick, int64_t);
	PROPERTY(consumption_satiety_this_tick, int64_t);
	PROPERTY(visitation_satiety_last_tick, int64_t);
	PROPERTY(visitation_satiety_this_tick, int64_t);
	PROPERTY(surveyor_messages, Variant);
	PROPERTY(visitor_stats, Variant);
	PROPERTY(visitor_stats_last_tick, Variant);
	PROPERTY(surveyor_daily_incidents, Variant);
	PROPERTY(surveyor_msg_stra, Variant);
	PROPERTY(payment_calculation_method, int64_t);
	PROPERTY(payment_today, int64_t);
	PROPERTY(user_hostings, Variant);
	PROPERTY(required_visitation_satiety_per_tick, int64_t);
	PROPERTY(csr, double);
	PROPERTY(vsr, double);
	PROPERTY(visitor_reset_modulo_n, int64_t);
	PROPERTY(consumption_total_last_tick, int64_t);
	PROPERTY(description, String);
	PROPERTY(user_profile_name, String);
	PROPERTY(base_use_period, double);
	PROPERTY(use_period_variance, double);
	PROPERTY(downtime_sla_seconds, int64_t);
	PROPERTY(init_grace_days, int64_t);
	PROPERTY(daily_rate, int64_t);
	PROPERTY(eagerness_factor, int64_t);
	PROPERTY(max_satiety_decay_ratio, double);
	PROPERTY(satiety_sla_ratio, double);
	PROPERTY(active_time_float, double);
	PROPERTY(inactive_time_float, double);
	PROPERTY(fulfilment_penalty_factor, double);
	PROPERTY(icon_texture, Texture2D);
	PROPERTY(unknown_user, bool);
	PROPERTY(satiety_ratio, double);
	PROPERTY(is_active, bool);
	PROPERTY(average_satiety_ratio_last_tick, double);
	PROPERTY(lowest_satiety_ratio, double);
	PROPERTY(usage_fulfilment_today, double);
	PROPERTY(use_timer, Timer);
	PROPERTY(down_timer, Timer);
	PROPERTY(grace_days_left, int64_t);
	PROPERTY(rng, RandomNumberGenerator);
	PROPERTY(location, Location);
	PROPERTY(username_fixed, bool);
	PROPERTY(username, String);
	PROPERTY(previous_active_state, bool);

	inline void push_surveyor_message(String msg);
	inline double get_manifest_roll(String release_name);
	inline Variant debug_monitor_callback();
	inline void account_intent(UserTraversal utc);
	inline void unaccount_intent(UserTraversal utc);
	inline void account_consumption(UserTraversal utc, Variant _ctx_or_pkt);
	inline void account_visitation(Program vprog, Variant ctx_or_pkt, LogicControllerUser _visitor);
	inline void time_mult_updated(double time_mult_delta);
	inline void finish_setup();
	inline void first_use();
	inline void periodic_use();
	inline void down();
};

#include "LogicController.hpp"
#include "Location.hpp"
#include "UserTraversal.hpp"
#include "Program.hpp"
#include "LogicControllerUser.hpp"

inline void LogicControllerUser::push_surveyor_message(String msg) { voidcall("push_surveyor_message", msg); }
inline double LogicControllerUser::get_manifest_roll(String release_name) { return operator()("get_manifest_roll", release_name); }
inline Variant LogicControllerUser::debug_monitor_callback() { return operator()("debug_monitor_callback"); }
inline void LogicControllerUser::account_intent(UserTraversal utc) { voidcall("account_intent", utc); }
inline void LogicControllerUser::unaccount_intent(UserTraversal utc) { voidcall("unaccount_intent", utc); }
inline void LogicControllerUser::account_consumption(UserTraversal utc, Variant _ctx_or_pkt) { voidcall("account_consumption", utc, _ctx_or_pkt); }
inline void LogicControllerUser::account_visitation(Program vprog, Variant ctx_or_pkt, LogicControllerUser _visitor) { voidcall("account_visitation", vprog, ctx_or_pkt, _visitor); }
inline void LogicControllerUser::time_mult_updated(double time_mult_delta) { voidcall("time_mult_updated", time_mult_delta); }
inline void LogicControllerUser::finish_setup() { voidcall("finish_setup"); }
inline void LogicControllerUser::first_use() { voidcall("first_use"); }
inline void LogicControllerUser::periodic_use() { voidcall("periodic_use"); }
inline void LogicControllerUser::down() { voidcall("down"); }

#endif
