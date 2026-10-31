#ifndef TNI_API_HEADER_S9KRAKENPROBERIGSCRIPT
#define TNI_API_HEADER_S9KRAKENPROBERIGSCRIPT
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S9KrakenProbeRigScript : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S9KrakenProbeRigScript(RefCounted base) : RefCounted{base} {}
	constexpr S9KrakenProbeRigScript(uint64_t addr) : RefCounted{addr} {}
	constexpr S9KrakenProbeRigScript(Object obj) : S9KrakenProbeRigScript{obj.address()} {}
	S9KrakenProbeRigScript(Variant variant) : S9KrakenProbeRigScript{variant.as_object().address()} {}


	PROPERTY(world, GameWorld);

	inline Location location(int64_t idx);
	inline double floor_y(int64_t idx);
	inline double half_width(int64_t idx);
	inline Socket socket_at(Variant pos, int64_t loc_idx);
	inline Variant free_rj45_sockets(Node device);
	inline GraphLinkCable spawn_patch_cable(double length, Variant a_pos, Variant b_pos, const Socket& sock_a, const Socket& sock_b);
	inline GraphLinkCable spawn_delivered_cable(double length, Variant spawn_pos);
	inline DeviceUnit spawn_device(String scene_path, Variant pos);
	inline CableTray spawn_hook(Variant pos);
	inline TrayAffixedLink spawn_tray_link(const CableTray& hook_a, const CableTray& hook_b, Variant start_pos, Variant end_pos, const Socket& sock_start, const Socket& sock_end);
	inline MultiplayerMouse mouse();
	inline void take_mouse();
	inline void give_back_mouse();
	inline void set_mouse(Variant pos);
	inline void camera_look(Variant pos);
	inline void watch_unplugs(Variant cables, Variant counter);
};

#include "GameWorld.hpp"
#include "Location.hpp"
#include "Socket.hpp"
#include "GraphLinkCable.hpp"
#include "DeviceUnit.hpp"
#include "CableTray.hpp"
#include "TrayAffixedLink.hpp"
#include "MultiplayerMouse.hpp"

inline Location S9KrakenProbeRigScript::location(int64_t idx) { return Location(this->operator()("location", idx).as_object().address()); }
inline double S9KrakenProbeRigScript::floor_y(int64_t idx) { return this->operator()("floor_y", idx); }
inline double S9KrakenProbeRigScript::half_width(int64_t idx) { return this->operator()("half_width", idx); }
inline Socket S9KrakenProbeRigScript::socket_at(Variant pos, int64_t loc_idx) { return Socket(this->operator()("socket_at", pos, loc_idx).as_object().address()); }
inline Variant S9KrakenProbeRigScript::free_rj45_sockets(Node device) { return this->operator()("free_rj45_sockets", device); }
inline GraphLinkCable S9KrakenProbeRigScript::spawn_patch_cable(double length, Variant a_pos, Variant b_pos, const Socket& sock_a, const Socket& sock_b) { return GraphLinkCable(this->operator()("spawn_patch_cable", length, a_pos, b_pos, Object(reinterpret_cast<const Object*>(&sock_a)->address()), Object(reinterpret_cast<const Object*>(&sock_b)->address())).as_object().address()); }
inline GraphLinkCable S9KrakenProbeRigScript::spawn_delivered_cable(double length, Variant spawn_pos) { return GraphLinkCable(this->operator()("spawn_delivered_cable", length, spawn_pos).as_object().address()); }
inline DeviceUnit S9KrakenProbeRigScript::spawn_device(String scene_path, Variant pos) { return DeviceUnit(this->operator()("spawn_device", scene_path, pos).as_object().address()); }
inline CableTray S9KrakenProbeRigScript::spawn_hook(Variant pos) { return CableTray(this->operator()("spawn_hook", pos).as_object().address()); }
inline TrayAffixedLink S9KrakenProbeRigScript::spawn_tray_link(const CableTray& hook_a, const CableTray& hook_b, Variant start_pos, Variant end_pos, const Socket& sock_start, const Socket& sock_end) { return TrayAffixedLink(this->operator()("spawn_tray_link", Object(reinterpret_cast<const Object*>(&hook_a)->address()), Object(reinterpret_cast<const Object*>(&hook_b)->address()), start_pos, end_pos, Object(reinterpret_cast<const Object*>(&sock_start)->address()), Object(reinterpret_cast<const Object*>(&sock_end)->address())).as_object().address()); }
inline MultiplayerMouse S9KrakenProbeRigScript::mouse() { return MultiplayerMouse(this->operator()("mouse").as_object().address()); }
inline void S9KrakenProbeRigScript::take_mouse() { this->voidcall("take_mouse"); }
inline void S9KrakenProbeRigScript::give_back_mouse() { this->voidcall("give_back_mouse"); }
inline void S9KrakenProbeRigScript::set_mouse(Variant pos) { this->voidcall("set_mouse", pos); }
inline void S9KrakenProbeRigScript::camera_look(Variant pos) { this->voidcall("camera_look", pos); }
inline void S9KrakenProbeRigScript::watch_unplugs(Variant cables, Variant counter) { this->voidcall("watch_unplugs", cables, counter); }

#endif
