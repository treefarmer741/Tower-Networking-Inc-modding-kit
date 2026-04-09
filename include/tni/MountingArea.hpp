#ifndef TNI_API_HEADER_MOUNTINGAREA
#define TNI_API_HEADER_MOUNTINGAREA
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
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

	inline Variant test_containment_and_compat(const DeviceUnit& dubod);
	inline void play_sfx_slide_in();
	inline void play_sfx_slide_out();
	inline void show_hr();
	inline void hide_hr();
	inline Variant compatible_with(const DeviceUnit& du);
	inline Variant get_valid_y_bounds();
};

#include "DeviceUnit.hpp"

inline Variant MountingArea::test_containment_and_compat(const DeviceUnit& dubod) { return this->operator()("test_containment_and_compat", Object(reinterpret_cast<const Object*>(&dubod)->address())); }
inline void MountingArea::play_sfx_slide_in() { this->voidcall("play_sfx_slide_in"); }
inline void MountingArea::play_sfx_slide_out() { this->voidcall("play_sfx_slide_out"); }
inline void MountingArea::show_hr() { this->voidcall("show_hr"); }
inline void MountingArea::hide_hr() { this->voidcall("hide_hr"); }
inline Variant MountingArea::compatible_with(const DeviceUnit& du) { return this->operator()("compatible_with", Object(reinterpret_cast<const Object*>(&du)->address())); }
inline Variant MountingArea::get_valid_y_bounds() { return this->operator()("get_valid_y_bounds"); }

#endif
