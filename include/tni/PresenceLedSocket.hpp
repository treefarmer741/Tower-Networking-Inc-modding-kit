#ifndef TNI_API_HEADER_PRESENCELEDSOCKET
#define TNI_API_HEADER_PRESENCELEDSOCKET
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "PeripheralSocket.hpp"

struct PresenceLedSocket : public PeripheralSocket {
	using PeripheralSocket::PeripheralSocket;

	constexpr PresenceLedSocket(PeripheralSocket base) : PeripheralSocket{base} {}
	constexpr PresenceLedSocket(uint64_t addr) : PeripheralSocket{addr} {}
	constexpr PresenceLedSocket(Object obj) : PresenceLedSocket{obj.address()} {}
	PresenceLedSocket(Variant variant) : PresenceLedSocket{variant.as_object().address()} {}


	PROPERTY(presence_led, PoweredLight);
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
	inline Variant compatible_with(const Plug& plug);
	inline void show_hint(String msg);
};

#include "PoweredLight.hpp"
#include "ToggleSwitch.hpp"
#include "Socket.hpp"
#include "GraphController.hpp"
#include "Plug.hpp"

inline void PresenceLedSocket::block() { this->voidcall("block"); }
inline void PresenceLedSocket::unblock() { this->voidcall("unblock"); }
inline Variant PresenceLedSocket::compatible_with(const Plug& plug) { return this->operator()("compatible_with", Object(reinterpret_cast<const Object*>(&plug)->address())); }
inline void PresenceLedSocket::show_hint(String msg) { this->voidcall("show_hint", msg); }

#endif
