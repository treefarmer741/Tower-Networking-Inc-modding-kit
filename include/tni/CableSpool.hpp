#ifndef TNI_API_HEADER_CABLESPOOL
#define TNI_API_HEADER_CABLESPOOL
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CableSpool : public Area2D {
	using Area2D::Area2D;

	constexpr CableSpool(Area2D base) : Area2D{base} {}
	constexpr CableSpool(uint64_t addr) : Area2D{addr} {}
	constexpr CableSpool(Object obj) : CableSpool{obj.address()} {}
	CableSpool(Variant variant) : CableSpool{variant.as_object().address()} {}


	PROPERTY(hook_joints, Variant);
	PROPERTY(max_capacity, int64_t);
	PROPERTY(hooked_pieces, Variant);

};



#endif
