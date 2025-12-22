#ifndef TNI_API_HEADER_BARLINECHART
#define TNI_API_HEADER_BARLINECHART
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct BarlineChart : public Node2D {
	using Node2D::Node2D;

	constexpr BarlineChart(Node2D base) : Node2D{base} {}
	constexpr BarlineChart(uint64_t addr) : Node2D{addr} {}
	constexpr BarlineChart(Object obj) : BarlineChart{obj.address()} {}
	BarlineChart(Variant variant) : BarlineChart{variant.as_object().address()} {}


	PROPERTY(bar_chart, Variant);
	PROPERTY(chart_title, String);
	PROPERTY(x_axis_label, String);
	PROPERTY(y_axis_label_left, String);
	PROPERTY(y_axis_label_right, String);
	PROPERTY(vertical_labels, bool);
	PROPERTY(vertical_y_labels, bool);
	PROPERTY(x_label_margin, double);
	PROPERTY(y_label_margin, double);
	PROPERTY(y_tick_margin, double);
	PROPERTY(categories, Variant);
	PROPERTY(show_bar_labels, bool);
	PROPERTY(show_line_labels, bool);
	PROPERTY(bar_label_format, String);
	PROPERTY(line_label_format, String);
	PROPERTY(line_color, Variant);
	PROPERTY(bar_colors, Variant);
	PROPERTY(show_line_chart, bool);

	inline void generate_dataset_colors();
	inline void setup_visual(Variant category_array, Variant bar_dataset, Variant line_values, Variant line_label);
	inline void update_chart();
};


inline void BarlineChart::generate_dataset_colors() { voidcall("generate_dataset_colors"); }
inline void BarlineChart::setup_visual(Variant category_array, Variant bar_dataset, Variant line_values, Variant line_label) { voidcall("setup_visual", category_array, bar_dataset, line_values, line_label); }
inline void BarlineChart::update_chart() { voidcall("update_chart"); }

#endif
