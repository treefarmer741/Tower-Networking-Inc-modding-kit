#ifndef TNI_API_HEADER_SIMPLEBUTTONGIZMO3D
#define TNI_API_HEADER_SIMPLEBUTTONGIZMO3D
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SimpleButtonGizmo3D : public Area3D {
	using Area3D::Area3D;

	constexpr SimpleButtonGizmo3D(Area3D base) : Area3D{base} {}
	constexpr SimpleButtonGizmo3D(uint64_t addr) : Area3D{addr} {}
	constexpr SimpleButtonGizmo3D(Object obj) : SimpleButtonGizmo3D{obj.address()} {}
	SimpleButtonGizmo3D(Variant variant) : SimpleButtonGizmo3D{variant.as_object().address()} {}


	PROPERTY(button_base, Node3D);
	PROPERTY(depress_seconds, double);
	PROPERTY(depress_height, double);
	PROPERTY(camera_group_filter, String);
	PROPERTY(anim_tween, Tween);

};



#endif
