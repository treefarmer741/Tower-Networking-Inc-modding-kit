#ifndef TNI_API_HEADER_TENABOLTFLOORROW
#define TNI_API_HEADER_TENABOLTFLOORROW
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct TenaboltFloorRow : public HBoxContainer {
	using HBoxContainer::HBoxContainer;

	constexpr TenaboltFloorRow(HBoxContainer base) : HBoxContainer{base} {}
	constexpr TenaboltFloorRow(uint64_t addr) : HBoxContainer{addr} {}
	constexpr TenaboltFloorRow(Object obj) : TenaboltFloorRow{obj.address()} {}
	TenaboltFloorRow(Variant variant) : TenaboltFloorRow{variant.as_object().address()} {}


	PROPERTY(floor_label, Label);
	PROPERTY(event_label, Label);
	PROPERTY(time_label, Label);

	inline void show_event(int64_t floor_num, String event_name, String time_range, Variant color, bool started);
};


inline void TenaboltFloorRow::show_event(int64_t floor_num, String event_name, String time_range, Variant color, bool started) { this->voidcall("show_event", floor_num, event_name, time_range, color, started); }

#endif
