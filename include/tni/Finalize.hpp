#ifndef TNI_API_HEADER_FINALIZE
#define TNI_API_HEADER_FINALIZE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Finalize : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr Finalize(VBoxContainer base) : VBoxContainer{base} {}
	constexpr Finalize(uint64_t addr) : VBoxContainer{addr} {}
	constexpr Finalize(Object obj) : Finalize{obj.address()} {}
	Finalize(Variant variant) : Finalize{variant.as_object().address()} {}


	PROPERTY(domain_item, Variant);
	PROPERTY(is_reg, bool);
	PROPERTY(title, Label);
	PROPERTY(domain_anchor, Container);
	PROPERTY(cost_lbl, Label);
	PROPERTY(cost_container, Container);
	PROPERTY(finbutton, Button);
	PROPERTY(derbutton, Button);

	inline void set_domain_item(Variant di, bool is_registration);
};


inline void Finalize::set_domain_item(Variant di, bool is_registration) { voidcall("set_domain_item", di, is_registration); }

#endif
