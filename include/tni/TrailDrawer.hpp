#ifndef TNI_API_HEADER_TRAILDRAWER
#define TNI_API_HEADER_TRAILDRAWER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct TrailDrawer : public Node3D {
	using Node3D::Node3D;

	constexpr TrailDrawer(Node3D base) : Node3D{base} {}
	constexpr TrailDrawer(uint64_t addr) : Node3D{addr} {}
	constexpr TrailDrawer(Object obj) : TrailDrawer{obj.address()} {}
	TrailDrawer(Variant variant) : TrailDrawer{variant.as_object().address()} {}


	PROPERTY(enabled, bool);
	PROPERTY(coloring_mode, String);
	PROPERTY(trail_color, Variant);
	PROPERTY(sampling_period, double);
	PROPERTY(tracking_node_group_name, String);
	PROPERTY(max_points_per_trail, int64_t);
	PROPERTY(meshinst, Variant);
	PROPERTY(sampling_timer, Timer);
	PROPERTY(trails_mesh, ImmediateMesh);
	PROPERTY(points_by_tracked_nodes, Variant);
	PROPERTY(enable_on_ready, bool);
	PROPERTY(is_enabled, bool);

	inline void disable();
	inline void enable();
	inline void clear_all_trails();
	inline void clear_trail(Node3D n);
};


inline void TrailDrawer::disable() { this->voidcall("disable"); }
inline void TrailDrawer::enable() { this->voidcall("enable"); }
inline void TrailDrawer::clear_all_trails() { this->voidcall("clear_all_trails"); }
inline void TrailDrawer::clear_trail(Node3D n) { this->voidcall("clear_trail", n); }

#endif
