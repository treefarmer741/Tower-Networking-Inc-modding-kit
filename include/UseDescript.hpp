#ifndef TNI_API_HEADER_USEDESCRIPT
#define TNI_API_HEADER_USEDESCRIPT
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct UseDescript : public Resource {
	using Resource::Resource;

	constexpr UseDescript(Resource base) : Resource{base} {}
	constexpr UseDescript(uint64_t addr) : Resource{addr} {}
	constexpr UseDescript(Object obj) : UseDescript{obj.address()} {}
	UseDescript(Variant variant) : UseDescript{variant.as_object().address()} {}


	PROPERTY(value, String);

};



#endif
