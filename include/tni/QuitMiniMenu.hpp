#ifndef TNI_API_HEADER_QUITMINIMENU
#define TNI_API_HEADER_QUITMINIMENU
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct QuitMiniMenu : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr QuitMiniMenu(PanelContainer base) : PanelContainer{base} {}
	constexpr QuitMiniMenu(uint64_t addr) : PanelContainer{addr} {}
	constexpr QuitMiniMenu(Object obj) : QuitMiniMenu{obj.address()} {}
	QuitMiniMenu(Variant variant) : QuitMiniMenu{variant.as_object().address()} {}


	PROPERTY(quit_target, String);

};



#endif
