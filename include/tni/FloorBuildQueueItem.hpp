#ifndef TNI_API_HEADER_FLOORBUILDQUEUEITEM
#define TNI_API_HEADER_FLOORBUILDQUEUEITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct FloorBuildQueueItem : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr FloorBuildQueueItem(VBoxContainer base) : VBoxContainer{base} {}
	constexpr FloorBuildQueueItem(uint64_t addr) : VBoxContainer{addr} {}
	constexpr FloorBuildQueueItem(Object obj) : FloorBuildQueueItem{obj.address()} {}
	FloorBuildQueueItem(Variant variant) : FloorBuildQueueItem{variant.as_object().address()} {}

	PROPERTY(user_row_item_scene, Variant);  // Const value type was not supported.

	PROPERTY(fq_ref, Variant);
	PROPERTY(user_row_container, Container);
	PROPERTY(floor_name_lbl, Label);
	PROPERTY(final_date_lbl, Label);
	PROPERTY(no_user_lbl, Label);
	PROPERTY(extra_descript, RichTextLabel);
	PROPERTY(upfront_lbl, Label);
	PROPERTY(upfront_ct, Container);
	PROPERTY(locref, Location);
	PROPERTY(floor_scene_file_path, String);
	PROPERTY(final_date, int64_t);
	PROPERTY(fq_qid, int64_t);

};

#include "Location.hpp"


#endif
