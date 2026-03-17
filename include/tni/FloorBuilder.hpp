#ifndef TNI_API_HEADER_FLOORBUILDER
#define TNI_API_HEADER_FLOORBUILDER
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct FloorBuilder : public Node {
	using Node::Node;

	constexpr FloorBuilder(Node base) : Node{base} {}
	constexpr FloorBuilder(uint64_t addr) : Node{addr} {}
	constexpr FloorBuilder(Object obj) : FloorBuilder{obj.address()} {}
	FloorBuilder(Variant variant) : FloorBuilder{variant.as_object().address()} {}


	PROPERTY(onboarding_controller, OnboardingController);
	PROPERTY(build_options, Variant);
	PROPERTY(build_events, Variant);
	PROPERTY(disabled, bool);
	PROPERTY(skip_interval_builds, bool);
	PROPERTY(min_date, int64_t);
	PROPERTY(max_date, int64_t);
	PROPERTY(build_interval, int64_t);
	PROPERTY(random_build_option_on_day_zero, bool);
	PROPERTY(weight_indices, Variant);
	PROPERTY(spawn_paths, Variant);

	inline bool floor_requirements_satisfied(Location floor_candidate);
	inline void execute_random_build_option(bool force_spawn);
	inline void build_floor_with_sfp(String sfp, bool force_spawn);
	inline void trigger_date_elapsed(int64_t new_date);
};

#include "OnboardingController.hpp"
#include "Location.hpp"

inline bool FloorBuilder::floor_requirements_satisfied(Location floor_candidate) { return operator()("floor_requirements_satisfied", floor_candidate); }
inline void FloorBuilder::execute_random_build_option(bool force_spawn) { voidcall("execute_random_build_option", force_spawn); }
inline void FloorBuilder::build_floor_with_sfp(String sfp, bool force_spawn) { voidcall("build_floor_with_sfp", sfp, force_spawn); }
inline void FloorBuilder::trigger_date_elapsed(int64_t new_date) { voidcall("trigger_date_elapsed", new_date); }

#endif
