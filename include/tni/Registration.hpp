#ifndef TNI_API_HEADER_REGISTRATION
#define TNI_API_HEADER_REGISTRATION
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Registration : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr Registration(VBoxContainer base) : VBoxContainer{base} {}
	constexpr Registration(uint64_t addr) : VBoxContainer{addr} {}
	constexpr Registration(Object obj) : Registration{obj.address()} {}
	Registration(Variant variant) : Registration{variant.as_object().address()} {}

	PROPERTY(usi_scn, Variant);  // Const value type was not supported.

	PROPERTY(emlabel, Label);
	PROPERTY(associate_use_button, Button);
	PROPERTY(finalize_domain_button, Button);
	PROPERTY(domain_label, Label);
	PROPERTY(fqdn_input, TextEdit);
	PROPERTY(use_container, Container);
	PROPERTY(ppu_display, Label);
	PROPERTY(ppu_slider, Slider);
	PROPERTY(rg_display, Label);
	PROPERTY(dmlbl_default, String);
	PROPERTY(configured_use_specs, Variant);

	inline void reset();
};


inline void Registration::reset() { voidcall("reset"); }

#endif
