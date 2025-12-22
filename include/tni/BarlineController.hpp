#ifndef TNI_API_HEADER_BARLINECONTROLLER
#define TNI_API_HEADER_BARLINECONTROLLER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct BarlineController : public Control {
	using Control::Control;

	constexpr BarlineController(Control base) : Control{base} {}
	constexpr BarlineController(uint64_t addr) : Control{addr} {}
	constexpr BarlineController(Object obj) : BarlineController{obj.address()} {}
	BarlineController(Variant variant) : BarlineController{variant.as_object().address()} {}


	PROPERTY(chart_title, String);
	PROPERTY(x_axis_label, String);
	PROPERTY(y_axis_label_left, String);
	PROPERTY(y_axis_label_right, String);
	PROPERTY(title_font_size, int64_t);
	PROPERTY(show_right_axis, bool);
	PROPERTY(bar_width, double);
	PROPERTY(bar_spacing, double);
	PROPERTY(group_width_ratio, double);
	PROPERTY(vertical_x_labels, bool);
	PROPERTY(show_line_chart, bool);
	PROPERTY(line_color, Variant);
	PROPERTY(line_width, double);
	PROPERTY(show_line_points, bool);
	PROPERTY(line_point_radius, double);
	PROPERTY(axis_vertical_y_labels, bool);
	PROPERTY(axis_x_label_margin, double);
	PROPERTY(axis_x_label_height, double);
	PROPERTY(axis_y_label_spacing_left, double);
	PROPERTY(axis_y_label_spacing_right, double);
	PROPERTY(axis_y_label_height_left, double);
	PROPERTY(axis_y_label_height_right, double);
	PROPERTY(axis_y_tick_margin, double);
	PROPERTY(axis_y_tick_width, double);
	PROPERTY(font_size, int64_t);
	PROPERTY(show_bar_labels, bool);
	PROPERTY(show_line_labels, bool);
	PROPERTY(bar_label_format, String);
	PROPERTY(line_label_format, String);
	PROPERTY(bar_group_spacing, double);
	PROPERTY(bar_spacing_within_group, double);
	PROPERTY(group_spacing_ratio, Variant);
	PROPERTY(categories, Variant);
	PROPERTY(datasets, Variant);
	PROPERTY(line_values, Variant);
	PROPERTY(line_label, Variant);
	PROPERTY(colors, Variant);
	PROPERTY(legend_bottom_margin, Variant);

	inline void draw_text_at(Variant pos, Variant text, Variant alignment, Variant img_size);
	inline void set_data(Variant new_categories, Variant new_values, Variant new_colors, Variant new_title, Variant new_x_label, Variant new_y_label);
	inline void set_bar_data(Variant new_categories, Variant new_datasets, Variant new_colors);
	inline void set_line_data(Variant new_line_values, Variant new_line_label);
	inline void set_chart_data(Variant new_categories, Variant new_datasets, Variant new_line_values, Variant new_line_label, Variant new_colors, Variant spacing_options);
};


inline void BarlineController::draw_text_at(Variant pos, Variant text, Variant alignment, Variant img_size) { voidcall("draw_text_at", pos, text, alignment, img_size); }
inline void BarlineController::set_data(Variant new_categories, Variant new_values, Variant new_colors, Variant new_title, Variant new_x_label, Variant new_y_label) { voidcall("set_data", new_categories, new_values, new_colors, new_title, new_x_label, new_y_label); }
inline void BarlineController::set_bar_data(Variant new_categories, Variant new_datasets, Variant new_colors) { voidcall("set_bar_data", new_categories, new_datasets, new_colors); }
inline void BarlineController::set_line_data(Variant new_line_values, Variant new_line_label) { voidcall("set_line_data", new_line_values, new_line_label); }
inline void BarlineController::set_chart_data(Variant new_categories, Variant new_datasets, Variant new_line_values, Variant new_line_label, Variant new_colors, Variant spacing_options) { voidcall("set_chart_data", new_categories, new_datasets, new_line_values, new_line_label, new_colors, spacing_options); }

#endif
