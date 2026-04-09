#ifndef TNI_API_HEADER_DEBUGWINDOW
#define TNI_API_HEADER_DEBUGWINDOW
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct DebugWindow : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr DebugWindow(PanelContainer base) : PanelContainer{base} {}
	constexpr DebugWindow(uint64_t addr) : PanelContainer{addr} {}
	constexpr DebugWindow(Object obj) : DebugWindow{obj.address()} {}
	DebugWindow(Variant variant) : DebugWindow{variant.as_object().address()} {}


	PROPERTY(bind, Variant);
	PROPERTY(text, String);

};



#endif
