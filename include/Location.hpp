#ifndef TNI_API_HEADER_LOCATION
#define TNI_API_HEADER_LOCATION
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod will with updated headers may be required!

#include <api.hpp>

struct Location : public Node2D {
	using Node2D::Node2D;

	static const int64_t max_height = 5000;  // NOTE: You may need to recompile your mod if this value changes!

	Location(Variant variant) : Location{variant.as_object().address()} {}

	PROPERTY(width, double);
	PROPERTY(users, Variant);
	PROPERTY(height, double);
	PROPERTY(camera_entry, Variant);
	PROPERTY(object_entry, Variant);
	PROPERTY(fixture_outlet_serials, Variant);
	PROPERTY(link_outlets, Variant);
	PROPERTY(builder_weight, int64_t);
	PROPERTY(display_name, String);
	PROPERTY(wall_texture, Variant);
	PROPERTY(end_wall_scn, Variant);
	PROPERTY(disable_events_at_ready, bool);
	PROPERTY(spawn_limit, int64_t);
	PROPERTY(will_not_spawn_before_day, int64_t);
	PROPERTY(location_prerequisite_scn, Variant);
	PROPERTY(description, String);
	PROPERTY(surge_immunity, bool);
	PROPERTY(outage_immunity, bool);
	PROPERTY(network_outage_flag, bool);
	PROPERTY(network_outage_scheduled, bool);
	PROPERTY(is_datacenter, bool);
	PROPERTY(screenshot_texture, Variant);
	PROPERTY(power_meter, Variant);
	PROPERTY(power_mains, Variant);
	PROPERTY(floorbase, Variant);
	PROPERTY(elevator, Variant);
	PROPERTY(slot_index, int64_t);
	PROPERTY(floor_num, int64_t);
	PROPERTY(mp_spawn, Variant);
	PROPERTY(randlocpc, Variant);
	PROPERTY(all_possible_users, Variant);

	inline Variant is_valid_global_point(Variant gpoint) { return operator()("is_valid_global_point", gpoint); }
	inline Variant get_floor_idx_from_global_point(Variant gpoint) { return operator()("get_floor_idx_from_global_point", gpoint); }
	inline Variant debug_monitor_callback() { return operator()("debug_monitor_callback"); }
	inline void add_link_outlet(Variant newsock, Variant sockpos) { voidcall("add_link_outlet", newsock, sockpos); }
	inline void populate_bill_breakdown(Variant payment_breakdown, bool power_fee_waiver, double global_network_fee_mult) { voidcall("populate_bill_breakdown", payment_breakdown, power_fee_waiver, global_network_fee_mult); }
};

#endif
