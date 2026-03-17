#ifndef TNI_API_HEADER_FAUCET2D
#define TNI_API_HEADER_FAUCET2D
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Faucet2D : public Fluid2D {
	using Fluid2D::Fluid2D;

	constexpr Faucet2D(Fluid2D base) : Fluid2D{base} {}
	constexpr Faucet2D(uint64_t addr) : Fluid2D{addr} {}
	constexpr Faucet2D(Object obj) : Faucet2D{obj.address()} {}
	Faucet2D(Variant variant) : Faucet2D{variant.as_object().address()} {}


	PROPERTY(points_new, PackedArray<Vector2>);
	PROPERTY(interval, double);
	PROPERTY(velocities_new, PackedArray<Vector2>);
	PROPERTY(max_particles, int64_t);
	PROPERTY(width, int64_t);
	PROPERTY(height, int64_t);

};



#endif
