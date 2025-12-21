#ifndef TNI_API_HEADER_STORAGESOCKET
#define TNI_API_HEADER_STORAGESOCKET
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct StorageSocket : public Area2D {
	using Area2D::Area2D;

	constexpr StorageSocket(Area2D base) : Area2D{base} {}
	constexpr StorageSocket(uint64_t addr) : Area2D{addr} {}
	constexpr StorageSocket(Object obj) : StorageSocket{obj.address()} {}
	StorageSocket(Variant variant) : StorageSocket{variant.as_object().address()} {}


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

#include "Socket.hpp"
#include "GraphController.hpp"
#include "Plug.hpp"

inline void StorageSocket::block() { voidcall("block"); }
inline void StorageSocket::unblock() { voidcall("unblock"); }
inline Variant StorageSocket::compatible_with(Plug plug) { return operator()("compatible_with", plug); }
inline void StorageSocket::show_hint(String msg) { voidcall("show_hint", msg); }

#endif
