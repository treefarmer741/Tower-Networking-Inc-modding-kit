#ifndef TNI_API_HEADER_FLUID2DSHADERRENDERER
#define TNI_API_HEADER_FLUID2DSHADERRENDERER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Fluid2DShaderRenderer : public CanvasLayer {
	using CanvasLayer::CanvasLayer;

	constexpr Fluid2DShaderRenderer(CanvasLayer base) : CanvasLayer{base} {}
	constexpr Fluid2DShaderRenderer(uint64_t addr) : CanvasLayer{addr} {}
	constexpr Fluid2DShaderRenderer(Object obj) : Fluid2DShaderRenderer{obj.address()} {}
	Fluid2DShaderRenderer(Variant variant) : Fluid2DShaderRenderer{variant.as_object().address()} {}


	PROPERTY(fluid, Fluid2D);
	PROPERTY(camera, Camera2D);
	PROPERTY(water_material, Material);
	PROPERTY(fluid_renderer, Fluid2DRenderer);
	PROPERTY(inside_camera, Camera2D);
	PROPERTY(sub_viewport_container, SubViewportContainer);
	PROPERTY(sub_viewport, SubViewport);

};

#include "Fluid2DRenderer.hpp"


#endif
