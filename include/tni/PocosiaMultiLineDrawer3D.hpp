#ifndef TNI_API_HEADER_POCOSIAMULTILINEDRAWER3D
#define TNI_API_HEADER_POCOSIAMULTILINEDRAWER3D
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct PocosiaMultiLineDrawer3D : public MeshInstance3D {
	using MeshInstance3D::MeshInstance3D;

	constexpr PocosiaMultiLineDrawer3D(MeshInstance3D base) : MeshInstance3D{base} {}
	constexpr PocosiaMultiLineDrawer3D(uint64_t addr) : MeshInstance3D{addr} {}
	constexpr PocosiaMultiLineDrawer3D(Object obj) : PocosiaMultiLineDrawer3D{obj.address()} {}
	PocosiaMultiLineDrawer3D(Variant variant) : PocosiaMultiLineDrawer3D{variant.as_object().address()} {}


	PROPERTY(redraw_frame_interval, int64_t);
	PROPERTY(ref_points, Variant);

	inline void redraw();
	inline void clear_all_lines();
	inline void clear_line(Variant ref);
	inline void draw_line(Variant ref, Variant global_a, Variant global_b, double thickness, Variant color);
	inline Variant get_references();
};


inline void PocosiaMultiLineDrawer3D::redraw() { this->voidcall("redraw"); }
inline void PocosiaMultiLineDrawer3D::clear_all_lines() { this->voidcall("clear_all_lines"); }
inline void PocosiaMultiLineDrawer3D::clear_line(Variant ref) { this->voidcall("clear_line", ref); }
inline void PocosiaMultiLineDrawer3D::draw_line(Variant ref, Variant global_a, Variant global_b, double thickness, Variant color) { this->voidcall("draw_line", ref, global_a, global_b, thickness, color); }
inline Variant PocosiaMultiLineDrawer3D::get_references() { return this->operator()("get_references"); }

#endif
