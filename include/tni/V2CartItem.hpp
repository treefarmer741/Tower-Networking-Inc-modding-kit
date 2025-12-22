#ifndef TNI_API_HEADER_V2CARTITEM
#define TNI_API_HEADER_V2CARTITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct V2CartItem : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr V2CartItem(PanelContainer base) : PanelContainer{base} {}
	constexpr V2CartItem(uint64_t addr) : PanelContainer{addr} {}
	constexpr V2CartItem(Object obj) : V2CartItem{obj.address()} {}
	V2CartItem(Variant variant) : V2CartItem{variant.as_object().address()} {}


	PROPERTY(cart_ref, Variant);
	PROPERTY(merchant_cart_ref, Variant);
	PROPERTY(listing_ref, DeviceListing);
	PROPERTY(listing_merchant_ref, DeviceMerchant);
	PROPERTY(checkout_item_ref, DeviceCheckout);

	inline void update_cart_count();
};

#include "DeviceListing.hpp"
#include "DeviceMerchant.hpp"
#include "DeviceCheckout.hpp"

inline void V2CartItem::update_cart_count() { voidcall("update_cart_count"); }

#endif
