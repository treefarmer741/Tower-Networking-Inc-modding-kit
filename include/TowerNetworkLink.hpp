#ifndef TNI_API_HEADER_TOWERNETWORKLINK
#define TNI_API_HEADER_TOWERNETWORKLINK
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod will with updated headers may be required!

#include <api.hpp>

struct TowerNetworkLink : public Node {
	using Node::Node;


	TowerNetworkLink(Variant variant) : TowerNetworkLink{variant.as_object().address()} {}

	PROPERTY(link_controller, Variant);
	PROPERTY(activated_for_the_day, bool);
	PROPERTY(outlet_a_np, Variant);
	PROPERTY(outlet_b_np, Variant);
	PROPERTY(setup_cost, int64_t);
	PROPERTY(daily_cost, int64_t);
	PROPERTY(highest_nbw_for_day, int64_t);
	PROPERTY(average_bw_per_tick, int64_t);
	PROPERTY(average_load_ratio, double);
	PROPERTY(peak_load_ratio, double);
	PROPERTY(link_descript, String);
	PROPERTY(active, bool);
	PROPERTY(outlet_a, Variant);
	PROPERTY(outlet_b, Variant);
	PROPERTY(controller, Variant);
	PROPERTY(installed_nbw, int64_t);
	PROPERTY(will_decom, bool);

	inline void link_socket_neighbour_if_graphcable(Variant socket) { voidcall("link_socket_neighbour_if_graphcable", socket); }
	inline void unlink_socket_neighbour_if_graphcable(Variant socket) { voidcall("unlink_socket_neighbour_if_graphcable", socket); }
	inline void activate() { voidcall("activate"); }
	inline void deactivate() { voidcall("deactivate"); }
	inline void decomission() { voidcall("decomission"); }
	inline void upgrade(Variant new_bw, Variant new_setup, Variant new_daily) { voidcall("upgrade", new_bw, new_setup, new_daily); }
	inline void teardown_all() { voidcall("teardown_all"); }
};

#endif
