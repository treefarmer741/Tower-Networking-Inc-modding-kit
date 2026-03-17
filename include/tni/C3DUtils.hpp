#ifndef TNI_API_HEADER_C3DUTILS
#define TNI_API_HEADER_C3DUTILS
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct C3DUtils : public Object {
	using Object::Object;

	constexpr C3DUtils(Object base) : Object{base} {}
	constexpr C3DUtils(uint64_t addr) : Object{addr} {}
	C3DUtils(Variant variant) : C3DUtils{variant.as_object().address()} {}



	inline void naive_box_packing(Area3D packing_area, Variant to_pack, double grid_step, Variant additional_excludes);
};


inline void C3DUtils::naive_box_packing(Area3D packing_area, Variant to_pack, double grid_step, Variant additional_excludes) { voidcall("naive_box_packing", packing_area, to_pack, grid_step, additional_excludes); }

#endif
