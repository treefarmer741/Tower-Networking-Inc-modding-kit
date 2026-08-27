#ifndef TNI_API_HEADER_USERBUILDER
#define TNI_API_HEADER_USERBUILDER
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct UserBuilder : public Node {
	using Node::Node;

	constexpr UserBuilder(Node base) : Node{base} {}
	constexpr UserBuilder(uint64_t addr) : Node{addr} {}
	constexpr UserBuilder(Object obj) : UserBuilder{obj.address()} {}
	UserBuilder(Variant variant) : UserBuilder{variant.as_object().address()} {}


	PROPERTY(onboarding_controller, UserOnboardingController);
	PROPERTY(build_options, Variant);
	PROPERTY(build_events, Variant);
	PROPERTY(disabled, bool);
	PROPERTY(skip_interval_builds, bool);
	PROPERTY(min_date, int64_t);
	PROPERTY(max_date, int64_t);
	PROPERTY(build_interval, int64_t);
	PROPERTY(random_build_option_on_day_zero, bool);
	PROPERTY(users_per_pack_min, int64_t);
	PROPERTY(users_per_pack_max, int64_t);
	PROPERTY(weight_indices, Variant);

	inline bool user_requirements_satisfied(Variant candid, Variant pending);
	inline void execute_random_build_option(bool force_spawn);
	inline void build_users_pack(Variant user_sfps, bool force_spawn);
	inline void trigger_date_elapsed(int64_t new_date);
};

#include "UserOnboardingController.hpp"

inline bool UserBuilder::user_requirements_satisfied(Variant candid, Variant pending) { return this->operator()("user_requirements_satisfied", candid, pending); }
inline void UserBuilder::execute_random_build_option(bool force_spawn) { this->voidcall("execute_random_build_option", force_spawn); }
inline void UserBuilder::build_users_pack(Variant user_sfps, bool force_spawn) { this->voidcall("build_users_pack", user_sfps, force_spawn); }
inline void UserBuilder::trigger_date_elapsed(int64_t new_date) { this->voidcall("trigger_date_elapsed", new_date); }

#endif
