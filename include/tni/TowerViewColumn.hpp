#ifndef TNI_API_HEADER_TOWERVIEWCOLUMN
#define TNI_API_HEADER_TOWERVIEWCOLUMN
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TowerViewColumn : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr TowerViewColumn(PanelContainer base) : PanelContainer{base} {}
	constexpr TowerViewColumn(uint64_t addr) : PanelContainer{addr} {}
	constexpr TowerViewColumn(Object obj) : TowerViewColumn{obj.address()} {}
	TowerViewColumn(Variant variant) : TowerViewColumn{variant.as_object().address()} {}


	PROPERTY(main_label, Label);

	inline void display_as_toplink();
	inline void display_as_bottomlink();
};


inline void TowerViewColumn::display_as_toplink() { voidcall("display_as_toplink"); }
inline void TowerViewColumn::display_as_bottomlink() { voidcall("display_as_bottomlink"); }

#endif
