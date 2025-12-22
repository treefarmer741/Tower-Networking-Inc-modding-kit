#ifndef TNI_API_HEADER_PHYBOD3DBINDERLINK
#define TNI_API_HEADER_PHYBOD3DBINDERLINK
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Phybod3dBinderLink : public RigidBody3D {
	using RigidBody3D::RigidBody3D;

	constexpr Phybod3dBinderLink(RigidBody3D base) : RigidBody3D{base} {}
	constexpr Phybod3dBinderLink(uint64_t addr) : RigidBody3D{addr} {}
	constexpr Phybod3dBinderLink(Object obj) : Phybod3dBinderLink{obj.address()} {}
	Phybod3dBinderLink(Variant variant) : Phybod3dBinderLink{variant.as_object().address()} {}


	PROPERTY(binder_joint, PinJoint3D);
	PROPERTY(cshape, CollisionShape3D);
	PROPERTY(global_binder_position, Variant);
	PROPERTY(length, double);
	PROPERTY(base_joint, PinJoint3D);

	inline void point_towards(Variant towards);
	inline void clear_binds();
	inline void bind(Variant node);
	inline void adjust_length(double new_length);
	inline void bind_base(Variant base_node);
};


inline void Phybod3dBinderLink::point_towards(Variant towards) { voidcall("point_towards", towards); }
inline void Phybod3dBinderLink::clear_binds() { voidcall("clear_binds"); }
inline void Phybod3dBinderLink::bind(Variant node) { voidcall("bind", node); }
inline void Phybod3dBinderLink::adjust_length(double new_length) { voidcall("adjust_length", new_length); }
inline void Phybod3dBinderLink::bind_base(Variant base_node) { voidcall("bind_base", base_node); }

#endif
