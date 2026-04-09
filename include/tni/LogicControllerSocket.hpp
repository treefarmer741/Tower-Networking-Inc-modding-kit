#ifndef TNI_API_HEADER_LOGICCONTROLLERSOCKET
#define TNI_API_HEADER_LOGICCONTROLLERSOCKET
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Socket.hpp"

struct LogicControllerSocket : public Socket {
	using Socket::Socket;

	constexpr LogicControllerSocket(Socket base) : Socket{base} {}
	constexpr LogicControllerSocket(uint64_t addr) : Socket{addr} {}
	constexpr LogicControllerSocket(Object obj) : LogicControllerSocket{obj.address()} {}
	LogicControllerSocket(Variant variant) : LogicControllerSocket{variant.as_object().address()} {}

	PROPERTY(PacketPlaceholderScene, Variant);  // Const value type was not supported.

	PROPERTY(is_back_port, bool);
	PROPERTY(link_ind, Node2D);
	PROPERTY(act_ind_rcache, Node2D);
	PROPERTY(act_ind, Node2D);
	PROPERTY(total_tx_since_up, int64_t);
	PROPERTY(total_rx_since_up, int64_t);
	PROPERTY(up_timestamp, int64_t);
	PROPERTY(traversal_tc_counts_since_up, Variant);
	PROPERTY(is_up, bool);
	// PROPERTY(virtual, bool);  // Property name is same as C++ keyword!
	PROPERTY(port_num, int64_t);
	PROPERTY(port_id, String);
	PROPERTY(bliptimer, Timer);
	PROPERTY(onscr_notifier, VisibleOnScreenNotifier2D);
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

	inline void network_activity(bool is_tx_dir, Variant packet);
	inline void reset_netw_stats();
	inline Variant get_port_tags();
	inline void block();
	inline void unblock();
	inline Variant compatible_with(const Plug& plug);
	inline void show_hint(String msg);
};

#include "Socket.hpp"
#include "GraphController.hpp"
#include "Plug.hpp"

inline void LogicControllerSocket::network_activity(bool is_tx_dir, Variant packet) { this->voidcall("network_activity", is_tx_dir, packet); }
inline void LogicControllerSocket::reset_netw_stats() { this->voidcall("reset_netw_stats"); }
inline Variant LogicControllerSocket::get_port_tags() { return this->operator()("get_port_tags"); }
inline void LogicControllerSocket::block() { this->voidcall("block"); }
inline void LogicControllerSocket::unblock() { this->voidcall("unblock"); }
inline Variant LogicControllerSocket::compatible_with(const Plug& plug) { return this->operator()("compatible_with", Object(reinterpret_cast<const Object*>(&plug)->address())); }
inline void LogicControllerSocket::show_hint(String msg) { this->voidcall("show_hint", msg); }

#endif
