#ifndef TNI_API_HEADER_MODDATAJSONSPECS
#define TNI_API_HEADER_MODDATAJSONSPECS
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ModDataJsonSpecs : public Object {
	using Object::Object;

	constexpr ModDataJsonSpecs(Object base) : Object{base} {}
	constexpr ModDataJsonSpecs(uint64_t addr) : Object{addr} {}
	ModDataJsonSpecs(Variant variant) : ModDataJsonSpecs{variant.as_object().address()} {}



	inline RefCounted get_spec_from_node(Node node);
	inline RefCounted get_spec_from_spec_name(String spec_name);
	inline RefCounted get_spec_from_dict(Variant data);
};


inline RefCounted ModDataJsonSpecs::get_spec_from_node(Node node) { return RefCounted(this->operator()("get_spec_from_node", node).as_object().address()); }
inline RefCounted ModDataJsonSpecs::get_spec_from_spec_name(String spec_name) { return RefCounted(this->operator()("get_spec_from_spec_name", spec_name).as_object().address()); }
inline RefCounted ModDataJsonSpecs::get_spec_from_dict(Variant data) { return RefCounted(this->operator()("get_spec_from_dict", data).as_object().address()); }

#endif
