#ifndef TNI_API_HEADER_WORLDACTIVITY
#define TNI_API_HEADER_WORLDACTIVITY
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct WorldActivity : public Node {
	using Node::Node;

	constexpr WorldActivity(Node base) : Node{base} {}
	constexpr WorldActivity(uint64_t addr) : Node{addr} {}
	constexpr WorldActivity(Object obj) : WorldActivity{obj.address()} {}
	WorldActivity(Variant variant) : WorldActivity{variant.as_object().address()} {}



	inline void get_activity_display_name();
	inline String get_activity_description();
};


inline void WorldActivity::get_activity_display_name() { voidcall("get_activity_display_name"); }
inline String WorldActivity::get_activity_description() { return operator()("get_activity_description"); }

#endif
