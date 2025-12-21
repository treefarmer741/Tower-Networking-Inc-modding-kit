#ifndef TNI_API_HEADER_PASSIVEACTIVITY
#define TNI_API_HEADER_PASSIVEACTIVITY
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PassiveActivity : public Node {
	using Node::Node;

	constexpr PassiveActivity(Node base) : Node{base} {}
	constexpr PassiveActivity(uint64_t addr) : Node{addr} {}
	constexpr PassiveActivity(Object obj) : PassiveActivity{obj.address()} {}
	PassiveActivity(Variant variant) : PassiveActivity{variant.as_object().address()} {}



	inline void tick();
	inline void apply_effect_tick();
	inline void test_applicable();
	inline void get_activity_display_name();
	inline String get_activity_description();
};


inline void PassiveActivity::tick() { voidcall("tick"); }
inline void PassiveActivity::apply_effect_tick() { voidcall("apply_effect_tick"); }
inline void PassiveActivity::test_applicable() { voidcall("test_applicable"); }
inline void PassiveActivity::get_activity_display_name() { voidcall("get_activity_display_name"); }
inline String PassiveActivity::get_activity_description() { return operator()("get_activity_description"); }

#endif
