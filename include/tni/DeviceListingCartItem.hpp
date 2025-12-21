#ifndef TNI_API_HEADER_DEVICELISTINGCARTITEM
#define TNI_API_HEADER_DEVICELISTINGCARTITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DeviceListingCartItem : public Container {
	using Container::Container;

	constexpr DeviceListingCartItem(Container base) : Container{base} {}
	constexpr DeviceListingCartItem(uint64_t addr) : Container{addr} {}
	constexpr DeviceListingCartItem(Object obj) : DeviceListingCartItem{obj.address()} {}
	DeviceListingCartItem(Variant variant) : DeviceListingCartItem{variant.as_object().address()} {}


	PROPERTY(default_listing_image, Texture2D);
	PROPERTY(title_lbl, Label);
	PROPERTY(cart_lbl, Label);
	PROPERTY(descript, RichTextLabel);
	PROPERTY(picrect, TextureRect);
	PROPERTY(price_lbl, Label);
	PROPERTY(stock_lbl, Label);
	PROPERTY(add_button, Button);
	PROPERTY(varctn, Container);
	PROPERTY(varseloptbut, OptionButton);
	PROPERTY(varlbl, Label);
	PROPERTY(quantity, int64_t);
	PROPERTY(listing, DeviceListing);
	PROPERTY(varsel, String);

};

#include "DeviceListing.hpp"


#endif
