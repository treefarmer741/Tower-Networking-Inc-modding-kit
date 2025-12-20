#ifndef TNI_API_HEADER_WFCCELL
#define TNI_API_HEADER_WFCCELL
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct WFCCell : public Object {
	using Object::Object;

	constexpr WFCCell(Object base) : Object{base} {}
	constexpr WFCCell(uint64_t addr) : Object{addr} {}
	WFCCell(Variant variant) : WFCCell{variant.as_object().address()} {}


	PROPERTY(wfc_map_position, Variant);
	PROPERTY(gridmap_position, Variant);
	PROPERTY(option_ids, Variant);
	PROPERTY(collapsed_id, Variant);
	PROPERTY(has_no_options, bool);

	inline void collapse();
};


inline void WFCCell::collapse() { voidcall("collapse"); }

#endif
