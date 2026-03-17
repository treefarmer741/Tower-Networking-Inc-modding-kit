#ifndef TNI_API_HEADER_CONSUMECONFIGBLOCK
#define TNI_API_HEADER_CONSUMECONFIGBLOCK
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ConsumeConfigBlock : public Resource {
	using Resource::Resource;

	constexpr ConsumeConfigBlock(Resource base) : Resource{base} {}
	constexpr ConsumeConfigBlock(uint64_t addr) : Resource{addr} {}
	constexpr ConsumeConfigBlock(Object obj) : ConsumeConfigBlock{obj.address()} {}
	ConsumeConfigBlock(Variant variant) : ConsumeConfigBlock{variant.as_object().address()} {}


	PROPERTY(anti_match, bool);
	PROPERTY(or_compatibility, bool);
	PROPERTY(use_descriptions, Variant);

	inline Variant test_compatibility(Variant use_da, bool and_compat, Variant _split);
	inline Variant is_compatible(Variant use_str_a);
};


inline Variant ConsumeConfigBlock::test_compatibility(Variant use_da, bool and_compat, Variant _split) { return operator()("test_compatibility", use_da, and_compat, _split); }
inline Variant ConsumeConfigBlock::is_compatible(Variant use_str_a) { return operator()("is_compatible", use_str_a); }

#endif
