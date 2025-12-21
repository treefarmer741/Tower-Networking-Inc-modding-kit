#ifndef TNI_API_HEADER_THEMEDESCRIPT
#define TNI_API_HEADER_THEMEDESCRIPT
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ThemeDescript : public Resource {
	using Resource::Resource;

	constexpr ThemeDescript(Resource base) : Resource{base} {}
	constexpr ThemeDescript(uint64_t addr) : Resource{addr} {}
	constexpr ThemeDescript(Object obj) : ThemeDescript{obj.address()} {}
	ThemeDescript(Variant variant) : ThemeDescript{variant.as_object().address()} {}


	PROPERTY(value, String);

};



#endif
