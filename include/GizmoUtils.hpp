#ifndef TNI_API_HEADER_GIZMOUTILS
#define TNI_API_HEADER_GIZMOUTILS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct GizmoUtils : public Object {
	using Object::Object;

	constexpr GizmoUtils(Object base) : Object{base} {}
	constexpr GizmoUtils(uint64_t addr) : Object{addr} {}
	GizmoUtils(Variant variant) : GizmoUtils{variant.as_object().address()} {}

	enum T : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		arbitrary_code = 0,
		left_clicked = 1,
		left_button_held = 2,
		left_released = 3,
	};


	inline Variant is_gizmo_input(Node3D g);
	inline Variant is_gizmo_output(Node3D g);
	inline void register_gizmo_signals(Node3D p, Variant callback, Variant inputs, Variant outputs);
	inline void ensure_gizmos(Variant inputs, Variant outputs, Variant ensure_inputs, Variant ensure_outputs);
};


inline Variant GizmoUtils::is_gizmo_input(Node3D g) { return operator()("is_gizmo_input", g); }
inline Variant GizmoUtils::is_gizmo_output(Node3D g) { return operator()("is_gizmo_output", g); }
inline void GizmoUtils::register_gizmo_signals(Node3D p, Variant callback, Variant inputs, Variant outputs) { voidcall("register_gizmo_signals", p, callback, inputs, outputs); }
inline void GizmoUtils::ensure_gizmos(Variant inputs, Variant outputs, Variant ensure_inputs, Variant ensure_outputs) { voidcall("ensure_gizmos", inputs, outputs, ensure_inputs, ensure_outputs); }

#endif
