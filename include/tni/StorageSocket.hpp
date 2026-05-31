#ifndef TNI_API_HEADER_STORAGESOCKET
#define TNI_API_HEADER_STORAGESOCKET
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Socket.hpp"

struct StorageSocket : public Socket {
	using Socket::Socket;

	constexpr StorageSocket(Socket base) : Socket{base} {}
	constexpr StorageSocket(uint64_t addr) : Socket{addr} {}
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
	inline Variant compatible_with(const Plug& plug);
	inline void show_hint(String msg);
};

#include "Socket.hpp"
#include "GraphController.hpp"
#include "Plug.hpp"

inline void StorageSocket::block() { this->voidcall("block"); }
inline void StorageSocket::unblock() { this->voidcall("unblock"); }
inline Variant StorageSocket::compatible_with(const Plug& plug) { return this->operator()("compatible_with", Object(reinterpret_cast<const Object*>(&plug)->address())); }
inline void StorageSocket::show_hint(String msg) { this->voidcall("show_hint", msg); }

#endif
