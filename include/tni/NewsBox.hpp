#ifndef TNI_API_HEADER_NEWSBOX
#define TNI_API_HEADER_NEWSBOX
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct NewsBox : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr NewsBox(VBoxContainer base) : VBoxContainer{base} {}
	constexpr NewsBox(uint64_t addr) : VBoxContainer{addr} {}
	constexpr NewsBox(Object obj) : NewsBox{obj.address()} {}
	NewsBox(Variant variant) : NewsBox{variant.as_object().address()} {}


	PROPERTY(ctr, int64_t);

	inline void cycle_news();
};


inline void NewsBox::cycle_news() { voidcall("cycle_news"); }

#endif
