#ifndef TNI_API_HEADER_MOUNTINGRACK
#define TNI_API_HEADER_MOUNTINGRACK
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Rack.hpp"

struct MountingRack : public Rack {
	using Rack::Rack;

	constexpr MountingRack(Rack base) : Rack{base} {}
	constexpr MountingRack(uint64_t addr) : Rack{addr} {}
	constexpr MountingRack(Object obj) : MountingRack{obj.address()} {}
	MountingRack(Variant variant) : MountingRack{variant.as_object().address()} {}



	inline void remove();
};


inline void MountingRack::remove() { this->voidcall("remove"); }

#endif
