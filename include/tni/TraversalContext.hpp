#ifndef TNI_API_HEADER_TRAVERSALCONTEXT
#define TNI_API_HEADER_TRAVERSALCONTEXT
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TraversalContext : public RefCounted {
	using RefCounted::RefCounted;

	constexpr TraversalContext(RefCounted base) : RefCounted{base} {}
	constexpr TraversalContext(uint64_t addr) : RefCounted{addr} {}
	constexpr TraversalContext(Object obj) : TraversalContext{obj.address()} {}
	TraversalContext(Variant variant) : TraversalContext{variant.as_object().address()} {}

	enum ResultType : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		NO_ERROR = 0,
		NO_DNS = 1,
		NO_DNS_ENTRY = 2,
		NO_COMPATIBLE_USES_LEFT = 3,
		ADDRESS_CONFLICT = 4,
		NO_SRC_NETWORK_ADDR = 5,
	};

	PROPERTY(src_controller, LogicController);
	PROPERTY(traffic_class, String);
	PROPERTY(traffic_weight, int64_t);
	PROPERTY(request_data, String);
	PROPERTY(result_code, int64_t);
	PROPERTY(consume_use_config, UseConfig);
	PROPERTY(is_from_user, bool);
	PROPERTY(vlan_tag, String);
	PROPERTY(visit_hist, Variant);
	PROPERTY(allow_direct_hops_from_routers, bool);
	PROPERTY(dst_laddr, Variant);
	PROPERTY(dst_controller, LogicController);
	PROPERTY(consume_success, bool);
	PROPERTY(discarded_because_insufficient_bw, bool);
	PROPERTY(allow_user_nodes, bool);
	PROPERTY(allow_link_nodes, bool);
	PROPERTY(search_results, Variant);
	PROPERTY(search_criterion, Variant);
	PROPERTY(count_results, Variant);
	PROPERTY(counter_a, int64_t);
	PROPERTY(counter_b, int64_t);
	PROPERTY(max_ttl, int64_t);
	PROPERTY(index, int64_t);
	PROPERTY(depth, int64_t);
	PROPERTY(total_hosts_visited, int64_t);
	PROPERTY(dst_fqdn, String);
	PROPERTY(traversal_target_host, Variant);
	PROPERTY(add_bw_consumed, int64_t);
	PROPERTY(last_visited_port, LogicControllerSocket);
//	PROPERTY(stdout, Variant);
	PROPERTY(failed, bool);
	PROPERTY(cached_src_hwaddr, String);
	PROPERTY(cached_src_nwaddr, String);
	PROPERTY(total_bw_consumed, int64_t);
	PROPERTY(ttl, int64_t);
	PROPERTY(hop1_interfaces, Variant);

	inline void record_visit(LogicController node, String on_tag);
	inline Variant has_traversed_before(LogicController node, String on_tag);
};

#include "LogicController.hpp"
#include "UseConfig.hpp"
#include "LogicControllerSocket.hpp"

inline void TraversalContext::record_visit(LogicController node, String on_tag) { voidcall("record_visit", node, on_tag); }
inline Variant TraversalContext::has_traversed_before(LogicController node, String on_tag) { return operator()("has_traversed_before", node, on_tag); }

#endif
