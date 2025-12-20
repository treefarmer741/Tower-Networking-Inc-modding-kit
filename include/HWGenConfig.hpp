#ifndef TNI_API_HEADER_HWGENCONFIG
#define TNI_API_HEADER_HWGENCONFIG
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct HWGenConfig : public Resource {
	using Resource::Resource;

	constexpr HWGenConfig(Resource base) : Resource{base} {}
	constexpr HWGenConfig(uint64_t addr) : Resource{addr} {}
	constexpr HWGenConfig(Object obj) : HWGenConfig{obj.address()} {}
	HWGenConfig(Variant variant) : HWGenConfig{variant.as_object().address()} {}


	PROPERTY(device_scn, PackedScene);
	PROPERTY(price_increase_constant, int64_t);
	PROPERTY(price_increase_multiplier, double);
	PROPERTY(warranty_day_increase_constant, int64_t);
	PROPERTY(warranty_cycle_increase_constant, int64_t);

};



#endif
