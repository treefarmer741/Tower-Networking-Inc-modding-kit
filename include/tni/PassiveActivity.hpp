#ifndef TNI_API_HEADER_PASSIVEACTIVITY
#define TNI_API_HEADER_PASSIVEACTIVITY
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "WorldActivity.hpp"

struct PassiveActivity : public WorldActivity {
	using WorldActivity::WorldActivity;

	constexpr PassiveActivity(WorldActivity base) : WorldActivity{base} {}
	constexpr PassiveActivity(uint64_t addr) : WorldActivity{addr} {}
	constexpr PassiveActivity(Object obj) : PassiveActivity{obj.address()} {}
	PassiveActivity(Variant variant) : PassiveActivity{variant.as_object().address()} {}



	inline void tick();
	inline void apply_effect_tick();
	inline void test_applicable();
	inline void get_activity_display_name();
	inline String get_activity_description();
};


inline void PassiveActivity::tick() { this->voidcall("tick"); }
inline void PassiveActivity::apply_effect_tick() { this->voidcall("apply_effect_tick"); }
inline void PassiveActivity::test_applicable() { this->voidcall("test_applicable"); }
inline void PassiveActivity::get_activity_display_name() { this->voidcall("get_activity_display_name"); }
inline String PassiveActivity::get_activity_description() { return this->operator()("get_activity_description"); }

#endif
