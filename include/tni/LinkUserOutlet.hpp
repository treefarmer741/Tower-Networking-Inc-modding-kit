#ifndef TNI_API_HEADER_LINKUSEROUTLET
#define TNI_API_HEADER_LINKUSEROUTLET
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "LinkOutlet.hpp"

struct LinkUserOutlet : public LinkOutlet {
	using LinkOutlet::LinkOutlet;

	constexpr LinkUserOutlet(LinkOutlet base) : LinkOutlet{base} {}
	constexpr LinkUserOutlet(uint64_t addr) : LinkOutlet{addr} {}
	constexpr LinkUserOutlet(Object obj) : LinkUserOutlet{obj.address()} {}
	LinkUserOutlet(Variant variant) : LinkUserOutlet{variant.as_object().address()} {}


	PROPERTY(link_type, int64_t);
	PROPERTY(link_nps, Variant);
	PROPERTY(link_np, NodePath);
	PROPERTY(tower_link, TowerNetworkLink);
	PROPERTY(serial_num, String);
	PROPERTY(linked, bool);
	PROPERTY(socket, Socket);
	PROPERTY(sockets, Variant);
	PROPERTY(floor_num, int64_t);

	inline void get_link_type_string(const LinkOutlet& lo);
	inline TowerNetworkLink get_tower_link_for_socket(int64_t idx);
	inline bool is_socket_linked(int64_t idx);
	inline void update_link_outlet_labels();
	inline void link_setup(const TowerNetworkLink& lnk, int64_t socket_idx);
	inline void remove();
	inline void remove_local();
	inline Variant debug_monitor_callback();
};

#include "TowerNetworkLink.hpp"
#include "Socket.hpp"
#include "LinkOutlet.hpp"

inline void LinkUserOutlet::get_link_type_string(const LinkOutlet& lo) { this->voidcall("get_link_type_string", Object(reinterpret_cast<const Object*>(&lo)->address())); }
inline TowerNetworkLink LinkUserOutlet::get_tower_link_for_socket(int64_t idx) { return TowerNetworkLink(this->operator()("get_tower_link_for_socket", idx).as_object().address()); }
inline bool LinkUserOutlet::is_socket_linked(int64_t idx) { return this->operator()("is_socket_linked", idx); }
inline void LinkUserOutlet::update_link_outlet_labels() { this->voidcall("update_link_outlet_labels"); }
inline void LinkUserOutlet::link_setup(const TowerNetworkLink& lnk, int64_t socket_idx) { this->voidcall("link_setup", Object(reinterpret_cast<const Object*>(&lnk)->address()), socket_idx); }
inline void LinkUserOutlet::remove() { this->voidcall("remove"); }
inline void LinkUserOutlet::remove_local() { this->voidcall("remove_local"); }
inline Variant LinkUserOutlet::debug_monitor_callback() { return this->operator()("debug_monitor_callback"); }

#endif
