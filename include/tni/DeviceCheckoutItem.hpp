#ifndef TNI_API_HEADER_DEVICECHECKOUTITEM
#define TNI_API_HEADER_DEVICECHECKOUTITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DeviceCheckoutItem : public Container {
	using Container::Container;

	constexpr DeviceCheckoutItem(Container base) : Container{base} {}
	constexpr DeviceCheckoutItem(uint64_t addr) : Container{addr} {}
	constexpr DeviceCheckoutItem(Object obj) : DeviceCheckoutItem{obj.address()} {}
	DeviceCheckoutItem(Variant variant) : DeviceCheckoutItem{variant.as_object().address()} {}


	PROPERTY(device_checkout, DeviceCheckout);

};

#include "DeviceCheckout.hpp"


#endif
