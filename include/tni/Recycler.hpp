#ifndef TNI_API_HEADER_RECYCLER
#define TNI_API_HEADER_RECYCLER
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Recycler : public Node2D {
	using Node2D::Node2D;

	constexpr Recycler(Node2D base) : Node2D{base} {}
	constexpr Recycler(uint64_t addr) : Node2D{addr} {}
	constexpr Recycler(Object obj) : Recycler{obj.address()} {}
	Recycler(Variant variant) : Recycler{variant.as_object().address()} {}


	PROPERTY(objcount_lbl, Label);
	PROPERTY(cashdisp_lbl, Label);
	PROPERTY(lowz_sprite, Sprite2D);
	PROPERTY(highz_sprite, Sprite2D);
	PROPERTY(aplayer, AnimationPlayer);
	PROPERTY(clickpoly, Polygon2D);
	PROPERTY(cargo, Variant);
	PROPERTY(recycle_cashout_now, int64_t);

	inline void update_trolley_devices(Variant tcar);
	inline void recycle_objects_in_cargo();
	inline Variant debug_monitor_callback();
};


inline void Recycler::update_trolley_devices(Variant tcar) { voidcall("update_trolley_devices", tcar); }
inline void Recycler::recycle_objects_in_cargo() { voidcall("recycle_objects_in_cargo"); }
inline Variant Recycler::debug_monitor_callback() { return operator()("debug_monitor_callback"); }

#endif
