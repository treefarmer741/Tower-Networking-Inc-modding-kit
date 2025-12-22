#ifndef TNI_API_HEADER_PIECHART
#define TNI_API_HEADER_PIECHART
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Piechart : public Sprite2D {
	using Sprite2D::Sprite2D;

	constexpr Piechart(Sprite2D base) : Sprite2D{base} {}
	constexpr Piechart(uint64_t addr) : Sprite2D{addr} {}
	constexpr Piechart(Object obj) : Piechart{obj.address()} {}
	Piechart(Variant variant) : Piechart{variant.as_object().address()} {}


	PROPERTY(pie_sprite, Variant);
	PROPERTY(relative_size, double);
	PROPERTY(blur_strength, double);
	PROPERTY(label_text_color, Variant);
	PROPERTY(legend_text_color, Variant);
	PROPERTY(use_segment_color_for_labels, bool);
	PROPERTY(use_segment_color_for_legend, bool);
	PROPERTY(show_legend, bool);
	PROPERTY(legend_position, Variant);
	PROPERTY(legend_position_preset, int64_t);
	PROPERTY(legend_font_size, int64_t);
	PROPERTY(legend_item_spacing, double);
	PROPERTY(show_table, bool);
	PROPERTY(table_position_preset, int64_t);
	PROPERTY(table_position, Variant);
	PROPERTY(table_font_size, int64_t);
	PROPERTY(table_row_height, double);
	PROPERTY(table_padding, double);
	PROPERTY(table_header_enabled, bool);
	PROPERTY(table_sort_by_value, bool);
	PROPERTY(table_background_color, Variant);
	PROPERTY(table_border_color, Variant);
	PROPERTY(table_header_color, Variant);
	PROPERTY(table_alternate_row_color, Variant);
	PROPERTY(segment_names, Variant);
	PROPERTY(segment_values, Variant);
	PROPERTY(segment_colors, Variant);
	PROPERTY(table_container, Control);
	PROPERTY(legend_container, Control);

	inline void generate_segment_colors();
	inline void set_segments(Variant names, Variant values, Variant colors);
	inline Variant process_top_segments(Variant names, Variant values, Variant colors);
	inline void update_pie_chart();
	inline void add_percentage_table();
	inline Variant format_number(Variant num);
	inline void add_legend();
	inline void clear_labels();
};


inline void Piechart::generate_segment_colors() { voidcall("generate_segment_colors"); }
inline void Piechart::set_segments(Variant names, Variant values, Variant colors) { voidcall("set_segments", names, values, colors); }
inline Variant Piechart::process_top_segments(Variant names, Variant values, Variant colors) { return operator()("process_top_segments", names, values, colors); }
inline void Piechart::update_pie_chart() { voidcall("update_pie_chart"); }
inline void Piechart::add_percentage_table() { voidcall("add_percentage_table"); }
inline Variant Piechart::format_number(Variant num) { return operator()("format_number", num); }
inline void Piechart::add_legend() { voidcall("add_legend"); }
inline void Piechart::clear_labels() { voidcall("clear_labels"); }

#endif
