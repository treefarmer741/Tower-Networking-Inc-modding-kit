#ifndef TNI_API_HEADER_POCOSIALABELLEDHSLIDER
#define TNI_API_HEADER_POCOSIALABELLEDHSLIDER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PocosiaLabelledHSlider : public HSlider {
	using HSlider::HSlider;

	constexpr PocosiaLabelledHSlider(HSlider base) : HSlider{base} {}
	constexpr PocosiaLabelledHSlider(uint64_t addr) : HSlider{addr} {}
	constexpr PocosiaLabelledHSlider(Object obj) : PocosiaLabelledHSlider{obj.address()} {}
	PocosiaLabelledHSlider(Variant variant) : PocosiaLabelledHSlider{variant.as_object().address()} {}


	PROPERTY(display_label_np, NodePath);
	PROPERTY(display_label, Label);

};



#endif
