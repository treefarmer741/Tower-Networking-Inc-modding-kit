#ifndef TNI_API_HEADER_PARENTTRANSFORMHANDLE3D
#define TNI_API_HEADER_PARENTTRANSFORMHANDLE3D
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ParentTransformHandle3D : public Area3D {
	using Area3D::Area3D;

	constexpr ParentTransformHandle3D(Area3D base) : Area3D{base} {}
	constexpr ParentTransformHandle3D(uint64_t addr) : Area3D{addr} {}
	constexpr ParentTransformHandle3D(Object obj) : ParentTransformHandle3D{obj.address()} {}
	ParentTransformHandle3D(Variant variant) : ParentTransformHandle3D{variant.as_object().address()} {}


	PROPERTY(inverted_transform, bool);
	PROPERTY(transform_mode, String);
	PROPERTY(max_rotation_range_deg, double);
	PROPERTY(max_rot_range_rad, double);
	PROPERTY(drag_sensitivity, double);
	PROPERTY(camera_group_filter, String);
	PROPERTY(drag_start_pos, Variant);
	PROPERTY(drag_viewport, Viewport);
	PROPERTY(parent_node, Node3D);

};



#endif
