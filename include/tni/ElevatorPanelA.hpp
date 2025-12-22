#ifndef TNI_API_HEADER_ELEVATORPANELA
#define TNI_API_HEADER_ELEVATORPANELA
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ElevatorPanelA : public Area2D {
	using Area2D::Area2D;

	constexpr ElevatorPanelA(Area2D base) : Area2D{base} {}
	constexpr ElevatorPanelA(uint64_t addr) : Area2D{addr} {}
	constexpr ElevatorPanelA(Object obj) : ElevatorPanelA{obj.address()} {}
	ElevatorPanelA(Variant variant) : ElevatorPanelA{variant.as_object().address()} {}


	PROPERTY(panel_text, String);
	PROPERTY(floor_selector, ItemList);
	PROPERTY(current_call_dst, int64_t);
	PROPERTY(called_dst, int64_t);
	PROPERTY(current_floor, Location);
	PROPERTY(current_call_time, double);

	inline void time_mult_updated(double time_mult_delta);
};

#include "Location.hpp"

inline void ElevatorPanelA::time_mult_updated(double time_mult_delta) { voidcall("time_mult_updated", time_mult_delta); }

#endif
