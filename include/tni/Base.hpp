#ifndef TNI_API_HEADER_BASE
#define TNI_API_HEADER_BASE
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "LogicControllerUser.hpp"

struct Base : public LogicControllerUser {
	using LogicControllerUser::LogicControllerUser;

	constexpr Base(LogicControllerUser base) : LogicControllerUser{base} {}
	constexpr Base(uint64_t addr) : LogicControllerUser{addr} {}
	constexpr Base(Object obj) : Base{obj.address()} {}
	Base(Variant variant) : Base{variant.as_object().address()} {}


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
	PROPERTY(consumption_satiety_last_tick, int64_t);
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
	inline void account_intent(const UserTraversal& utc);
	inline void unaccount_intent(const UserTraversal& utc);
	inline void account_consumption(const UserTraversal& utc, Variant _ctx_or_pkt);
	inline void account_visitation(const Program& vprog, Variant ctx_or_pkt, const LogicControllerUser& _visitor);
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

inline void Base::push_surveyor_message(String msg) { this->voidcall("push_surveyor_message", msg); }
inline double Base::get_manifest_roll(String release_name) { return this->operator()("get_manifest_roll", release_name); }
inline Variant Base::debug_monitor_callback() { return this->operator()("debug_monitor_callback"); }
inline void Base::account_intent(const UserTraversal& utc) { this->voidcall("account_intent", Object(reinterpret_cast<const Object*>(&utc)->address())); }
inline void Base::unaccount_intent(const UserTraversal& utc) { this->voidcall("unaccount_intent", Object(reinterpret_cast<const Object*>(&utc)->address())); }
inline void Base::account_consumption(const UserTraversal& utc, Variant _ctx_or_pkt) { this->voidcall("account_consumption", Object(reinterpret_cast<const Object*>(&utc)->address()), _ctx_or_pkt); }
inline void Base::account_visitation(const Program& vprog, Variant ctx_or_pkt, const LogicControllerUser& _visitor) { this->voidcall("account_visitation", Object(reinterpret_cast<const Object*>(&vprog)->address()), ctx_or_pkt, Object(reinterpret_cast<const Object*>(&_visitor)->address())); }
inline void Base::time_mult_updated(double time_mult_delta) { this->voidcall("time_mult_updated", time_mult_delta); }
inline void Base::finish_setup() { this->voidcall("finish_setup"); }
inline void Base::first_use() { this->voidcall("first_use"); }
inline void Base::periodic_use() { this->voidcall("periodic_use"); }
inline void Base::down() { this->voidcall("down"); }

#endif
