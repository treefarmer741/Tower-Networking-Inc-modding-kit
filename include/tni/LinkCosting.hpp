#ifndef TNI_API_HEADER_LINKCOSTING
#define TNI_API_HEADER_LINKCOSTING
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct LinkCosting : public Resource {
	using Resource::Resource;

	constexpr LinkCosting(Resource base) : Resource{base} {}
	constexpr LinkCosting(uint64_t addr) : Resource{addr} {}
	constexpr LinkCosting(Object obj) : LinkCosting{obj.address()} {}
	LinkCosting(Variant variant) : LinkCosting{variant.as_object().address()} {}


	PROPERTY(setup_fixed, int64_t);
	PROPERTY(setup_per_floor, int64_t);
	PROPERTY(setup_per_distance_samefloor, double);
	PROPERTY(daily_fixed, int64_t);
	PROPERTY(daily_per_floor, int64_t);
	PROPERTY(daily_per_distance_samefloor, double);

	inline int64_t get_setup_cost(const LinkOutlet& lo_1, const LinkOutlet& lo_2);
	inline int64_t get_daily_cost(const LinkOutlet& lo_1, const LinkOutlet& lo_2);
};

#include "LinkOutlet.hpp"

inline int64_t LinkCosting::get_setup_cost(const LinkOutlet& lo_1, const LinkOutlet& lo_2) { return this->operator()("get_setup_cost", Object(reinterpret_cast<const Object*>(&lo_1)->address()), Object(reinterpret_cast<const Object*>(&lo_2)->address())); }
inline int64_t LinkCosting::get_daily_cost(const LinkOutlet& lo_1, const LinkOutlet& lo_2) { return this->operator()("get_daily_cost", Object(reinterpret_cast<const Object*>(&lo_1)->address()), Object(reinterpret_cast<const Object*>(&lo_2)->address())); }

#endif
