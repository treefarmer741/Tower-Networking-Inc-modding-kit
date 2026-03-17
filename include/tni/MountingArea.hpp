#ifndef TNI_API_HEADER_MOUNTINGAREA
#define TNI_API_HEADER_MOUNTINGAREA
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MountingArea : public Area2D {
	using Area2D::Area2D;

	constexpr MountingArea(Area2D base) : Area2D{base} {}
	constexpr MountingArea(uint64_t addr) : Area2D{addr} {}
	constexpr MountingArea(Object obj) : MountingArea{obj.address()} {}
	MountingArea(Variant variant) : MountingArea{variant.as_object().address()} {}


	PROPERTY(compatible_mounting, int64_t);
	PROPERTY(sliding_sfx, NodePath);
	PROPERTY(bdr, NodePath);
	PROPERTY(hr, ColorRect);
	PROPERTY(ext_db_tracker, Variant);

	inline Variant test_containment_and_compat(DeviceUnit dubod);
	inline void play_sfx_slide_in();
	inline void play_sfx_slide_out();
	inline void show_hr();
	inline void hide_hr();
	inline Variant compatible_with(DeviceUnit du);
};

#include "DeviceUnit.hpp"

inline Variant MountingArea::test_containment_and_compat(DeviceUnit dubod) { return operator()("test_containment_and_compat", dubod); }
inline void MountingArea::play_sfx_slide_in() { voidcall("play_sfx_slide_in"); }
inline void MountingArea::play_sfx_slide_out() { voidcall("play_sfx_slide_out"); }
inline void MountingArea::show_hr() { voidcall("show_hr"); }
inline void MountingArea::hide_hr() { voidcall("hide_hr"); }
inline Variant MountingArea::compatible_with(DeviceUnit du) { return operator()("compatible_with", du); }

#endif
