#ifndef TNI_API_HEADER_NODE3DNAV
#define TNI_API_HEADER_NODE3DNAV
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Node3dNav : public NavigationAgent3D {
	using NavigationAgent3D::NavigationAgent3D;

	constexpr Node3dNav(NavigationAgent3D base) : NavigationAgent3D{base} {}
	constexpr Node3dNav(uint64_t addr) : NavigationAgent3D{addr} {}
	constexpr Node3dNav(Object obj) : Node3dNav{obj.address()} {}
	Node3dNav(Variant variant) : Node3dNav{variant.as_object().address()} {}


	PROPERTY(sproto_controls_enabled, bool);
	PROPERTY(sproto_speed, double);
	PROPERTY(sproto_rotation_speed, double);
	PROPERTY(sproto_avoidance, bool);
	PROPERTY(n3d, Node3D);
	PROPERTY(motion_target_direction, Variant);
	PROPERTY(motion_target_y_rotation, double);
	PROPERTY(is_facing_target, bool);

	inline void issue_move_order(Variant target);
	inline void stop_move();
};


inline void Node3dNav::issue_move_order(Variant target) { voidcall("issue_move_order", target); }
inline void Node3dNav::stop_move() { voidcall("stop_move"); }

#endif
