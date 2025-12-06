#ifndef TNI_API_HEADER_SOCKET
#define TNI_API_HEADER_SOCKET
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod will with updated headers may be required!

#include <api.hpp>

struct Socket : public Area2D {
	using Area2D::Area2D;

	enum Type : int64_t {  // NOTE: You may need to recompile your mod if this enum changes!
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

	Socket(Variant variant) : Socket{variant.as_object().address()} {}

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

	inline void block() { voidcall("block"); }
	inline void unblock() { voidcall("unblock"); }
	inline Variant compatible_with(Variant plug) { return operator()("compatible_with", plug); }
	inline void show_hint(String msg) { voidcall("show_hint", msg); }
};

#endif
