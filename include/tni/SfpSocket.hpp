#ifndef TNI_API_HEADER_SFPSOCKET
#define TNI_API_HEADER_SFPSOCKET
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "LogicControllerSocket.hpp"

struct SfpSocket : public LogicControllerSocket {
	using LogicControllerSocket::LogicControllerSocket;

	constexpr SfpSocket(LogicControllerSocket base) : LogicControllerSocket{base} {}
	constexpr SfpSocket(uint64_t addr) : LogicControllerSocket{addr} {}
	constexpr SfpSocket(Object obj) : SfpSocket{obj.address()} {}
	SfpSocket(Variant variant) : SfpSocket{variant.as_object().address()} {}


	PROPERTY(face, Sprite2D);
	PROPERTY(module, DeviceUnit);
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
	PROPERTY(passthrough, bool);
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

	inline void fit(const DeviceUnit& by, int64_t port_type);
	inline void unfit();
	inline Variant compatible_with(const Plug& plug);
	inline bool is_port_id_like(String s);
	inline String strip_port_prefix(String s);
	inline void network_activity(bool is_tx_dir, Variant packet);
	inline void reset_netw_stats();
	inline Variant get_port_tags();
	inline void block();
	inline void unblock();
	inline void show_hint(String msg);
};

#include "DeviceUnit.hpp"
#include "Socket.hpp"
#include "GraphController.hpp"
#include "Plug.hpp"

inline void SfpSocket::fit(const DeviceUnit& by, int64_t port_type) { this->voidcall("fit", Object(reinterpret_cast<const Object*>(&by)->address()), port_type); }
inline void SfpSocket::unfit() { this->voidcall("unfit"); }
inline Variant SfpSocket::compatible_with(const Plug& plug) { return this->operator()("compatible_with", Object(reinterpret_cast<const Object*>(&plug)->address())); }
inline bool SfpSocket::is_port_id_like(String s) { return this->operator()("is_port_id_like", s); }
inline String SfpSocket::strip_port_prefix(String s) { return this->operator()("strip_port_prefix", s); }
inline void SfpSocket::network_activity(bool is_tx_dir, Variant packet) { this->voidcall("network_activity", is_tx_dir, packet); }
inline void SfpSocket::reset_netw_stats() { this->voidcall("reset_netw_stats"); }
inline Variant SfpSocket::get_port_tags() { return this->operator()("get_port_tags"); }
inline void SfpSocket::block() { this->voidcall("block"); }
inline void SfpSocket::unblock() { this->voidcall("unblock"); }
inline void SfpSocket::show_hint(String msg) { this->voidcall("show_hint", msg); }

#endif
