#ifndef TNI_API_HEADER_SIMPLEGAUGEGIZMO3D
#define TNI_API_HEADER_SIMPLEGAUGEGIZMO3D
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SimpleGaugeGizmo3D : public Area3D {
	using Area3D::Area3D;

	constexpr SimpleGaugeGizmo3D(Area3D base) : Area3D{base} {}
	constexpr SimpleGaugeGizmo3D(uint64_t addr) : Area3D{addr} {}
	constexpr SimpleGaugeGizmo3D(Object obj) : SimpleGaugeGizmo3D{obj.address()} {}
	SimpleGaugeGizmo3D(Variant variant) : SimpleGaugeGizmo3D{variant.as_object().address()} {}


	PROPERTY(needle_base, Node3D);
	PROPERTY(needle_start_deg, double);
	PROPERTY(needle_max_deg, double);

	inline void set_gizmo_value(double value_f, double normal_f);
};


inline void SimpleGaugeGizmo3D::set_gizmo_value(double value_f, double normal_f) { voidcall("set_gizmo_value", value_f, normal_f); }

#endif
