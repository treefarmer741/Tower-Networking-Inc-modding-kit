#ifndef TNI_API_HEADER_HALLWAYPROPSPACK
#define TNI_API_HEADER_HALLWAYPROPSPACK
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct HallwayPropsPack : public Node2D {
	using Node2D::Node2D;

	constexpr HallwayPropsPack(Node2D base) : Node2D{base} {}
	constexpr HallwayPropsPack(uint64_t addr) : Node2D{addr} {}
	constexpr HallwayPropsPack(Object obj) : HallwayPropsPack{obj.address()} {}
	HallwayPropsPack(Variant variant) : HallwayPropsPack{variant.as_object().address()} {}


	PROPERTY(background_assets, Variant);

	inline void set_asset_shaders();
};


inline void HallwayPropsPack::set_asset_shaders() { voidcall("set_asset_shaders"); }

#endif
