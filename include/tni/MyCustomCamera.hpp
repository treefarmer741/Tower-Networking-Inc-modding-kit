#ifndef TNI_API_HEADER_MYCUSTOMCAMERA
#define TNI_API_HEADER_MYCUSTOMCAMERA
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MyCustomCamera : public Camera2D {
	using Camera2D::Camera2D;

	constexpr MyCustomCamera(Camera2D base) : Camera2D{base} {}
	constexpr MyCustomCamera(uint64_t addr) : Camera2D{addr} {}
	constexpr MyCustomCamera(Object obj) : MyCustomCamera{obj.address()} {}
	MyCustomCamera(Variant variant) : MyCustomCamera{variant.as_object().address()} {}

	static constexpr double DEFAULT_ZOOM = 0.5;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double MOVE_X_THRESHOLD = 930.0;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double MOVE_Y_THRESHOLD = 500.0;  // NOTE: You should recompile your mod if this value changes!

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
	PROPERTY(mp_mouse, Node2D);
	PROPERTY(current_location_idx, int64_t);
	PROPERTY(current_location, Location);
	PROPERTY(min_zoom, double);
	PROPERTY(keyboard_move_velocity, Variant);
	PROPERTY(drag_origin, Variant);
	PROPERTY(dragging, bool);

	inline void warp_to_initial();
	inline void warp_to_floor(int64_t floor_id);
	inline void warp(Variant dest);
	inline void zoom_in();
	inline void zoom_out();
};

#include "Location.hpp"

inline void MyCustomCamera::warp_to_initial() { voidcall("warp_to_initial"); }
inline void MyCustomCamera::warp_to_floor(int64_t floor_id) { voidcall("warp_to_floor", floor_id); }
inline void MyCustomCamera::warp(Variant dest) { voidcall("warp", dest); }
inline void MyCustomCamera::zoom_in() { voidcall("zoom_in"); }
inline void MyCustomCamera::zoom_out() { voidcall("zoom_out"); }

#endif
