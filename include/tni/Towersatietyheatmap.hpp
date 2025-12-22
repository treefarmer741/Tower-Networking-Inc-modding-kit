#ifndef TNI_API_HEADER_TOWERSATIETYHEATMAP
#define TNI_API_HEADER_TOWERSATIETYHEATMAP
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Towersatietyheatmap : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr Towersatietyheatmap(VBoxContainer base) : VBoxContainer{base} {}
	constexpr Towersatietyheatmap(uint64_t addr) : VBoxContainer{addr} {}
	constexpr Towersatietyheatmap(Object obj) : Towersatietyheatmap{obj.address()} {}
	Towersatietyheatmap(Variant variant) : Towersatietyheatmap{variant.as_object().address()} {}



};



#endif
