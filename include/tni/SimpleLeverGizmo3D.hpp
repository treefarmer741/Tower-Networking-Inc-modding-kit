#ifndef TNI_API_HEADER_SIMPLELEVERGIZMO3D
#define TNI_API_HEADER_SIMPLELEVERGIZMO3D
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SimpleLeverGizmo3D : public Area3D {
	using Area3D::Area3D;

	constexpr SimpleLeverGizmo3D(Area3D base) : Area3D{base} {}
	constexpr SimpleLeverGizmo3D(uint64_t addr) : Area3D{addr} {}
	constexpr SimpleLeverGizmo3D(Object obj) : SimpleLeverGizmo3D{obj.address()} {}
	SimpleLeverGizmo3D(Variant variant) : SimpleLeverGizmo3D{variant.as_object().address()} {}


	PROPERTY(camera_group_filter, String);
	PROPERTY(lever_positions_deg, Variant);
	PROPERTY(auto_lever_steps, bool);
	PROPERTY(auto_lever_min_deg, double);
	PROPERTY(auto_lever_max_deg, double);
	PROPERTY(auto_lever_divisions, double);
	PROPERTY(curr_lever_pos, int64_t);
	PROPERTY(normalized_value, double);
	PROPERTY(drag_start_pos, Variant);
	PROPERTY(drag_viewport, Viewport);

	inline void set_gizmo_value(int64_t lpos, double _unused_normal_factor);
};


inline void SimpleLeverGizmo3D::set_gizmo_value(int64_t lpos, double _unused_normal_factor) { voidcall("set_gizmo_value", lpos, _unused_normal_factor); }

#endif
