#ifndef TNI_API_HEADER_FIXEDCAMERAPOSSESSABLEAREA
#define TNI_API_HEADER_FIXEDCAMERAPOSSESSABLEAREA
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct FixedCameraPossessableArea : public Area3D {
	using Area3D::Area3D;

	constexpr FixedCameraPossessableArea(Area3D base) : Area3D{base} {}
	constexpr FixedCameraPossessableArea(uint64_t addr) : Area3D{addr} {}
	constexpr FixedCameraPossessableArea(Object obj) : FixedCameraPossessableArea{obj.address()} {}
	FixedCameraPossessableArea(Variant variant) : FixedCameraPossessableArea{variant.as_object().address()} {}


	PROPERTY(fpv_camera_detection_name, String);
	PROPERTY(possession_kb_key, int64_t);
	PROPERTY(tooltip_text, String);
	PROPERTY(fixed_camera_override, Camera3D);
	PROPERTY(fixed_camera, Camera3D);
	PROPERTY(has_possessor, bool);

};



#endif
