#ifndef TNI_API_HEADER_MERCHANTLISTITEM
#define TNI_API_HEADER_MERCHANTLISTITEM
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MerchantListItem : public Container {
	using Container::Container;

	constexpr MerchantListItem(Container base) : Container{base} {}
	constexpr MerchantListItem(uint64_t addr) : Container{addr} {}
	constexpr MerchantListItem(Object obj) : MerchantListItem{obj.address()} {}
	MerchantListItem(Variant variant) : MerchantListItem{variant.as_object().address()} {}


	PROPERTY(merchant, DeviceMerchant);

};

#include "DeviceMerchant.hpp"


#endif
