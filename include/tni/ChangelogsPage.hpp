#ifndef TNI_API_HEADER_CHANGELOGSPAGE
#define TNI_API_HEADER_CHANGELOGSPAGE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ChangelogsPage : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr ChangelogsPage(VBoxContainer base) : VBoxContainer{base} {}
	constexpr ChangelogsPage(uint64_t addr) : VBoxContainer{addr} {}
	constexpr ChangelogsPage(Object obj) : ChangelogsPage{obj.address()} {}
	ChangelogsPage(Variant variant) : ChangelogsPage{variant.as_object().address()} {}



};



#endif
