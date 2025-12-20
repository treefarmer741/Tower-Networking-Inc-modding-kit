#ifndef TNI_API_HEADER_PLACEHOLDERDUMMYGIZMO3D
#define TNI_API_HEADER_PLACEHOLDERDUMMYGIZMO3D
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PlaceholderDummyGizmo3D : public Object {
	using Object::Object;

	constexpr PlaceholderDummyGizmo3D(Object base) : Object{base} {}
	constexpr PlaceholderDummyGizmo3D(uint64_t addr) : Object{addr} {}
	PlaceholderDummyGizmo3D(Variant variant) : PlaceholderDummyGizmo3D{variant.as_object().address()} {}


	PROPERTY(name, String);

	inline void set_gizmo_value(Variant v, double _unused_normal_factor);
};


inline void PlaceholderDummyGizmo3D::set_gizmo_value(Variant v, double _unused_normal_factor) { voidcall("set_gizmo_value", v, _unused_normal_factor); }

#endif
