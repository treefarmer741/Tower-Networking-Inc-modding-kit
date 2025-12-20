#ifndef TNI_API_HEADER_LCUOUTLET
#define TNI_API_HEADER_LCUOUTLET
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LCUOutlet : public Area2D {
	using Area2D::Area2D;

	constexpr LCUOutlet(Area2D base) : Area2D{base} {}
	constexpr LCUOutlet(uint64_t addr) : Area2D{addr} {}
	constexpr LCUOutlet(Object obj) : LCUOutlet{obj.address()} {}
	LCUOutlet(Variant variant) : LCUOutlet{variant.as_object().address()} {}


	PROPERTY(user, LogicControllerUser);
	PROPERTY(logic_controller, LogicController);
	PROPERTY(socket, Socket);

	inline Variant debug_monitor_callback();
};

#include "LogicControllerUser.hpp"
#include "LogicController.hpp"
#include "Socket.hpp"

inline Variant LCUOutlet::debug_monitor_callback() { return operator()("debug_monitor_callback"); }

#endif
