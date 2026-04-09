#ifndef TNI_API_HEADER_POCOSIAINPUTNODE3DORBITER
#define TNI_API_HEADER_POCOSIAINPUTNODE3DORBITER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct PocosiaInputNode3DOrbiter : public Node3D {
	using Node3D::Node3D;

	constexpr PocosiaInputNode3DOrbiter(Node3D base) : Node3D{base} {}
	constexpr PocosiaInputNode3DOrbiter(uint64_t addr) : Node3D{addr} {}
	constexpr PocosiaInputNode3DOrbiter(Object obj) : PocosiaInputNode3DOrbiter{obj.address()} {}
	PocosiaInputNode3DOrbiter(Variant variant) : PocosiaInputNode3DOrbiter{variant.as_object().address()} {}


	PROPERTY(target_mindrag_sens_mult, double);
	PROPERTY(orbital_target, Node3D);
	PROPERTY(background_rotation_speed, double);
	PROPERTY(orbital_control_key, int64_t);
	PROPERTY(polar_limit, double);
	PROPERTY(wasd_control_enabled, bool);
	PROPERTY(wasd_orbit_speed, double);
	PROPERTY(wasd_rate_min, double);
	PROPERTY(wasd_rate_max, double);
	PROPERTY(inverted_mouse, bool);
	PROPERTY(input_disabled, bool);
	PROPERTY(ref_drag_pixels, double);
	PROPERTY(drags_per_rotation_min, double);
	PROPERTY(drags_per_rotation_max, double);
	PROPERTY(mouse_pan_enabled, bool);
	PROPERTY(pan_control_key, int64_t);
	PROPERTY(panning_speed, double);
	PROPERTY(tangential_threshold, double);
	PROPERTY(tangential_lerp_speed, double);
	PROPERTY(tangential_max_tilt_deg, double);
	PROPERTY(tangential_kickback_mult, double);
	PROPERTY(zoom_speed, double);
	PROPERTY(zoom_lerp_speed, double);
	PROPERTY(min_radius, double);
	PROPERTY(max_radius, double);
	PROPERTY(input_type, String);
	PROPERTY(focus_lerp_speed, double);
	PROPERTY(focus_zoom_margin, double);
	PROPERTY(orbital_point, Variant);
	PROPERTY(radius, double);
	PROPERTY(target_radius, double);
	PROPERTY(theta, double);
	PROPERTY(phi, double);
	PROPERTY(tangential_blend, double);
	PROPERTY(is_dragging, bool);
	PROPERTY(is_tangential, bool);
	PROPERTY(is_panning, bool);
	PROPERTY(focusing_target, Node3D);
	PROPERTY(target_theta, double);
	PROPERTY(target_phi, double);
	PROPERTY(target_blend, double);
	PROPERTY(target_yaw, double);
	PROPERTY(target_pitch, double);
	PROPERTY(pan_yaw, double);
	PROPERTY(pan_pitch, double);
	PROPERTY(norm_radius, double);

	inline void reset_pan();
	inline void handle_input(InputEvent event);
	inline void stop_focusing();
	inline bool try_focus_node3d(Node3D node);
	inline Variant get_params_for_focus(Variant focus_pos);
};


inline void PocosiaInputNode3DOrbiter::reset_pan() { this->voidcall("reset_pan"); }
inline void PocosiaInputNode3DOrbiter::handle_input(InputEvent event) { this->voidcall("handle_input", event); }
inline void PocosiaInputNode3DOrbiter::stop_focusing() { this->voidcall("stop_focusing"); }
inline bool PocosiaInputNode3DOrbiter::try_focus_node3d(Node3D node) { return this->operator()("try_focus_node3d", node); }
inline Variant PocosiaInputNode3DOrbiter::get_params_for_focus(Variant focus_pos) { return this->operator()("get_params_for_focus", focus_pos); }

#endif
