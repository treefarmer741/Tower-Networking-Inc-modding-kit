#ifndef TNI_API_HEADER_HEADER
#define TNI_API_HEADER_HEADER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Header : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr Header(VBoxContainer base) : VBoxContainer{base} {}
	constexpr Header(uint64_t addr) : VBoxContainer{addr} {}
	constexpr Header(Object obj) : Header{obj.address()} {}
	Header(Variant variant) : Header{variant.as_object().address()} {}


	PROPERTY(display_label, Label);
	PROPERTY(clock_label, Label);

};



#endif
