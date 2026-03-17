#ifndef TNI_API_HEADER_CHARBOD3DNAV
#define TNI_API_HEADER_CHARBOD3DNAV
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Charbod3dNav : public NavigationAgent3D {
	using NavigationAgent3D::NavigationAgent3D;

	constexpr Charbod3dNav(NavigationAgent3D base) : NavigationAgent3D{base} {}
	constexpr Charbod3dNav(uint64_t addr) : NavigationAgent3D{addr} {}
	constexpr Charbod3dNav(Object obj) : Charbod3dNav{obj.address()} {}
	Charbod3dNav(Variant variant) : Charbod3dNav{variant.as_object().address()} {}

	enum NavAssistMotionMode : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		DISABLED = 0,
		SPROTO = 1,
		ALIGNMENT = 2,
	};

	PROPERTY(sproto_controls_enabled, bool);
	PROPERTY(sproto_speed, double);
	PROPERTY(sproto_rotation_speed, double);
	PROPERTY(alignment_rotation_speed, double);
	PROPERTY(alignment_speed, double);
	PROPERTY(motion_mode, int64_t);
	PROPERTY(cbod3, CharacterBody3D);
	PROPERTY(motion_target_direction, Variant);
	PROPERTY(motion_target_y_rotation, double);
	PROPERTY(is_facing_target, bool);
	PROPERTY(alignment_target_quat, Variant);
	PROPERTY(alignment_target_position, Variant);

	inline void issue_sp_move_order(Variant tpos);
	inline void stop_sp_move_order();
	inline void align_to_target(Variant target_transform, bool ignore_direction);
};


inline void Charbod3dNav::issue_sp_move_order(Variant tpos) { voidcall("issue_sp_move_order", tpos); }
inline void Charbod3dNav::stop_sp_move_order() { voidcall("stop_sp_move_order"); }
inline void Charbod3dNav::align_to_target(Variant target_transform, bool ignore_direction) { voidcall("align_to_target", target_transform, ignore_direction); }

#endif
