#ifndef TNI_API_HEADER_DEVICECHECKOUT
#define TNI_API_HEADER_DEVICECHECKOUT
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DeviceCheckout : public RefCounted {
	using RefCounted::RefCounted;

	constexpr DeviceCheckout(RefCounted base) : RefCounted{base} {}
	constexpr DeviceCheckout(uint64_t addr) : RefCounted{addr} {}
	constexpr DeviceCheckout(Object obj) : DeviceCheckout{obj.address()} {}
	DeviceCheckout(Variant variant) : DeviceCheckout{variant.as_object().address()} {}


	PROPERTY(listing, DeviceListing);
	PROPERTY(quantity, int64_t);
	PROPERTY(subtotal, int64_t);
	PROPERTY(varsel, String);

};

#include "DeviceListing.hpp"


#endif
