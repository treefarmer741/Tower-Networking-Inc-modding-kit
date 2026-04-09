#ifndef TNI_API_HEADER_POWEROUTLET
#define TNI_API_HEADER_POWEROUTLET
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "FixtureOutlet.hpp"

struct PowerOutlet : public FixtureOutlet {
	using FixtureOutlet::FixtureOutlet;

	constexpr PowerOutlet(FixtureOutlet base) : FixtureOutlet{base} {}
	constexpr PowerOutlet(uint64_t addr) : FixtureOutlet{addr} {}
	constexpr PowerOutlet(Object obj) : PowerOutlet{obj.address()} {}
	PowerOutlet(Variant variant) : PowerOutlet{variant.as_object().address()} {}


	PROPERTY(controller, GraphController);
	PROPERTY(current_floor, Location);
	PROPERTY(socket, Socket);
	PROPERTY(floor_num, int64_t);

	inline void remove();
	inline Variant debug_monitor_callback();
};

#include "GraphController.hpp"
#include "Location.hpp"
#include "Socket.hpp"

inline void PowerOutlet::remove() { this->voidcall("remove"); }
inline Variant PowerOutlet::debug_monitor_callback() { return this->operator()("debug_monitor_callback"); }

#endif
