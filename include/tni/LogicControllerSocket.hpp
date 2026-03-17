#ifndef TNI_API_HEADER_LOGICCONTROLLERSOCKET
#define TNI_API_HEADER_LOGICCONTROLLERSOCKET
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LogicControllerSocket : public Area2D {
	using Area2D::Area2D;

	constexpr LogicControllerSocket(Area2D base) : Area2D{base} {}
	constexpr LogicControllerSocket(uint64_t addr) : Area2D{addr} {}
	constexpr LogicControllerSocket(Object obj) : LogicControllerSocket{obj.address()} {}
	LogicControllerSocket(Variant variant) : LogicControllerSocket{variant.as_object().address()} {}


	PROPERTY(is_back_port, bool);
	PROPERTY(link_ind, Node2D);
	PROPERTY(act_ind_rcache, Node2D);
	PROPERTY(act_ind, Node2D);
	PROPERTY(total_tx_since_up, int64_t);
	PROPERTY(total_rx_since_up, int64_t);
	PROPERTY(up_timestamp, int64_t);
	PROPERTY(traversal_tc_counts_since_up, Variant);
	PROPERTY(is_up, bool);
//	PROPERTY(virtual, bool);
	PROPERTY(port_num, int64_t);
	PROPERTY(port_id, String);
	PROPERTY(bliptimer, Timer);
	PROPERTY(top_traffic_classes, Variant);
	PROPERTY(connection, Variant);
	PROPERTY(opposite_socket, Socket);
	PROPERTY(type, int64_t);
	PROPERTY(insert_sound_np, NodePath);
	PROPERTY(remove_sound_np, NodePath);
	PROPERTY(disable_egress, bool);
	PROPERTY(disable_ingress, bool);
	PROPERTY(insert_sound, AudioStreamPlayer2D);
	PROPERTY(remove_sound, AudioStreamPlayer2D);
	PROPERTY(controller, GraphController);
	PROPERTY(is_blocked, bool);
	PROPERTY(root_transformer, RemoteTransform2D);

	inline void network_activity(bool is_tx_dir, String traffic_class, String _request_data);
	inline void reset_netw_stats();
	inline Variant get_port_tags();
	inline void block();
	inline void unblock();
	inline Variant compatible_with(Plug plug);
	inline void show_hint(String msg);
};

#include "Socket.hpp"
#include "GraphController.hpp"
#include "Plug.hpp"

inline void LogicControllerSocket::network_activity(bool is_tx_dir, String traffic_class, String _request_data) { voidcall("network_activity", is_tx_dir, traffic_class, _request_data); }
inline void LogicControllerSocket::reset_netw_stats() { voidcall("reset_netw_stats"); }
inline Variant LogicControllerSocket::get_port_tags() { return operator()("get_port_tags"); }
inline void LogicControllerSocket::block() { voidcall("block"); }
inline void LogicControllerSocket::unblock() { voidcall("unblock"); }
inline Variant LogicControllerSocket::compatible_with(Plug plug) { return operator()("compatible_with", plug); }
inline void LogicControllerSocket::show_hint(String msg) { voidcall("show_hint", msg); }

#endif
