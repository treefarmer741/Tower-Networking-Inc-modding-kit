#ifndef TNI_API_HEADER_LOGICCONTROLLERSOCKET
#define TNI_API_HEADER_LOGICCONTROLLERSOCKET
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod will with updated headers may be required!

#include <api.hpp>

struct LogicControllerSocket : public Area2D {
	using Area2D::Area2D;


	LogicControllerSocket(Variant variant) : LogicControllerSocket{variant.as_object().address()} {}

	PROPERTY(is_back_port, bool);
	PROPERTY(link_ind, Variant);
	PROPERTY(act_ind_rcache, Variant);
	PROPERTY(act_ind, Variant);
	PROPERTY(total_tx_since_up, int64_t);
	PROPERTY(total_rx_since_up, int64_t);
	PROPERTY(up_timestamp, int64_t);
	PROPERTY(traversal_tc_counts_since_up, Variant);
	PROPERTY(is_up, bool);
//	PROPERTY(virtual, bool);
	PROPERTY(port_num, int64_t);
	PROPERTY(port_id, String);
	PROPERTY(bliptimer, Variant);
	PROPERTY(top_traffic_classes, Variant);
	PROPERTY(connection, Variant);
	PROPERTY(opposite_socket, Variant);
	PROPERTY(type, int64_t);
	PROPERTY(insert_sound_np, Variant);
	PROPERTY(remove_sound_np, Variant);
	PROPERTY(disable_egress, bool);
	PROPERTY(disable_ingress, bool);
	PROPERTY(insert_sound, Variant);
	PROPERTY(remove_sound, Variant);
	PROPERTY(controller, Variant);
	PROPERTY(is_blocked, bool);
	PROPERTY(root_transformer, Variant);

	inline void network_activity(bool is_tx_dir, String traffic_class, String _request_data) { voidcall("network_activity", is_tx_dir, traffic_class, _request_data); }
	inline void reset_netw_stats() { voidcall("reset_netw_stats"); }
	inline Variant get_port_tags() { return operator()("get_port_tags"); }
	inline void block() { voidcall("block"); }
	inline void unblock() { voidcall("unblock"); }
	inline Variant compatible_with(Variant plug) { return operator()("compatible_with", plug); }
	inline void show_hint(String msg) { voidcall("show_hint", msg); }
};

#endif
