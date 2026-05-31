#ifndef TNI_API_HEADER_FIREWALLPOLICY
#define TNI_API_HEADER_FIREWALLPOLICY
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "TraversalContextRule.hpp"

struct FirewallPolicy : public TraversalContextRule {
	using TraversalContextRule::TraversalContextRule;

	constexpr FirewallPolicy(TraversalContextRule base) : TraversalContextRule{base} {}
	constexpr FirewallPolicy(uint64_t addr) : TraversalContextRule{addr} {}
	constexpr FirewallPolicy(Object obj) : FirewallPolicy{obj.address()} {}
	FirewallPolicy(Variant variant) : FirewallPolicy{variant.as_object().address()} {}


	PROPERTY(allow_policy, bool);
	PROPERTY(policy_s, String);
	PROPERTY(is_default, bool);
	PROPERTY(src_port_id, String);
	PROPERTY(src_addr, String);
	PROPERTY(dst_addr, String);
	PROPERTY(traffic_class, String);
	PROPERTY(src_port_id_s, String);
	PROPERTY(src_addr_s, String);
	PROPERTY(dst_addr_s, String);
	PROPERTY(traffic_class_s, String);

	inline Variant as_firewall_table_entry();
	inline FirewallPolicy from_firewall_table_entry(String rt_entry);
	inline bool will_allow(const TraversalContext& context);
	inline bool will_deny(const TraversalContext& context);
	inline bool is_matched(const TraversalContext& context);
	inline bool is_packet_matched(Variant packet);
};

#include "FirewallPolicy.hpp"
#include "TraversalContext.hpp"

inline Variant FirewallPolicy::as_firewall_table_entry() { return this->operator()("as_firewall_table_entry"); }
inline FirewallPolicy FirewallPolicy::from_firewall_table_entry(String rt_entry) { return FirewallPolicy(this->operator()("from_firewall_table_entry", rt_entry).as_object().address()); }
inline bool FirewallPolicy::will_allow(const TraversalContext& context) { return this->operator()("will_allow", Object(reinterpret_cast<const Object*>(&context)->address())); }
inline bool FirewallPolicy::will_deny(const TraversalContext& context) { return this->operator()("will_deny", Object(reinterpret_cast<const Object*>(&context)->address())); }
inline bool FirewallPolicy::is_matched(const TraversalContext& context) { return this->operator()("is_matched", Object(reinterpret_cast<const Object*>(&context)->address())); }
inline bool FirewallPolicy::is_packet_matched(Variant packet) { return this->operator()("is_packet_matched", packet); }

#endif
