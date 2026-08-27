#ifndef TNI_API_HEADER_PLACEABLELCUOUTLET
#define TNI_API_HEADER_PLACEABLELCUOUTLET
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "LCUOutlet.hpp"

struct PlaceableLcuOutlet : public LCUOutlet {
	using LCUOutlet::LCUOutlet;

	constexpr PlaceableLcuOutlet(LCUOutlet base) : LCUOutlet{base} {}
	constexpr PlaceableLcuOutlet(uint64_t addr) : LCUOutlet{addr} {}
	constexpr PlaceableLcuOutlet(Object obj) : PlaceableLcuOutlet{obj.address()} {}
	PlaceableLcuOutlet(Variant variant) : PlaceableLcuOutlet{variant.as_object().address()} {}


	PROPERTY(user_wired, bool);
	PROPERTY(user, LogicControllerUser);
	PROPERTY(logic_controller, LogicController);
	PROPERTY(socket, Socket);
	PROPERTY(sockets, Variant);
	PROPERTY(floor_num, int64_t);

	inline Variant debug_monitor_callback();
};

#include "LogicControllerUser.hpp"
#include "LogicController.hpp"
#include "Socket.hpp"

inline Variant PlaceableLcuOutlet::debug_monitor_callback() { return this->operator()("debug_monitor_callback"); }

#endif
