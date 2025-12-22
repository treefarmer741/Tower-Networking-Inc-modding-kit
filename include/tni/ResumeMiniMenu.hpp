#ifndef TNI_API_HEADER_RESUMEMINIMENU
#define TNI_API_HEADER_RESUMEMINIMENU
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ResumeMiniMenu : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr ResumeMiniMenu(PanelContainer base) : PanelContainer{base} {}
	constexpr ResumeMiniMenu(uint64_t addr) : PanelContainer{addr} {}
	constexpr ResumeMiniMenu(Object obj) : ResumeMiniMenu{obj.address()} {}
	ResumeMiniMenu(Variant variant) : ResumeMiniMenu{variant.as_object().address()} {}


	PROPERTY(save_name, String);

};



#endif
