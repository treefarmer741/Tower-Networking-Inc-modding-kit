#ifndef TNI_API_HEADER_TOWERVIEWHEADER
#define TNI_API_HEADER_TOWERVIEWHEADER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TowerViewHeader : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr TowerViewHeader(PanelContainer base) : PanelContainer{base} {}
	constexpr TowerViewHeader(uint64_t addr) : PanelContainer{addr} {}
	constexpr TowerViewHeader(Object obj) : TowerViewHeader{obj.address()} {}
	TowerViewHeader(Variant variant) : TowerViewHeader{variant.as_object().address()} {}


	PROPERTY(main_label, Label);
	PROPERTY(row_id, Variant);

};



#endif
