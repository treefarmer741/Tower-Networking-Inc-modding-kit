#ifndef TNI_API_HEADER_POCOSIARAYCAST3DMOUSEMAPPER
#define TNI_API_HEADER_POCOSIARAYCAST3DMOUSEMAPPER
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct PocosiaRaycast3DMouseMapper : public Node3D {
	using Node3D::Node3D;

	constexpr PocosiaRaycast3DMouseMapper(Node3D base) : Node3D{base} {}
	constexpr PocosiaRaycast3DMouseMapper(uint64_t addr) : Node3D{addr} {}
	constexpr PocosiaRaycast3DMouseMapper(Object obj) : PocosiaRaycast3DMouseMapper{obj.address()} {}
	PocosiaRaycast3DMouseMapper(Variant variant) : PocosiaRaycast3DMouseMapper{variant.as_object().address()} {}


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
	PROPERTY(allow_empty_collision_on_signal_or_callback, bool);
	PROPERTY(drag_box_selectable_group, String);
	PROPERTY(drag_threshold, double);
	PROPERTY(box_visual_color, Variant);
	PROPERTY(is_drag_boxing_enabled, bool);

	inline void handle_right_pressed(Variant collision_res, InputEventMouseButton event);
	inline void handle_right_released(Variant collision_res, InputEventMouseButton event);
	inline void handle_left_pressed(Variant collision_res, InputEventMouseButton event);
	inline void handle_left_released(Variant collision_res, InputEventMouseButton event);
	inline void handle_middle_pressed(Variant collision_res, InputEventMouseButton event);
	inline void handle_middle_released(Variant collision_res, InputEventMouseButton event);
	inline void handle_mouse_hovers(Variant collision_res, InputEventMouseMotion event);
	inline void handle_box_select(Variant box_sel_colliders);
	inline void handle_input(InputEvent event);
	inline void set_raycast_mask_layer_value(int64_t layer, bool value);
};


inline void PocosiaRaycast3DMouseMapper::handle_right_pressed(Variant collision_res, InputEventMouseButton event) { this->voidcall("handle_right_pressed", collision_res, event); }
inline void PocosiaRaycast3DMouseMapper::handle_right_released(Variant collision_res, InputEventMouseButton event) { this->voidcall("handle_right_released", collision_res, event); }
inline void PocosiaRaycast3DMouseMapper::handle_left_pressed(Variant collision_res, InputEventMouseButton event) { this->voidcall("handle_left_pressed", collision_res, event); }
inline void PocosiaRaycast3DMouseMapper::handle_left_released(Variant collision_res, InputEventMouseButton event) { this->voidcall("handle_left_released", collision_res, event); }
inline void PocosiaRaycast3DMouseMapper::handle_middle_pressed(Variant collision_res, InputEventMouseButton event) { this->voidcall("handle_middle_pressed", collision_res, event); }
inline void PocosiaRaycast3DMouseMapper::handle_middle_released(Variant collision_res, InputEventMouseButton event) { this->voidcall("handle_middle_released", collision_res, event); }
inline void PocosiaRaycast3DMouseMapper::handle_mouse_hovers(Variant collision_res, InputEventMouseMotion event) { this->voidcall("handle_mouse_hovers", collision_res, event); }
inline void PocosiaRaycast3DMouseMapper::handle_box_select(Variant box_sel_colliders) { this->voidcall("handle_box_select", box_sel_colliders); }
inline void PocosiaRaycast3DMouseMapper::handle_input(InputEvent event) { this->voidcall("handle_input", event); }
inline void PocosiaRaycast3DMouseMapper::set_raycast_mask_layer_value(int64_t layer, bool value) { this->voidcall("set_raycast_mask_layer_value", layer, value); }

#endif
