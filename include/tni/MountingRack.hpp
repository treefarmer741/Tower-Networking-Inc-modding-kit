#ifndef TNI_API_HEADER_MOUNTINGRACK
#define TNI_API_HEADER_MOUNTINGRACK
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MountingRack : public StaticBody2D {
	using StaticBody2D::StaticBody2D;

	constexpr MountingRack(StaticBody2D base) : StaticBody2D{base} {}
	constexpr MountingRack(uint64_t addr) : StaticBody2D{addr} {}
	constexpr MountingRack(Object obj) : MountingRack{obj.address()} {}
	MountingRack(Variant variant) : MountingRack{variant.as_object().address()} {}



	inline void remove();
};


inline void MountingRack::remove() { voidcall("remove"); }

#endif
