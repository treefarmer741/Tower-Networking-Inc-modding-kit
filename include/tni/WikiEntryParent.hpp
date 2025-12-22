#ifndef TNI_API_HEADER_WIKIENTRYPARENT
#define TNI_API_HEADER_WIKIENTRYPARENT
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct WikiEntryParent : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr WikiEntryParent(VBoxContainer base) : VBoxContainer{base} {}
	constexpr WikiEntryParent(uint64_t addr) : VBoxContainer{addr} {}
	constexpr WikiEntryParent(Object obj) : WikiEntryParent{obj.address()} {}
	WikiEntryParent(Variant variant) : WikiEntryParent{variant.as_object().address()} {}



};



#endif
