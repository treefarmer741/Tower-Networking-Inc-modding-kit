#ifndef TNI_API_HEADER_NEWSBOX
#define TNI_API_HEADER_NEWSBOX
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
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


inline void NewsBox::cycle_news() { this->voidcall("cycle_news"); }

#endif
