#ifndef TNI_API_HEADER_BARCHARTCONTROLLER
#define TNI_API_HEADER_BARCHARTCONTROLLER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct BarchartController : public Control {
	using Control::Control;

	constexpr BarchartController(Control base) : Control{base} {}
	constexpr BarchartController(uint64_t addr) : Control{addr} {}
	constexpr BarchartController(Object obj) : BarchartController{obj.address()} {}
	BarchartController(Variant variant) : BarchartController{variant.as_object().address()} {}


	PROPERTY(chart_title, String);
	PROPERTY(x_axis_label, String);
	PROPERTY(y_axis_label, String);
	PROPERTY(bar_width, double);
	PROPERTY(bar_spacing, double);
	PROPERTY(font_size, int64_t);
	PROPERTY(use_sample_data, bool);
	PROPERTY(categories, Variant);
	PROPERTY(values, Variant);
	PROPERTY(colors, Variant);

	inline void set_data(Variant new_categories, Variant new_values, Variant new_colors);
};


inline void BarchartController::set_data(Variant new_categories, Variant new_values, Variant new_colors) { voidcall("set_data", new_categories, new_values, new_colors); }

#endif
