#ifndef TNI_API_HEADER_SHADERLIGHT2D
#define TNI_API_HEADER_SHADERLIGHT2D
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ShaderLight2D : public Node2D {
	using Node2D::Node2D;

	constexpr ShaderLight2D(Node2D base) : Node2D{base} {}
	constexpr ShaderLight2D(uint64_t addr) : Node2D{addr} {}
	constexpr ShaderLight2D(Object obj) : ShaderLight2D{obj.address()} {}
	ShaderLight2D(Variant variant) : ShaderLight2D{variant.as_object().address()} {}


	PROPERTY(color, Variant);
	PROPERTY(enabled, bool);
	PROPERTY(energy, double);
	PROPERTY(texture_scale, double);
	PROPERTY(sprite, Sprite2D);

};



#endif
