#ifndef TNI_API_HEADER_CALENDARDAYCELL
#define TNI_API_HEADER_CALENDARDAYCELL
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CalendarDayCell : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr CalendarDayCell(PanelContainer base) : PanelContainer{base} {}
	constexpr CalendarDayCell(uint64_t addr) : PanelContainer{addr} {}
	constexpr CalendarDayCell(Object obj) : CalendarDayCell{obj.address()} {}
	CalendarDayCell(Variant variant) : CalendarDayCell{variant.as_object().address()} {}

	PROPERTY(mark_scn, Variant);  // Const value type was not supported.

	PROPERTY(normal_style, StyleBox);
	PROPERTY(selected_style, StyleBox);
	PROPERTY(today_color, Variant);
	PROPERTY(future_color, Variant);
	PROPERTY(day_label, Label);
	PROPERTY(dots, Container);
	PROPERTY(day, int64_t);

	inline void show_day(int64_t d, bool is_today, bool is_selected, bool is_future);
	inline void set_marks(Variant colors);
	inline void set_dimmed(bool dimmed);
};


inline void CalendarDayCell::show_day(int64_t d, bool is_today, bool is_selected, bool is_future) { this->voidcall("show_day", d, is_today, is_selected, is_future); }
inline void CalendarDayCell::set_marks(Variant colors) { this->voidcall("set_marks", colors); }
inline void CalendarDayCell::set_dimmed(bool dimmed) { this->voidcall("set_dimmed", dimmed); }

#endif
