#ifndef TNI_API_HEADER_ROUTINGRULE
#define TNI_API_HEADER_ROUTINGRULE
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "TraversalContextRule.hpp"

struct RoutingRule : public TraversalContextRule {
	using TraversalContextRule::TraversalContextRule;

	constexpr RoutingRule(TraversalContextRule base) : TraversalContextRule{base} {}
	constexpr RoutingRule(uint64_t addr) : TraversalContextRule{addr} {}
	constexpr RoutingRule(Object obj) : RoutingRule{obj.address()} {}
	RoutingRule(Variant variant) : RoutingRule{variant.as_object().address()} {}


	PROPERTY(key, String);
	PROPERTY(num, int64_t);
	PROPERTY(prefix_length, int64_t);
	PROPERTY(is_default, bool);
	PROPERTY(src_port_id, String);
	PROPERTY(src_addr, String);
	PROPERTY(dst_addr, String);
	PROPERTY(traffic_class, String);
	PROPERTY(src_port_id_s, String);
	PROPERTY(src_addr_s, String);
	PROPERTY(dst_addr_s, String);
	PROPERTY(traffic_class_s, String);

	inline Variant as_routing_table_entry();
	inline RoutingRule from_routing_table_entry(String rt_entry);
	inline bool is_matched(const TraversalContext& context);
	inline bool is_packet_matched(Variant packet);
};

#include "RoutingRule.hpp"
#include "TraversalContext.hpp"

inline Variant RoutingRule::as_routing_table_entry() { return this->operator()("as_routing_table_entry"); }
inline RoutingRule RoutingRule::from_routing_table_entry(String rt_entry) { return RoutingRule(this->operator()("from_routing_table_entry", rt_entry).as_object().address()); }
inline bool RoutingRule::is_matched(const TraversalContext& context) { return this->operator()("is_matched", Object(reinterpret_cast<const Object*>(&context)->address())); }
inline bool RoutingRule::is_packet_matched(Variant packet) { return this->operator()("is_packet_matched", packet); }

#endif
