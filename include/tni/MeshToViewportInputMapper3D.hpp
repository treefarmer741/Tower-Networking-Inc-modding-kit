#ifndef TNI_API_HEADER_MESHTOVIEWPORTINPUTMAPPER3D
#define TNI_API_HEADER_MESHTOVIEWPORTINPUTMAPPER3D
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MeshToViewportInputMapper3D : public Node {
	using Node::Node;

	constexpr MeshToViewportInputMapper3D(Node base) : Node{base} {}
	constexpr MeshToViewportInputMapper3D(uint64_t addr) : Node{addr} {}
	constexpr MeshToViewportInputMapper3D(Object obj) : MeshToViewportInputMapper3D{obj.address()} {}
	MeshToViewportInputMapper3D(Variant variant) : MeshToViewportInputMapper3D{variant.as_object().address()} {}


	PROPERTY(target_viewport, SubViewport);
	PROPERTY(display_mesh, MeshInstance3D);
	PROPERTY(input_area, Area3D);
	PROPERTY(is_mouse_inside_input_area, Variant);
	PROPERTY(last_event_pos2D, Variant);
	PROPERTY(last_event_time, double);

};



#endif
