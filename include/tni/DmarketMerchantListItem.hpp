#ifndef TNI_API_HEADER_DMARKETMERCHANTLISTITEM
#define TNI_API_HEADER_DMARKETMERCHANTLISTITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DmarketMerchantListItem : public Container {
	using Container::Container;

	constexpr DmarketMerchantListItem(Container base) : Container{base} {}
	constexpr DmarketMerchantListItem(uint64_t addr) : Container{addr} {}
	constexpr DmarketMerchantListItem(Object obj) : DmarketMerchantListItem{obj.address()} {}
	DmarketMerchantListItem(Variant variant) : DmarketMerchantListItem{variant.as_object().address()} {}


	PROPERTY(merchant, DeviceMerchant);
	PROPERTY(namelbl, Label);
	PROPERTY(trect, TextureRect);
	PROPERTY(desclbl, RichTextLabel);
	PROPERTY(but, Button);

};

#include "DeviceMerchant.hpp"


#endif
