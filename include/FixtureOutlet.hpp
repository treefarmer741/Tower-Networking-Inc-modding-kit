#ifndef TNI_API_HEADER_FIXTUREOUTLET
#define TNI_API_HEADER_FIXTUREOUTLET
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct FixtureOutlet : public Area2D {
	using Area2D::Area2D;

	constexpr FixtureOutlet(Area2D base) : Area2D{base} {}
	constexpr FixtureOutlet(uint64_t addr) : Area2D{addr} {}
	constexpr FixtureOutlet(Object obj) : FixtureOutlet{obj.address()} {}
	FixtureOutlet(Variant variant) : FixtureOutlet{variant.as_object().address()} {}


	PROPERTY(socket, Socket);

	inline Variant debug_monitor_callback();
};

#include "Socket.hpp"

inline Variant FixtureOutlet::debug_monitor_callback() { return operator()("debug_monitor_callback"); }

#endif
