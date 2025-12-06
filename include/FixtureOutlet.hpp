#ifndef TNI_API_HEADER_FIXTUREOUTLET
#define TNI_API_HEADER_FIXTUREOUTLET
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod will with updated headers may be required!

#include <api.hpp>

struct FixtureOutlet : public Area2D {
	using Area2D::Area2D;


	FixtureOutlet(Variant variant) : FixtureOutlet{variant.as_object().address()} {}

	PROPERTY(socket, Variant);

	inline Variant debug_monitor_callback() { return operator()("debug_monitor_callback"); }
};

#endif
