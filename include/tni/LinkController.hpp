#ifndef TNI_API_HEADER_LINKCONTROLLER
#define TNI_API_HEADER_LINKCONTROLLER
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LinkController : public Node {
	using Node::Node;

	constexpr LinkController(Node base) : Node{base} {}
	constexpr LinkController(uint64_t addr) : Node{addr} {}
	constexpr LinkController(Object obj) : LinkController{obj.address()} {}
	LinkController(Variant variant) : LinkController{variant.as_object().address()} {}

	inline static const String COPPER_LINK_TYPEN = "COPPER";  // NOTE: You should recompile your mod if this value changes!
	inline static const String FIBER_LINK_TYPEN = "FIBER";  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(link_scn, PackedScene);
	PROPERTY(copper_link_sizings, Variant);
	PROPERTY(fiber_link_sizings, Variant);
	PROPERTY(links, Variant);

	inline Variant get_sizings_by_type(int64_t link_type);
	inline LinkSizing get_sizing_by_type_and_id(int64_t link_type, int64_t sizing_id);
	inline int64_t get_setup_quote(Variant lo1, LinkOutlet lo2, int64_t sizing_id);
	inline int64_t get_daily_quote(Variant lo1, LinkOutlet lo2, int64_t sizing_id);
	inline void populate_bill_breakdown(Variant payment_breakdown, double fee_mult, bool itemized);
	inline void create_link(NodePath lo1_np, NodePath lo2_np, int64_t sizing_id);
};

#include "LinkSizing.hpp"
#include "LinkOutlet.hpp"

inline Variant LinkController::get_sizings_by_type(int64_t link_type) { return operator()("get_sizings_by_type", link_type); }
inline LinkSizing LinkController::get_sizing_by_type_and_id(int64_t link_type, int64_t sizing_id) { return LinkSizing(operator()("get_sizing_by_type_and_id", link_type, sizing_id).as_object().address()); }
inline int64_t LinkController::get_setup_quote(Variant lo1, LinkOutlet lo2, int64_t sizing_id) { return operator()("get_setup_quote", lo1, lo2, sizing_id); }
inline int64_t LinkController::get_daily_quote(Variant lo1, LinkOutlet lo2, int64_t sizing_id) { return operator()("get_daily_quote", lo1, lo2, sizing_id); }
inline void LinkController::populate_bill_breakdown(Variant payment_breakdown, double fee_mult, bool itemized) { voidcall("populate_bill_breakdown", payment_breakdown, fee_mult, itemized); }
inline void LinkController::create_link(NodePath lo1_np, NodePath lo2_np, int64_t sizing_id) { voidcall("create_link", lo1_np, lo2_np, sizing_id); }

#endif
