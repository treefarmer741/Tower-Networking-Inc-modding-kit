#ifndef TNI_API_HEADER_LOCATION
#define TNI_API_HEADER_LOCATION
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Location : public Node2D {
	using Node2D::Node2D;

	constexpr Location(Node2D base) : Node2D{base} {}
	constexpr Location(uint64_t addr) : Node2D{addr} {}
	constexpr Location(Object obj) : Location{obj.address()} {}
	Location(Variant variant) : Location{variant.as_object().address()} {}

	static constexpr int64_t max_height = 5000;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(width, double);
	PROPERTY(users, Variant);
	PROPERTY(height, double);
	PROPERTY(camera_entry, Variant);
	PROPERTY(object_entry, Variant);
	PROPERTY(fixture_outlet_serials, Variant);
	PROPERTY(link_outlets, Variant);
	PROPERTY(builder_weight, int64_t);
	PROPERTY(display_name, String);
	PROPERTY(wall_texture, Texture2D);
	PROPERTY(end_wall_scn, PackedScene);
	PROPERTY(disable_events_at_ready, bool);
	PROPERTY(spawn_limit, int64_t);
	PROPERTY(will_not_spawn_before_day, int64_t);
	PROPERTY(location_prerequisite_scn, PackedScene);
	PROPERTY(description, String);
	PROPERTY(surge_immunity, bool);
	PROPERTY(outage_immunity, bool);
	PROPERTY(network_outage_flag, bool);
	PROPERTY(network_outage_scheduled, bool);
	PROPERTY(is_datacenter, bool);
	PROPERTY(screenshot_texture, Texture2D);
	PROPERTY(power_meter, PowerMeter);
	PROPERTY(power_mains, PowerController);
	PROPERTY(floorbase, Floor);
	PROPERTY(elevator, Elevator);
	PROPERTY(slot_index, int64_t);
	PROPERTY(floor_num, int64_t);
	PROPERTY(mp_spawn, MultiplayerSpawner);
	PROPERTY(randlocpc, Variant);
	PROPERTY(all_possible_users, Variant);

	inline Variant is_valid_global_point(Variant gpoint);
	inline Variant get_floor_idx_from_global_point(Variant gpoint);
	inline Variant debug_monitor_callback();
	inline void add_link_outlet(LinkOutlet newsock, Variant sockpos);
	inline void populate_bill_breakdown(Variant payment_breakdown, bool power_fee_waiver, double global_network_fee_mult);
};

#include "PowerMeter.hpp"
#include "PowerController.hpp"
#include "Floor.hpp"
#include "Elevator.hpp"
#include "LinkOutlet.hpp"

inline Variant Location::is_valid_global_point(Variant gpoint) { return operator()("is_valid_global_point", gpoint); }
inline Variant Location::get_floor_idx_from_global_point(Variant gpoint) { return operator()("get_floor_idx_from_global_point", gpoint); }
inline Variant Location::debug_monitor_callback() { return operator()("debug_monitor_callback"); }
inline void Location::add_link_outlet(LinkOutlet newsock, Variant sockpos) { voidcall("add_link_outlet", newsock, sockpos); }
inline void Location::populate_bill_breakdown(Variant payment_breakdown, bool power_fee_waiver, double global_network_fee_mult) { voidcall("populate_bill_breakdown", payment_breakdown, power_fee_waiver, global_network_fee_mult); }

#endif
