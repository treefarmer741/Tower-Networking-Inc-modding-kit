#ifndef TNI_API_HEADER_INITIALDIFFICULTYSELECTOR
#define TNI_API_HEADER_INITIALDIFFICULTYSELECTOR
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct InitialDifficultySelector : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr InitialDifficultySelector(PanelContainer base) : PanelContainer{base} {}
	constexpr InitialDifficultySelector(uint64_t addr) : PanelContainer{addr} {}
	constexpr InitialDifficultySelector(Object obj) : InitialDifficultySelector{obj.address()} {}
	InitialDifficultySelector(Variant variant) : InitialDifficultySelector{variant.as_object().address()} {}



};



#endif
