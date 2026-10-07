#ifndef TNI_API_HEADER_CALENDARLEGENDCHIP
#define TNI_API_HEADER_CALENDARLEGENDCHIP
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CalendarLegendChip : public Button {
	using Button::Button;

	constexpr CalendarLegendChip(Button base) : Button{base} {}
	constexpr CalendarLegendChip(uint64_t addr) : Button{addr} {}
	constexpr CalendarLegendChip(Object obj) : CalendarLegendChip{obj.address()} {}
	CalendarLegendChip(Variant variant) : CalendarLegendChip{variant.as_object().address()} {}


	PROPERTY(event_kind, int64_t);
	PROPERTY(color, Variant);
	PROPERTY(label_id, int64_t);

	inline void set_active(bool active);
};


inline void CalendarLegendChip::set_active(bool active) { this->voidcall("set_active", active); }

#endif
