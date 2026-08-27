#ifndef TNI_API_HEADER_MODEDITORASSETS
#define TNI_API_HEADER_MODEDITORASSETS
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ModEditorAssets : public Object {
	using Object::Object;

	constexpr ModEditorAssets(Object base) : Object{base} {}
	constexpr ModEditorAssets(uint64_t addr) : Object{addr} {}
	ModEditorAssets(Variant variant) : ModEditorAssets{variant.as_object().address()} {}



};



#endif
