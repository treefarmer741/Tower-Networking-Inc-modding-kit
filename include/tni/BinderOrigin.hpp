#ifndef TNI_API_HEADER_BINDERORIGIN
#define TNI_API_HEADER_BINDERORIGIN
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct BinderOrigin : public Node3D {
	using Node3D::Node3D;

	constexpr BinderOrigin(Node3D base) : Node3D{base} {}
	constexpr BinderOrigin(uint64_t addr) : Node3D{addr} {}
	constexpr BinderOrigin(Object obj) : BinderOrigin{obj.address()} {}
	BinderOrigin(Variant variant) : BinderOrigin{variant.as_object().address()} {}


	PROPERTY(origin_joint, PinJoint3D);
	PROPERTY(link_scn, PackedScene);
	PROPERTY(unspooling_marker, Node3D);
	PROPERTY(links, Variant);
	PROPERTY(head_link, Variant);
	PROPERTY(total_links, Variant);
	PROPERTY(is_pinning_a_link, bool);

	inline Variant make_link();
	inline void unspool(double time_f);
	inline void spool(double time_f);
	inline void bind_object_to_head(PhysicsBody3D phyb3do, Variant global_bind_point);
	inline void unbind_head();
	inline void free_links();
	inline void unbind_anchor();
	inline void bind_anchor(PhysicsBody3D phyb3do);
	inline void make_and_bind_segments_instantly(PhysicsBody3D p3b, Variant global_dst_point);
};


inline Variant BinderOrigin::make_link() { return this->operator()("make_link"); }
inline void BinderOrigin::unspool(double time_f) { this->voidcall("unspool", time_f); }
inline void BinderOrigin::spool(double time_f) { this->voidcall("spool", time_f); }
inline void BinderOrigin::bind_object_to_head(PhysicsBody3D phyb3do, Variant global_bind_point) { this->voidcall("bind_object_to_head", phyb3do, global_bind_point); }
inline void BinderOrigin::unbind_head() { this->voidcall("unbind_head"); }
inline void BinderOrigin::free_links() { this->voidcall("free_links"); }
inline void BinderOrigin::unbind_anchor() { this->voidcall("unbind_anchor"); }
inline void BinderOrigin::bind_anchor(PhysicsBody3D phyb3do) { this->voidcall("bind_anchor", phyb3do); }
inline void BinderOrigin::make_and_bind_segments_instantly(PhysicsBody3D p3b, Variant global_dst_point) { this->voidcall("make_and_bind_segments_instantly", p3b, global_dst_point); }

#endif
