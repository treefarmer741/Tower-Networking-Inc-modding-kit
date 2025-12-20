#ifndef TNI_API_HEADER_SOCKETEEROUTLET
#define TNI_API_HEADER_SOCKETEEROUTLET
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
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

};



#endif
