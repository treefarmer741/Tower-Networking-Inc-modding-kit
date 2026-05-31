#ifndef TNI_API_HEADER_LINKOUTLET
#define TNI_API_HEADER_LINKOUTLET
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "FixtureOutlet.hpp"

struct LinkOutlet : public FixtureOutlet {
	using FixtureOutlet::FixtureOutlet;

	constexpr LinkOutlet(FixtureOutlet base) : FixtureOutlet{base} {}
	constexpr LinkOutlet(uint64_t addr) : FixtureOutlet{addr} {}
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
	PROPERTY(socket, Socket);
	PROPERTY(floor_num, int64_t);

	inline void get_link_type_string(const LinkOutlet& lo);
	inline void update_link_outlet_labels();
	inline void link_setup(const TowerNetworkLink& lnk);
	inline void remove();
	inline Variant debug_monitor_callback();
};

#include "TowerNetworkLink.hpp"
#include "Socket.hpp"
#include "LinkOutlet.hpp"

inline void LinkOutlet::get_link_type_string(const LinkOutlet& lo) { this->voidcall("get_link_type_string", Object(reinterpret_cast<const Object*>(&lo)->address())); }
inline void LinkOutlet::update_link_outlet_labels() { this->voidcall("update_link_outlet_labels"); }
inline void LinkOutlet::link_setup(const TowerNetworkLink& lnk) { this->voidcall("link_setup", Object(reinterpret_cast<const Object*>(&lnk)->address())); }
inline void LinkOutlet::remove() { this->voidcall("remove"); }
inline Variant LinkOutlet::debug_monitor_callback() { return this->operator()("debug_monitor_callback"); }

#endif
