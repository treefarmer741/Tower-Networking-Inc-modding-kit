#ifndef TNI_API_HEADER_CALENDARMARK
#define TNI_API_HEADER_CALENDARMARK
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CalendarMark : public Panel {
	using Panel::Panel;

	constexpr CalendarMark(Panel base) : Panel{base} {}
	constexpr CalendarMark(uint64_t addr) : Panel{addr} {}
	constexpr CalendarMark(Object obj) : CalendarMark{obj.address()} {}
	CalendarMark(Variant variant) : CalendarMark{variant.as_object().address()} {}


	PROPERTY(filled_style, StyleBox);
	PROPERTY(ring_style, StyleBox);

	inline void set_mark(Variant color, bool ring);
};


inline void CalendarMark::set_mark(Variant color, bool ring) { this->voidcall("set_mark", color, ring); }

#endif
