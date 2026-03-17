#ifndef TNI_API_HEADER_MOUSEGRIDOVERLAY2D
#define TNI_API_HEADER_MOUSEGRIDOVERLAY2D
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MouseGridOverlay2d : public Node2D {
	using Node2D::Node2D;

	constexpr MouseGridOverlay2d(Node2D base) : Node2D{base} {}
	constexpr MouseGridOverlay2d(uint64_t addr) : Node2D{addr} {}
	constexpr MouseGridOverlay2d(Object obj) : MouseGridOverlay2d{obj.address()} {}
	MouseGridOverlay2d(Variant variant) : MouseGridOverlay2d{variant.as_object().address()} {}


	PROPERTY(grid_size, int64_t);
	PROPERTY(reveal_radius, double);
	PROPERTY(grid_color, Variant);
	PROPERTY(grid_alpha, double);
	PROPERTY(line_width, double);
	PROPERTY(fade_start, double);
	PROPERTY(segment_length, double);
	PROPERTY(mouse_pos, Variant);

	inline void draw_grid_lines(Variant top_left, Variant bottom_right);
	inline void draw_faded_line(Variant start, Variant end);
	inline double calculate_alpha(double dist);
};


inline void MouseGridOverlay2d::draw_grid_lines(Variant top_left, Variant bottom_right) { voidcall("draw_grid_lines", top_left, bottom_right); }
inline void MouseGridOverlay2d::draw_faded_line(Variant start, Variant end) { voidcall("draw_faded_line", start, end); }
inline double MouseGridOverlay2d::calculate_alpha(double dist) { return operator()("calculate_alpha", dist); }

#endif
