#ifndef TNI_API_HEADER_ANIMATORPANEL
#define TNI_API_HEADER_ANIMATORPANEL
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct AnimatorPanel : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr AnimatorPanel(PanelContainer base) : PanelContainer{base} {}
	constexpr AnimatorPanel(uint64_t addr) : PanelContainer{addr} {}
	constexpr AnimatorPanel(Object obj) : AnimatorPanel{obj.address()} {}
	AnimatorPanel(Variant variant) : AnimatorPanel{variant.as_object().address()} {}



};



#endif
