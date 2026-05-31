#ifndef TNI_API_HEADER_LOBBYMENU
#define TNI_API_HEADER_LOBBYMENU
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct LobbyMenu : public ScrollContainer {
	using ScrollContainer::ScrollContainer;

	constexpr LobbyMenu(ScrollContainer base) : ScrollContainer{base} {}
	constexpr LobbyMenu(uint64_t addr) : ScrollContainer{addr} {}
	constexpr LobbyMenu(Object obj) : LobbyMenu{obj.address()} {}
	LobbyMenu(Variant variant) : LobbyMenu{variant.as_object().address()} {}



};



#endif
