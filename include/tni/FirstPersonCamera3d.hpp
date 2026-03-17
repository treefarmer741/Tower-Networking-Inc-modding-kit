#ifndef TNI_API_HEADER_FIRSTPERSONCAMERA3D
#define TNI_API_HEADER_FIRSTPERSONCAMERA3D
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct FirstPersonCamera3d : public Camera3D {
	using Camera3D::Camera3D;

	constexpr FirstPersonCamera3d(Camera3D base) : Camera3D{base} {}
	constexpr FirstPersonCamera3d(uint64_t addr) : Camera3D{addr} {}
	constexpr FirstPersonCamera3d(Object obj) : FirstPersonCamera3d{obj.address()} {}
	FirstPersonCamera3d(Variant variant) : FirstPersonCamera3d{variant.as_object().address()} {}


	PROPERTY(mouse_speed, double);
	PROPERTY(look_arc_factor, double);
	PROPERTY(detection_radius, double);
	PROPERTY(detection_area_name, String);
	PROPERTY(detection_layer, int64_t);
	PROPERTY(look_angle, Variant);
	PROPERTY(detection_area, Area3D);
	PROPERTY(mouse_input_captured, bool);

	inline void set_mouse_input_captured(bool val);
};


inline void FirstPersonCamera3d::set_mouse_input_captured(bool val) { voidcall("set_mouse_input_captured", val); }

#endif
