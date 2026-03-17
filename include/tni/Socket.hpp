#ifndef TNI_API_HEADER_SOCKET
#define TNI_API_HEADER_SOCKET
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Socket : public Area2D {
	using Area2D::Area2D;

	constexpr Socket(Area2D base) : Area2D{base} {}
	constexpr Socket(uint64_t addr) : Area2D{addr} {}
	constexpr Socket(Object obj) : Socket{obj.address()} {}
	Socket(Variant variant) : Socket{variant.as_object().address()} {}

	enum Type : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		TEST = 1,
		B_3PIN = 2,
		UK_3PIN = 3,
		RJ45 = 4,
		RJ11 = 5,
		A_USB = 6,
		E10_BULB = 7,
		SERIAL_DEBUG = 8,
		DC_JACK = 9,
		FIBER_OPTIC_SC = 10,
		SATA35_SLOT = 101,
		SATA25_SLOT = 102,
		PCIE_SLOT = 103,
		DDR3_SLOT = 110,
		DDR4_SLOT = 111,
		STORAGE_SLOT = 200,
	};

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

inline void Socket::block() { voidcall("block"); }
inline void Socket::unblock() { voidcall("unblock"); }
inline Variant Socket::compatible_with(Plug plug) { return operator()("compatible_with", plug); }
inline void Socket::show_hint(String msg) { voidcall("show_hint", msg); }

#endif
