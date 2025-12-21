#ifndef TNI_API_HEADER_PORTTRAVERSAL
#define TNI_API_HEADER_PORTTRAVERSAL
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PortTraversal : public Object {
	using Object::Object;

	constexpr PortTraversal(Object base) : Object{base} {}
	constexpr PortTraversal(uint64_t addr) : Object{addr} {}
	PortTraversal(Variant variant) : PortTraversal{variant.as_object().address()} {}



	inline int64_t count_accessible_uses(Variant context, Variant node, Variant _via_port, Variant _current_index, Variant _current_depth);
	inline int64_t simply_enumerate_nodes(Variant context, Variant node, Variant via_port, Variant _current_index, Variant current_depth);
	inline int64_t test_dns_server_access(Variant context, Variant node, Variant _via_port, Variant _current_index, Variant _current_depth);
	inline int64_t test_one_consumeable_access(Variant context, Variant node, Variant _via_port, Variant _current_index, Variant _current_depth);
	inline int64_t test_dst_laddr_node_access(Variant context, Variant node, Variant _via_port, Variant _current_index, Variant _current_depth);
	inline int64_t nop(Variant _context, Variant _node, Variant _via_port, Variant _current_index, Variant _current_depth);
	inline int64_t consume_accessible_uses_counter_a(Variant context, Variant node, Variant _via_port, Variant _current_index, Variant _current_depth);
};


inline int64_t PortTraversal::count_accessible_uses(Variant context, Variant node, Variant _via_port, Variant _current_index, Variant _current_depth) { return operator()("count_accessible_uses", context, node, _via_port, _current_index, _current_depth); }
inline int64_t PortTraversal::simply_enumerate_nodes(Variant context, Variant node, Variant via_port, Variant _current_index, Variant current_depth) { return operator()("simply_enumerate_nodes", context, node, via_port, _current_index, current_depth); }
inline int64_t PortTraversal::test_dns_server_access(Variant context, Variant node, Variant _via_port, Variant _current_index, Variant _current_depth) { return operator()("test_dns_server_access", context, node, _via_port, _current_index, _current_depth); }
inline int64_t PortTraversal::test_one_consumeable_access(Variant context, Variant node, Variant _via_port, Variant _current_index, Variant _current_depth) { return operator()("test_one_consumeable_access", context, node, _via_port, _current_index, _current_depth); }
inline int64_t PortTraversal::test_dst_laddr_node_access(Variant context, Variant node, Variant _via_port, Variant _current_index, Variant _current_depth) { return operator()("test_dst_laddr_node_access", context, node, _via_port, _current_index, _current_depth); }
inline int64_t PortTraversal::nop(Variant _context, Variant _node, Variant _via_port, Variant _current_index, Variant _current_depth) { return operator()("nop", _context, _node, _via_port, _current_index, _current_depth); }
inline int64_t PortTraversal::consume_accessible_uses_counter_a(Variant context, Variant node, Variant _via_port, Variant _current_index, Variant _current_depth) { return operator()("consume_accessible_uses_counter_a", context, node, _via_port, _current_index, _current_depth); }

#endif
