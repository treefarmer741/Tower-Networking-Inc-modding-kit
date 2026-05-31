#ifndef TNI_API_HEADER_POCOSIARAYCASTMOUSEMAPPER3D
#define TNI_API_HEADER_POCOSIARAYCASTMOUSEMAPPER3D
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct PocosiaRaycastMouseMapper3D : public Node3D {
	using Node3D::Node3D;

	constexpr PocosiaRaycastMouseMapper3D(Node3D base) : Node3D{base} {}
	constexpr PocosiaRaycastMouseMapper3D(uint64_t addr) : Node3D{addr} {}
	constexpr PocosiaRaycastMouseMapper3D(Object obj) : PocosiaRaycastMouseMapper3D{obj.address()} {}
	PocosiaRaycastMouseMapper3D(Variant variant) : PocosiaRaycastMouseMapper3D{variant.as_object().address()} {}


	PROPERTY(hover_events_every_frame, bool);
	PROPERTY(input_type, String);
	PROPERTY(input_disabled, bool);
	PROPERTY(visual_enabled, bool);
	PROPERTY(visual_color, Variant);
	PROPERTY(visual_length, double);
	PROPERTY(raycast_mask, int64_t);
	PROPERTY(raycast_distance, double);
	PROPERTY(raycast_hit_areas, bool);
	PROPERTY(raycast_hit_bodies, bool);
	PROPERTY(drag_box_selectable_group, String);
	PROPERTY(drag_threshold, double);
	PROPERTY(box_visual_color, Variant);
	PROPERTY(is_drag_boxing_enabled, bool);

	inline void handle_input(InputEvent event);
};


inline void PocosiaRaycastMouseMapper3D::handle_input(InputEvent event) { this->voidcall("handle_input", event); }

#endif
