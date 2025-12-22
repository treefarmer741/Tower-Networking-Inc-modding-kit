#ifndef TNI_API_HEADER_POINTANDCLICKCAMERA3D
#define TNI_API_HEADER_POINTANDCLICKCAMERA3D
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PointAndClickCamera3d : public Camera3D {
	using Camera3D::Camera3D;

	constexpr PointAndClickCamera3d(Camera3D base) : Camera3D{base} {}
	constexpr PointAndClickCamera3d(uint64_t addr) : Camera3D{addr} {}
	constexpr PointAndClickCamera3d(Object obj) : PointAndClickCamera3d{obj.address()} {}
	PointAndClickCamera3d(Variant variant) : PointAndClickCamera3d{variant.as_object().address()} {}

	static constexpr int64_t RAY_LENGTH = 100000;  // NOTE: You should recompile your mod if this value changes!


};



#endif
