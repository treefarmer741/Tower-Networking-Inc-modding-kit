#ifndef TNI_API_HEADER_CALENDARDAYENTRY
#define TNI_API_HEADER_CALENDARDAYENTRY
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CalendarDayEntry : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr CalendarDayEntry(VBoxContainer base) : VBoxContainer{base} {}
	constexpr CalendarDayEntry(uint64_t addr) : VBoxContainer{addr} {}
	constexpr CalendarDayEntry(Object obj) : CalendarDayEntry{obj.address()} {}
	CalendarDayEntry(Variant variant) : CalendarDayEntry{variant.as_object().address()} {}


	PROPERTY(mark, Panel);
	PROPERTY(title_label, Label);
	PROPERTY(when_label, Label);

	inline void show_event(String title, String when, Variant color);
	inline void show_label(String label_name, Variant color);
};


inline void CalendarDayEntry::show_event(String title, String when, Variant color) { this->voidcall("show_event", title, when, color); }
inline void CalendarDayEntry::show_label(String label_name, Variant color) { this->voidcall("show_label", label_name, color); }

#endif
