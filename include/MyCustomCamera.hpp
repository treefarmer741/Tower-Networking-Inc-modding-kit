#ifndef TN_API_HEADER_MYCUSTOMCAMERA
#define TN_API_HEADER_MYCUSTOMCAMERA

#include <api.hpp>

struct MyCustomCamera : public Camera2D {
	using Camera2D::Camera2D;

	MyCustomCamera(Variant variant) : MyCustomCamera{variant.as_object().address()} {}

	PROPERTY(FAST_MOVE_MARGIN_X, double);
	PROPERTY(FAST_MOVE_MARGIN_TOP, double);
	PROPERTY(FAST_MOVE_MARGIN_BOTTOM, double);
	PROPERTY(MAX_ZOOM, double);
	PROPERTY(MIN_ZOOM, double);
	PROPERTY(ZOOM_RATE, double);
	PROPERTY(ZOOM_INCREMENT, double);
	PROPERTY(sprint_modifier, double);
	PROPERTY(zoom_enabled, bool);
	PROPERTY(fast_mode, bool);
	PROPERTY(target_zoom, double);
	PROPERTY(mp_mouse, Variant);
	PROPERTY(current_location_idx, int64_t);
	PROPERTY(current_location, Variant);
	PROPERTY(min_zoom, double);
	PROPERTY(keyboard_move_velocity, Variant);
	PROPERTY(drag_origin, Variant);
	PROPERTY(dragging, bool);

	inline void warp_to_initial() { voidcall("warp_to_initial"); }
	inline void warp_to_floor(int64_t floor_id) { voidcall("warp_to_floor", floor_id); }
	inline void warp(Variant dest) { voidcall("warp", dest); }
	inline void zoom_in() { voidcall("zoom_in"); }
	inline void zoom_out() { voidcall("zoom_out"); }
};

#endif
