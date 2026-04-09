#ifndef TNI_API_HEADER_VIEWPORTMESH
#define TNI_API_HEADER_VIEWPORTMESH
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ViewportMesh : public MeshInstance3D {
	using MeshInstance3D::MeshInstance3D;

	constexpr ViewportMesh(MeshInstance3D base) : MeshInstance3D{base} {}
	constexpr ViewportMesh(uint64_t addr) : MeshInstance3D{addr} {}
	constexpr ViewportMesh(Object obj) : ViewportMesh{obj.address()} {}
	ViewportMesh(Variant variant) : ViewportMesh{variant.as_object().address()} {}


	PROPERTY(target_viewport, SubViewport);

};



#endif
