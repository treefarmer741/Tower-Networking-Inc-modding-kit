#ifndef TNI_API_HEADER_CABLESLOT
#define TNI_API_HEADER_CABLESLOT
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Socket.hpp"

struct CableSlot : public Socket {
	using Socket::Socket;

	constexpr CableSlot(Socket base) : Socket{base} {}
	constexpr CableSlot(uint64_t addr) : Socket{addr} {}
	constexpr CableSlot(Object obj) : CableSlot{obj.address()} {}
	CableSlot(Variant variant) : CableSlot{variant.as_object().address()} {}


	PROPERTY(coil_radius, double);
	PROPERTY(coil_tightness, double);
	PROPERTY(coil_gap, double);
	PROPERTY(preslotted_delivery_obj, Node2D);
	PROPERTY(mute_sound, bool);
	PROPERTY(coiled_cable, Variant);
	PROPERTY(coil_offsets, Variant);
	PROPERTY(free_end, Plug);
	PROPERTY(coil_points, PackedArray<Vector2>);
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

	inline void emove(Variant _newpos);
	inline void block();
	inline void unblock();
	inline Variant compatible_with(const Plug& plug);
	inline void show_hint(String msg);
};

#include "Plug.hpp"
#include "Socket.hpp"
#include "GraphController.hpp"

inline void CableSlot::emove(Variant _newpos) { this->voidcall("emove", _newpos); }
inline void CableSlot::block() { this->voidcall("block"); }
inline void CableSlot::unblock() { this->voidcall("unblock"); }
inline Variant CableSlot::compatible_with(const Plug& plug) { return this->operator()("compatible_with", Object(reinterpret_cast<const Object*>(&plug)->address())); }
inline void CableSlot::show_hint(String msg) { this->voidcall("show_hint", msg); }

#endif
