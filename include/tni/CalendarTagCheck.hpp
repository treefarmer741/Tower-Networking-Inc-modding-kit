#ifndef TNI_API_HEADER_CALENDARTAGCHECK
#define TNI_API_HEADER_CALENDARTAGCHECK
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CalendarTagCheck : public HBoxContainer {
	using HBoxContainer::HBoxContainer;

	constexpr CalendarTagCheck(HBoxContainer base) : HBoxContainer{base} {}
	constexpr CalendarTagCheck(uint64_t addr) : HBoxContainer{addr} {}
	constexpr CalendarTagCheck(Object obj) : CalendarTagCheck{obj.address()} {}
	CalendarTagCheck(Variant variant) : CalendarTagCheck{variant.as_object().address()} {}


	PROPERTY(mark, Panel);
	PROPERTY(check, CheckBox);

	inline void setup(String tag_name, Variant color, bool on_day);
};


inline void CalendarTagCheck::setup(String tag_name, Variant color, bool on_day) { this->voidcall("setup", tag_name, color, on_day); }

#endif
