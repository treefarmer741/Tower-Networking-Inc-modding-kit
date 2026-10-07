#ifndef TNI_API_HEADER_USERHEATMAPITEM
#define TNI_API_HEADER_USERHEATMAPITEM
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct UserHeatmapItem : public HBoxContainer {
	using HBoxContainer::HBoxContainer;

	constexpr UserHeatmapItem(HBoxContainer base) : HBoxContainer{base} {}
	constexpr UserHeatmapItem(uint64_t addr) : HBoxContainer{addr} {}
	constexpr UserHeatmapItem(Object obj) : UserHeatmapItem{obj.address()} {}
	UserHeatmapItem(Variant variant) : UserHeatmapItem{variant.as_object().address()} {}


	PROPERTY(heatmap_container, GridContainer);
	PROPERTY(texture_placeholder, TextureRect);
	PROPERTY(sla_count_lbl, Label);

	inline void set_users(Variant users);
	inline void refresh();
	inline void set_as_legend();
};


inline void UserHeatmapItem::set_users(Variant users) { this->voidcall("set_users", users); }
inline void UserHeatmapItem::refresh() { this->voidcall("refresh"); }
inline void UserHeatmapItem::set_as_legend() { this->voidcall("set_as_legend"); }

#endif
