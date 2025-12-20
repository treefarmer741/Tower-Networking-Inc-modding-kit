#ifndef TNI_API_HEADER_PERIPHERALSOCKET
#define TNI_API_HEADER_PERIPHERALSOCKET
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PeripheralSocket : public Area2D {
	using Area2D::Area2D;

	constexpr PeripheralSocket(Area2D base) : Area2D{base} {}
	constexpr PeripheralSocket(uint64_t addr) : Area2D{addr} {}
	constexpr PeripheralSocket(Object obj) : PeripheralSocket{obj.address()} {}
	PeripheralSocket(Variant variant) : PeripheralSocket{variant.as_object().address()} {}


	PROPERTY(peripheral_lock_switch, ToggleSwitch);
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

	inline void block();
	inline void unblock();
	inline Variant compatible_with(Plug plug);
	inline void show_hint(String msg);
};

#include "ToggleSwitch.hpp"
#include "Socket.hpp"
#include "GraphController.hpp"
#include "Plug.hpp"

inline void PeripheralSocket::block() { voidcall("block"); }
inline void PeripheralSocket::unblock() { voidcall("unblock"); }
inline Variant PeripheralSocket::compatible_with(Plug plug) { return operator()("compatible_with", plug); }
inline void PeripheralSocket::show_hint(String msg) { voidcall("show_hint", msg); }

#endif
