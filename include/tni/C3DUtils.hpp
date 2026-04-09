#ifndef TNI_API_HEADER_C3DUTILS
#define TNI_API_HEADER_C3DUTILS
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct C3DUtils : public Object {
	using Object::Object;

	constexpr C3DUtils(Object base) : Object{base} {}
	constexpr C3DUtils(uint64_t addr) : Object{addr} {}
	C3DUtils(Variant variant) : C3DUtils{variant.as_object().address()} {}



	inline Variant get_recursive_rids(Node n);
	inline void naive_box_packing(Area3D packing_area, Variant to_pack, double grid_step, Variant additional_excludes);
};


inline Variant C3DUtils::get_recursive_rids(Node n) { return this->operator()("get_recursive_rids", n); }
inline void C3DUtils::naive_box_packing(Area3D packing_area, Variant to_pack, double grid_step, Variant additional_excludes) { this->voidcall("naive_box_packing", packing_area, to_pack, grid_step, additional_excludes); }

#endif
