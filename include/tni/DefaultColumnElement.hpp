#ifndef TNI_API_HEADER_DEFAULTCOLUMNELEMENT
#define TNI_API_HEADER_DEFAULTCOLUMNELEMENT
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DefaultColumnElement : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr DefaultColumnElement(PanelContainer base) : PanelContainer{base} {}
	constexpr DefaultColumnElement(uint64_t addr) : PanelContainer{addr} {}
	constexpr DefaultColumnElement(Object obj) : DefaultColumnElement{obj.address()} {}
	DefaultColumnElement(Variant variant) : DefaultColumnElement{variant.as_object().address()} {}


	PROPERTY(main_label, Label);

	inline void display_as_toplink();
	inline void display_as_bottomlink();
};


inline void DefaultColumnElement::display_as_toplink() { voidcall("display_as_toplink"); }
inline void DefaultColumnElement::display_as_bottomlink() { voidcall("display_as_bottomlink"); }

#endif
