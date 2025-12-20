#ifndef TNI_API_HEADER_TRAVERSALCONTEXTRULE
#define TNI_API_HEADER_TRAVERSALCONTEXTRULE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TraversalContextRule : public RefCounted {
	using RefCounted::RefCounted;

	constexpr TraversalContextRule(RefCounted base) : RefCounted{base} {}
	constexpr TraversalContextRule(uint64_t addr) : RefCounted{addr} {}
	constexpr TraversalContextRule(Object obj) : TraversalContextRule{obj.address()} {}
	TraversalContextRule(Variant variant) : TraversalContextRule{variant.as_object().address()} {}

	PROPERTY(RESTRICTED_WORDS, Variant);  // Const value type was not supported.

	PROPERTY(is_default, bool);
	PROPERTY(src_port_id, String);
	PROPERTY(src_addr, String);
	PROPERTY(dst_addr, String);
	PROPERTY(traffic_class, String);
	PROPERTY(src_port_id_s, String);
	PROPERTY(src_addr_s, String);
	PROPERTY(dst_addr_s, String);
	PROPERTY(traffic_class_s, String);

	inline bool is_matched(TraversalContext context);
};

#include "TraversalContext.hpp"

inline bool TraversalContextRule::is_matched(TraversalContext context) { return operator()("is_matched", context); }

#endif
