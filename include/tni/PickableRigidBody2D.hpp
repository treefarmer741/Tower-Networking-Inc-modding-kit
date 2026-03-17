#ifndef TNI_API_HEADER_PICKABLERIGIDBODY2D
#define TNI_API_HEADER_PICKABLERIGIDBODY2D
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PickableRigidBody2D : public RigidBody2D {
	using RigidBody2D::RigidBody2D;

	constexpr PickableRigidBody2D(RigidBody2D base) : RigidBody2D{base} {}
	constexpr PickableRigidBody2D(uint64_t addr) : RigidBody2D{addr} {}
	constexpr PickableRigidBody2D(Object obj) : PickableRigidBody2D{obj.address()} {}
	PickableRigidBody2D(Variant variant) : PickableRigidBody2D{variant.as_object().address()} {}

	enum PICKER_TYPE : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		MOUSE = 0,
		ATTACHED = 1,
		NONE = 2,
	};
	static constexpr int64_t PZINDEX = 2000;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double MAX_SPEED = 1200.0;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double MAX_SPEED_SQ = 1440000.0;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double MAX_COLL_SQ = 90000.0;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(scaling_twn, Tween);
	PROPERTY(picker, Variant);
	PROPERTY(pick_offset, Variant);
	PROPERTY(fixed, bool);
	PROPERTY(is_picked_by_mouse, bool);
	PROPERTY(is_picked, bool);
	PROPERTY(is_picked_by_attaching, bool);
	PROPERTY(picker_type, int64_t);

	inline void reset_child_z_index();
	inline void lift_child_z_index(int64_t base_val);
	inline Variant get_picker_type(Variant test_picker);
	inline bool pickup(Variant new_picker);
	inline bool drop(Variant impulse);
	inline void setup_teleport(Variant gpos);
};


inline void PickableRigidBody2D::reset_child_z_index() { voidcall("reset_child_z_index"); }
inline void PickableRigidBody2D::lift_child_z_index(int64_t base_val) { voidcall("lift_child_z_index", base_val); }
inline Variant PickableRigidBody2D::get_picker_type(Variant test_picker) { return operator()("get_picker_type", test_picker); }
inline bool PickableRigidBody2D::pickup(Variant new_picker) { return operator()("pickup", new_picker); }
inline bool PickableRigidBody2D::drop(Variant impulse) { return operator()("drop", impulse); }
inline void PickableRigidBody2D::setup_teleport(Variant gpos) { voidcall("setup_teleport", gpos); }

#endif
