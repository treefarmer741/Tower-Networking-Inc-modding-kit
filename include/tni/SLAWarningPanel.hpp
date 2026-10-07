#ifndef TNI_API_HEADER_SLAWARNINGPANEL
#define TNI_API_HEADER_SLAWARNINGPANEL
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct SLAWarningPanel : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr SLAWarningPanel(VBoxContainer base) : VBoxContainer{base} {}
	constexpr SLAWarningPanel(uint64_t addr) : VBoxContainer{addr} {}
	constexpr SLAWarningPanel(Object obj) : SLAWarningPanel{obj.address()} {}
	SLAWarningPanel(Variant variant) : SLAWarningPanel{variant.as_object().address()} {}

	static constexpr double MAX_LIST_HEIGHT = 300.0;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(item_scene, PackedScene);
	PROPERTY(scroll, ScrollContainer);
	PROPERTY(rows_box, VBoxContainer);

	inline void refresh(Variant users);
};


inline void SLAWarningPanel::refresh(Variant users) { this->voidcall("refresh", users); }

#endif
