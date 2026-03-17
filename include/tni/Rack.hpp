#ifndef TNI_API_HEADER_RACK
#define TNI_API_HEADER_RACK
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Rack : public StaticBody2D {
	using StaticBody2D::StaticBody2D;

	constexpr Rack(StaticBody2D base) : StaticBody2D{base} {}
	constexpr Rack(uint64_t addr) : StaticBody2D{addr} {}
	constexpr Rack(Object obj) : Rack{obj.address()} {}
	Rack(Variant variant) : Rack{variant.as_object().address()} {}



	inline void remove();
};


inline void Rack::remove() { voidcall("remove"); }

#endif
