#ifndef TNI_API_HEADER_SHADERUTILS
#define TNI_API_HEADER_SHADERUTILS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ShaderUtils : public Object {
	using Object::Object;

	constexpr ShaderUtils(Object base) : Object{base} {}
	constexpr ShaderUtils(uint64_t addr) : Object{addr} {}
	ShaderUtils(Variant variant) : ShaderUtils{variant.as_object().address()} {}



	inline void apply_shader(CanvasItem v, Variant shader_path);
};


inline void ShaderUtils::apply_shader(CanvasItem v, Variant shader_path) { voidcall("apply_shader", v, shader_path); }

#endif
