#ifndef TNI_API_HEADER_POCOSIAMOTENTRIGID3D
#define TNI_API_HEADER_POCOSIAMOTENTRIGID3D
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PocosiaMotEntRigid3D : public RigidBody3D {
	using RigidBody3D::RigidBody3D;

	constexpr PocosiaMotEntRigid3D(RigidBody3D base) : RigidBody3D{base} {}
	constexpr PocosiaMotEntRigid3D(uint64_t addr) : RigidBody3D{addr} {}
	constexpr PocosiaMotEntRigid3D(Object obj) : PocosiaMotEntRigid3D{obj.address()} {}
	PocosiaMotEntRigid3D(Variant variant) : PocosiaMotEntRigid3D{variant.as_object().address()} {}

	static constexpr double motcol_hit_mag = 0.5;  // NOTE: You should recompile your mod if this value changes!
	enum MotionDecision : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		NOTHING = 0,
		JUMP = 1,
		CLIMB = 2,
	};

	PROPERTY(motion_damp_factor, double);
	PROPERTY(motion_force_magnitude, double);
	PROPERTY(motion_stop_threshold, double);
	PROPERTY(treat_area_as_obstacles, bool);
	PROPERTY(main_cs_np, NodePath);
	PROPERTY(motion_noprogress_giveup_enabled, bool);
	PROPERTY(motion_noprogress_giveup_duration, double);
	PROPERTY(motion_noprogress_giveup_tolerance, double);
	PROPERTY(look_follow_speed, double);
	PROPERTY(angular_damp_factor, double);
	PROPERTY(climb_force_magnitude, double);
	PROPERTY(motion_target_position, Variant);
	PROPERTY(has_motion_target, bool);
	PROPERTY(look_follow_target_position, Variant);
	PROPERTY(has_look_follow_target, bool);
	PROPERTY(is_on_platform, bool);
	PROPERTY(shape, Shape3D);
	PROPERTY(height, double);
	PROPERTY(radius, double);

	inline void set_motion_target(Variant new_target);
	inline void stop_motion();
	inline void set_look_follow_target(Variant new_target);
	inline void stop_look_follow();
	inline Variant test_motion(PhysicsDirectSpaceState3D space_state, Variant ray_dir_uv);
	inline Variant get_additional_obstacle_exclusion();
	inline Variant test_ray_hit(PhysicsDirectSpaceState3D space_state, Variant ray_dir_uv, double ray_height_adjust);
	inline void look_follow(PhysicsDirectBodyState3D state, Variant current_transform, Variant target_position);
};


inline void PocosiaMotEntRigid3D::set_motion_target(Variant new_target) { voidcall("set_motion_target", new_target); }
inline void PocosiaMotEntRigid3D::stop_motion() { voidcall("stop_motion"); }
inline void PocosiaMotEntRigid3D::set_look_follow_target(Variant new_target) { voidcall("set_look_follow_target", new_target); }
inline void PocosiaMotEntRigid3D::stop_look_follow() { voidcall("stop_look_follow"); }
inline Variant PocosiaMotEntRigid3D::test_motion(PhysicsDirectSpaceState3D space_state, Variant ray_dir_uv) { return operator()("test_motion", space_state, ray_dir_uv); }
inline Variant PocosiaMotEntRigid3D::get_additional_obstacle_exclusion() { return operator()("get_additional_obstacle_exclusion"); }
inline Variant PocosiaMotEntRigid3D::test_ray_hit(PhysicsDirectSpaceState3D space_state, Variant ray_dir_uv, double ray_height_adjust) { return operator()("test_ray_hit", space_state, ray_dir_uv, ray_height_adjust); }
inline void PocosiaMotEntRigid3D::look_follow(PhysicsDirectBodyState3D state, Variant current_transform, Variant target_position) { voidcall("look_follow", state, current_transform, target_position); }

#endif
