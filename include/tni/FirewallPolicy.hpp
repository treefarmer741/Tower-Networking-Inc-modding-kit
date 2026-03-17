#ifndef TNI_API_HEADER_FIREWALLPOLICY
#define TNI_API_HEADER_FIREWALLPOLICY
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct FirewallPolicy : public RefCounted {
	using RefCounted::RefCounted;

	constexpr FirewallPolicy(RefCounted base) : RefCounted{base} {}
	constexpr FirewallPolicy(uint64_t addr) : RefCounted{addr} {}
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
	inline bool will_allow(TraversalContext context);
	inline bool will_deny(TraversalContext context);
	inline bool is_matched(TraversalContext context);
	inline bool is_packet_matched(Variant packet);
};

#include "FirewallPolicy.hpp"
#include "TraversalContext.hpp"

inline Variant FirewallPolicy::as_firewall_table_entry() { return operator()("as_firewall_table_entry"); }
inline FirewallPolicy FirewallPolicy::from_firewall_table_entry(String rt_entry) { return FirewallPolicy(operator()("from_firewall_table_entry", rt_entry).as_object().address()); }
inline bool FirewallPolicy::will_allow(TraversalContext context) { return operator()("will_allow", context); }
inline bool FirewallPolicy::will_deny(TraversalContext context) { return operator()("will_deny", context); }
inline bool FirewallPolicy::is_matched(TraversalContext context) { return operator()("is_matched", context); }
inline bool FirewallPolicy::is_packet_matched(Variant packet) { return operator()("is_packet_matched", packet); }

#endif
