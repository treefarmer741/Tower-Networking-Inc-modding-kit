#ifndef TNI_API_HEADER_GAMESTATS
#define TNI_API_HEADER_GAMESTATS
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct GameStats : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr GameStats(PanelContainer base) : PanelContainer{base} {}
	constexpr GameStats(uint64_t addr) : PanelContainer{addr} {}
	constexpr GameStats(Object obj) : GameStats{obj.address()} {}
	GameStats(Variant variant) : GameStats{variant.as_object().address()} {}


	PROPERTY(gw, GameWorld);
	PROPERTY(game_over_reason, String);

};

#include "GameWorld.hpp"


#endif
