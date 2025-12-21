#ifndef TNI_API_HEADER_CLICKROTATEDIALGIZMO3D
#define TNI_API_HEADER_CLICKROTATEDIALGIZMO3D
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ClickRotateDialGizmo3D : public Area3D {
	using Area3D::Area3D;

	constexpr ClickRotateDialGizmo3D(Area3D base) : Area3D{base} {}
	constexpr ClickRotateDialGizmo3D(uint64_t addr) : Area3D{addr} {}
	constexpr ClickRotateDialGizmo3D(Object obj) : ClickRotateDialGizmo3D{obj.address()} {}
	ClickRotateDialGizmo3D(Variant variant) : ClickRotateDialGizmo3D{variant.as_object().address()} {}


	PROPERTY(sensitivity_cfactor, double);
	PROPERTY(sensitivity_max, double);
	PROPERTY(rotating_base, Node3D);
	PROPERTY(dial_start_deg, double);
	PROPERTY(dial_max_deg, double);
	PROPERTY(normalized_precision, double);
	PROPERTY(camera_group_filter, String);
	PROPERTY(normalized_value_float, double);
	PROPERTY(snapped_normalized_value_float, double);
	PROPERTY(sensitivity, double);
	PROPERTY(active_camera, Camera3D);
	PROPERTY(hold_tween, Tween);

	inline void set_gizmo_value(double value_f, double _unused_normal_factor);
};


inline void ClickRotateDialGizmo3D::set_gizmo_value(double value_f, double _unused_normal_factor) { voidcall("set_gizmo_value", value_f, _unused_normal_factor); }

#endif
