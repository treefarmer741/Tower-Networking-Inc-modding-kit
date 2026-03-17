#ifndef TNI_API_HEADER_USER
#define TNI_API_HEADER_USER
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct User : public Node {
	using Node::Node;

	constexpr User(Node base) : Node{base} {}
	constexpr User(uint64_t addr) : Node{addr} {}
	constexpr User(Object obj) : User{obj.address()} {}
	User(Variant variant) : User{variant.as_object().address()} {}


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

	inline void time_mult_updated(double time_mult_delta);
	inline void finish_setup();
	inline void first_use();
	inline void periodic_use();
	inline void down();
};

#include "Location.hpp"

inline void User::time_mult_updated(double time_mult_delta) { voidcall("time_mult_updated", time_mult_delta); }
inline void User::finish_setup() { voidcall("finish_setup"); }
inline void User::first_use() { voidcall("first_use"); }
inline void User::periodic_use() { voidcall("periodic_use"); }
inline void User::down() { voidcall("down"); }

#endif
