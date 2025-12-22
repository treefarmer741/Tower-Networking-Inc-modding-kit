#ifndef TNI_API_HEADER_TNIPOPUP
#define TNI_API_HEADER_TNIPOPUP
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TniPopup : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr TniPopup(VBoxContainer base) : VBoxContainer{base} {}
	constexpr TniPopup(uint64_t addr) : VBoxContainer{addr} {}
	constexpr TniPopup(Object obj) : TniPopup{obj.address()} {}
	TniPopup(Variant variant) : TniPopup{variant.as_object().address()} {}



};



#endif
