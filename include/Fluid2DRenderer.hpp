#ifndef TNI_API_HEADER_FLUID2DRENDERER
#define TNI_API_HEADER_FLUID2DRENDERER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Fluid2DRenderer : public MultiMeshInstance2D {
	using MultiMeshInstance2D::MultiMeshInstance2D;

	constexpr Fluid2DRenderer(MultiMeshInstance2D base) : MultiMeshInstance2D{base} {}
	constexpr Fluid2DRenderer(uint64_t addr) : MultiMeshInstance2D{addr} {}
	constexpr Fluid2DRenderer(Object obj) : Fluid2DRenderer{obj.address()} {}
	Fluid2DRenderer(Variant variant) : Fluid2DRenderer{variant.as_object().address()} {}


	PROPERTY(fluid, Fluid2D);
	PROPERTY(color, Variant);

};



#endif
