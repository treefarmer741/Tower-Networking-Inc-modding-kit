#ifndef TNI_API_HEADER_LINKOUTLET
#define TNI_API_HEADER_LINKOUTLET
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LinkOutlet : public Area2D {
	using Area2D::Area2D;

	constexpr LinkOutlet(Area2D base) : Area2D{base} {}
	constexpr LinkOutlet(uint64_t addr) : Area2D{addr} {}
	constexpr LinkOutlet(Object obj) : LinkOutlet{obj.address()} {}
	LinkOutlet(Variant variant) : LinkOutlet{variant.as_object().address()} {}

	enum LinkOutletType : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		COPPER = 0,
		FIBER = 1,
	};

	PROPERTY(link_type, int64_t);
	PROPERTY(link_np, NodePath);
	PROPERTY(tower_link, TowerNetworkLink);
	PROPERTY(serial_num, String);
	PROPERTY(linked, bool);
	PROPERTY(floor_num, int64_t);
	PROPERTY(socket, Socket);

	inline void get_link_type_string(LinkOutlet lo);
	inline void update_link_outlet_labels();
	inline void link_setup(TowerNetworkLink lnk);
	inline void remove();
	inline Variant debug_monitor_callback();
};

#include "TowerNetworkLink.hpp"
#include "Socket.hpp"
#include "LinkOutlet.hpp"

inline void LinkOutlet::get_link_type_string(LinkOutlet lo) { voidcall("get_link_type_string", lo); }
inline void LinkOutlet::update_link_outlet_labels() { voidcall("update_link_outlet_labels"); }
inline void LinkOutlet::link_setup(TowerNetworkLink lnk) { voidcall("link_setup", lnk); }
inline void LinkOutlet::remove() { voidcall("remove"); }
inline Variant LinkOutlet::debug_monitor_callback() { return operator()("debug_monitor_callback"); }

#endif
