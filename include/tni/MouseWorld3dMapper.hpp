#ifndef TNI_API_HEADER_MOUSEWORLD3DMAPPER
#define TNI_API_HEADER_MOUSEWORLD3DMAPPER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MouseWorld3dMapper : public Node3D {
	using Node3D::Node3D;

	constexpr MouseWorld3dMapper(Node3D base) : Node3D{base} {}
	constexpr MouseWorld3dMapper(uint64_t addr) : Node3D{addr} {}
	constexpr MouseWorld3dMapper(Object obj) : MouseWorld3dMapper{obj.address()} {}
	MouseWorld3dMapper(Variant variant) : MouseWorld3dMapper{variant.as_object().address()} {}

	static constexpr double MAX_RAY_DEFAULT = 1000.0;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(input_type, String);
	PROPERTY(input_disabled, bool);
	PROPERTY(visual_enabled, bool);
	PROPERTY(visual_color, Variant);
	PROPERTY(visual_length, double);
	PROPERTY(raycast_mask, int64_t);
	PROPERTY(ignored_groups, Variant);
	PROPERTY(previous_click, Variant);

	inline void clear_prev_click_contexts();
	inline void handle_input(InputEvent event);
	inline Variant get_adjusted_gridmap_position(GridMap gm, Variant collipos);
};


inline void MouseWorld3dMapper::clear_prev_click_contexts() { voidcall("clear_prev_click_contexts"); }
inline void MouseWorld3dMapper::handle_input(InputEvent event) { voidcall("handle_input", event); }
inline Variant MouseWorld3dMapper::get_adjusted_gridmap_position(GridMap gm, Variant collipos) { return operator()("get_adjusted_gridmap_position", gm, collipos); }

#endif
