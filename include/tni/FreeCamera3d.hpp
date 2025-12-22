#ifndef TNI_API_HEADER_FREECAMERA3D
#define TNI_API_HEADER_FREECAMERA3D
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct FreeCamera3d : public Camera3D {
	using Camera3D::Camera3D;

	constexpr FreeCamera3d(Camera3D base) : Camera3D{base} {}
	constexpr FreeCamera3d(uint64_t addr) : Camera3D{addr} {}
	constexpr FreeCamera3d(Object obj) : FreeCamera3d{obj.address()} {}
	FreeCamera3d(Variant variant) : FreeCamera3d{variant.as_object().address()} {}

	enum CameraMotionMode : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		CAPTURED = 0,
		ESCAPED = 1,
	};

	PROPERTY(acceleration, double);
	PROPERTY(move_speed, double);
	PROPERTY(mouse_speed, double);
	PROPERTY(controller_speed, double);
	PROPERTY(controller_dead_zone, double);
	PROPERTY(velocity, Variant);
	PROPERTY(look_angle, Variant);
	PROPERTY(controller_look, Variant);
	PROPERTY(motion_mode, int64_t);

};



#endif
