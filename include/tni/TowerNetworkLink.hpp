#ifndef TNI_API_HEADER_TOWERNETWORKLINK
#define TNI_API_HEADER_TOWERNETWORKLINK
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TowerNetworkLink : public Node {
	using Node::Node;

	constexpr TowerNetworkLink(Node base) : Node{base} {}
	constexpr TowerNetworkLink(uint64_t addr) : Node{addr} {}
	constexpr TowerNetworkLink(Object obj) : TowerNetworkLink{obj.address()} {}
	TowerNetworkLink(Variant variant) : TowerNetworkLink{variant.as_object().address()} {}


	PROPERTY(link_controller, LinkController);
	PROPERTY(activated_for_the_day, bool);
	PROPERTY(outlet_a_np, NodePath);
	PROPERTY(outlet_b_np, NodePath);
	PROPERTY(setup_cost, int64_t);
	PROPERTY(daily_cost, int64_t);
	PROPERTY(highest_nbw_for_day, int64_t);
	PROPERTY(average_bw_per_tick, int64_t);
	PROPERTY(average_load_ratio, double);
	PROPERTY(peak_load_ratio, double);
	PROPERTY(link_descript, String);
	PROPERTY(active, bool);
	PROPERTY(outlet_a, LinkOutlet);
	PROPERTY(outlet_b, LinkOutlet);
	PROPERTY(controller, LogicController);
	PROPERTY(installed_nbw, int64_t);
	PROPERTY(will_decom, bool);

	inline void link_socket_neighbour_if_graphcable(LogicControllerSocket socket);
	inline void unlink_socket_neighbour_if_graphcable(LogicControllerSocket socket);
	inline void activate();
	inline void deactivate();
	inline void decomission();
	inline void upgrade(Variant new_bw, Variant new_setup, Variant new_daily);
	inline void teardown_all();
};

#include "LinkController.hpp"
#include "LinkOutlet.hpp"
#include "LogicController.hpp"
#include "LogicControllerSocket.hpp"

inline void TowerNetworkLink::link_socket_neighbour_if_graphcable(LogicControllerSocket socket) { voidcall("link_socket_neighbour_if_graphcable", socket); }
inline void TowerNetworkLink::unlink_socket_neighbour_if_graphcable(LogicControllerSocket socket) { voidcall("unlink_socket_neighbour_if_graphcable", socket); }
inline void TowerNetworkLink::activate() { voidcall("activate"); }
inline void TowerNetworkLink::deactivate() { voidcall("deactivate"); }
inline void TowerNetworkLink::decomission() { voidcall("decomission"); }
inline void TowerNetworkLink::upgrade(Variant new_bw, Variant new_setup, Variant new_daily) { voidcall("upgrade", new_bw, new_setup, new_daily); }
inline void TowerNetworkLink::teardown_all() { voidcall("teardown_all"); }

#endif
