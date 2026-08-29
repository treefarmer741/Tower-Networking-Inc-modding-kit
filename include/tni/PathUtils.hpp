#ifndef TNI_API_HEADER_PATHUTILS
#define TNI_API_HEADER_PATHUTILS
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct PathUtils : public Object {
	using Object::Object;

	constexpr PathUtils(Object base) : Object{base} {}
	constexpr PathUtils(uint64_t addr) : Object{addr} {}
	PathUtils(Variant variant) : PathUtils{variant.as_object().address()} {}



	inline Resource load_from_pck_only(String path);
	inline Variant list_scenes_at_path(String path, bool recursion);
};


inline Resource PathUtils::load_from_pck_only(String path) { return Resource(this->operator()("load_from_pck_only", path).as_object().address()); }
inline Variant PathUtils::list_scenes_at_path(String path, bool recursion) { return this->operator()("list_scenes_at_path", path, recursion); }

#endif
