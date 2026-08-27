#ifndef TNI_API_HEADER_SOCKETEEROUTLET
#define TNI_API_HEADER_SOCKETEEROUTLET
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct SocketeerOutlet : public Resource {
	using Resource::Resource;

	constexpr SocketeerOutlet(Resource base) : Resource{base} {}
	constexpr SocketeerOutlet(uint64_t addr) : Resource{addr} {}
	constexpr SocketeerOutlet(Object obj) : SocketeerOutlet{obj.address()} {}
	SocketeerOutlet(Variant variant) : SocketeerOutlet{variant.as_object().address()} {}


	PROPERTY(title_name, String);
	PROPERTY(link_outlet_scn, PackedScene);
	PROPERTY(photobooth_scn, PackedScene);
	PROPERTY(cost_mult, double);

	inline int64_t get_installation_cost();
};


inline int64_t SocketeerOutlet::get_installation_cost() { return this->operator()("get_installation_cost"); }

#endif
