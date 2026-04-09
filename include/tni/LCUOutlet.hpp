#ifndef TNI_API_HEADER_LCUOUTLET
#define TNI_API_HEADER_LCUOUTLET
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "FixtureOutlet.hpp"

struct LCUOutlet : public FixtureOutlet {
	using FixtureOutlet::FixtureOutlet;

	constexpr LCUOutlet(FixtureOutlet base) : FixtureOutlet{base} {}
	constexpr LCUOutlet(uint64_t addr) : FixtureOutlet{addr} {}
	constexpr LCUOutlet(Object obj) : LCUOutlet{obj.address()} {}
	LCUOutlet(Variant variant) : LCUOutlet{variant.as_object().address()} {}


	PROPERTY(user, LogicControllerUser);
	PROPERTY(logic_controller, LogicController);
	PROPERTY(socket, Socket);
	PROPERTY(floor_num, int64_t);

	inline Variant debug_monitor_callback();
};

#include "LogicControllerUser.hpp"
#include "LogicController.hpp"
#include "Socket.hpp"

inline Variant LCUOutlet::debug_monitor_callback() { return this->operator()("debug_monitor_callback"); }

#endif
