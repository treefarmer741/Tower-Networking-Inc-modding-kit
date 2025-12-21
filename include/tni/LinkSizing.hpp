#ifndef TNI_API_HEADER_LINKSIZING
#define TNI_API_HEADER_LINKSIZING
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LinkSizing : public Resource {
	using Resource::Resource;

	constexpr LinkSizing(Resource base) : Resource{base} {}
	constexpr LinkSizing(uint64_t addr) : Resource{addr} {}
	constexpr LinkSizing(Object obj) : LinkSizing{obj.address()} {}
	LinkSizing(Variant variant) : LinkSizing{variant.as_object().address()} {}


	PROPERTY(title, String);
	PROPERTY(link_installed_bw, int64_t);
	PROPERTY(costing, LinkCosting);

};

#include "LinkCosting.hpp"


#endif
