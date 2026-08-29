#ifndef TNI_API_HEADER_KEYSTONESOCKET
#define TNI_API_HEADER_KEYSTONESOCKET
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Socket.hpp"

struct KeystoneSocket : public Socket {
	using Socket::Socket;

	constexpr KeystoneSocket(Socket base) : Socket{base} {}
	constexpr KeystoneSocket(uint64_t addr) : Socket{addr} {}
	constexpr KeystoneSocket(Object obj) : KeystoneSocket{obj.address()} {}
	KeystoneSocket(Variant variant) : KeystoneSocket{variant.as_object().address()} {}


	PROPERTY(is_punched_down, bool);
	PROPERTY(punchdown_link, Variant);
	PROPERTY(punchdown_area, Area2D);
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

	inline void punch_down(Variant link);
	inline void unpunch();
	inline void set_back_socket(const Socket& sock);
	inline void clear_back_socket();
	inline void block();
	inline void unblock();
	inline Variant compatible_with(const Plug& plug);
	inline void show_hint(String msg);
};

#include "Socket.hpp"
#include "GraphController.hpp"
#include "Plug.hpp"

inline void KeystoneSocket::punch_down(Variant link) { this->voidcall("punch_down", link); }
inline void KeystoneSocket::unpunch() { this->voidcall("unpunch"); }
inline void KeystoneSocket::set_back_socket(const Socket& sock) { this->voidcall("set_back_socket", Object(reinterpret_cast<const Object*>(&sock)->address())); }
inline void KeystoneSocket::clear_back_socket() { this->voidcall("clear_back_socket"); }
inline void KeystoneSocket::block() { this->voidcall("block"); }
inline void KeystoneSocket::unblock() { this->voidcall("unblock"); }
inline Variant KeystoneSocket::compatible_with(const Plug& plug) { return this->operator()("compatible_with", Object(reinterpret_cast<const Object*>(&plug)->address())); }
inline void KeystoneSocket::show_hint(String msg) { this->voidcall("show_hint", msg); }

#endif
