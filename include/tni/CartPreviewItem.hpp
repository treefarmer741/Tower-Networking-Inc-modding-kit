#ifndef TNI_API_HEADER_CARTPREVIEWITEM
#define TNI_API_HEADER_CARTPREVIEWITEM
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CartPreviewItem : public HBoxContainer {
	using HBoxContainer::HBoxContainer;

	constexpr CartPreviewItem(HBoxContainer base) : HBoxContainer{base} {}
	constexpr CartPreviewItem(uint64_t addr) : HBoxContainer{addr} {}
	constexpr CartPreviewItem(Object obj) : CartPreviewItem{obj.address()} {}
	CartPreviewItem(Variant variant) : CartPreviewItem{variant.as_object().address()} {}


	PROPERTY(listing_title, String);
	PROPERTY(variant, String);
	PROPERTY(quantity_text, String);
	PROPERTY(unit_price_text, String);
	PROPERTY(subtotal_text, String);
	PROPERTY(checkout_ref, DeviceCheckout);

};

#include "DeviceCheckout.hpp"


#endif
