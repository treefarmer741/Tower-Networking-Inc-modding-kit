#ifndef TNI_API_HEADER_POWEREVENTROW
#define TNI_API_HEADER_POWEREVENTROW
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct PowerEventRow : public HBoxContainer {
	using HBoxContainer::HBoxContainer;

	constexpr PowerEventRow(HBoxContainer base) : HBoxContainer{base} {}
	constexpr PowerEventRow(uint64_t addr) : HBoxContainer{addr} {}
	constexpr PowerEventRow(Object obj) : PowerEventRow{obj.address()} {}
	PowerEventRow(Variant variant) : PowerEventRow{variant.as_object().address()} {}


	PROPERTY(floor_label, Label);
	PROPERTY(event_label, Label);
	PROPERTY(time_label, Label);

	inline void show_event(int64_t floor_num, String event_name, String time_range, bool started);
};


inline void PowerEventRow::show_event(int64_t floor_num, String event_name, String time_range, bool started) { this->voidcall("show_event", floor_num, event_name, time_range, started); }

#endif
