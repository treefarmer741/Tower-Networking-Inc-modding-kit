#ifndef TNI_API_HEADER_AXIS3MARKER
#define TNI_API_HEADER_AXIS3MARKER
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct Axis3Marker : public Node3D {
	using Node3D::Node3D;

	constexpr Axis3Marker(Node3D base) : Node3D{base} {}
	constexpr Axis3Marker(uint64_t addr) : Node3D{addr} {}
	constexpr Axis3Marker(Object obj) : Axis3Marker{obj.address()} {}
	Axis3Marker(Variant variant) : Axis3Marker{variant.as_object().address()} {}

	inline static const String GROUP = "axis3_markers";  // NOTE: You should recompile your mod if this value changes!


};



#endif
