#ifndef TNI_API_HEADER_OVERSEERCAMERA3D
#define TNI_API_HEADER_OVERSEERCAMERA3D
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct OverseerCamera3d : public Camera3D {
	using Camera3D::Camera3D;

	constexpr OverseerCamera3d(Camera3D base) : Camera3D{base} {}
	constexpr OverseerCamera3d(uint64_t addr) : Camera3D{addr} {}
	constexpr OverseerCamera3d(Object obj) : OverseerCamera3d{obj.address()} {}
	OverseerCamera3d(Variant variant) : OverseerCamera3d{variant.as_object().address()} {}


	PROPERTY(rotation_speed, double);
	PROPERTY(max_tilt_from_horizontal, double);
	PROPERTY(zoom_speed_base, double);
	PROPERTY(zoom_speed_height_ratio, double);
	PROPERTY(max_zoom_speed, double);
	PROPERTY(speed_factor, double);
	PROPERTY(global_min_height, double);
	PROPERTY(global_max_height, double);
	PROPERTY(pan_control_key, int64_t);
	PROPERTY(rot_control_key, int64_t);
	PROPERTY(surface_pan_speed, double);
	PROPERTY(mouse_pan_enabled, bool);
	PROPERTY(wasd_control_enabled, bool);
	PROPERTY(pan_ctl_enabled, bool);
	PROPERTY(rot_ctl_enabled, bool);
	PROPERTY(height_ratio_f, double);
	PROPERTY(curr_zoom_speed, double);

};



#endif
