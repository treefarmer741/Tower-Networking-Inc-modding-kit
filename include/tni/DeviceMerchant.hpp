#ifndef TNI_API_HEADER_DEVICEMERCHANT
#define TNI_API_HEADER_DEVICEMERCHANT
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Merchant.hpp"

struct DeviceMerchant : public Merchant {
	using Merchant::Merchant;

	constexpr DeviceMerchant(Merchant base) : Merchant{base} {}
	constexpr DeviceMerchant(uint64_t addr) : Merchant{addr} {}
	constexpr DeviceMerchant(Object obj) : DeviceMerchant{obj.address()} {}
	DeviceMerchant(Variant variant) : DeviceMerchant{variant.as_object().address()} {}

	enum RESTOCK_MODE : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		FILL = 0,
	};

	PROPERTY(restock_period, double);
	PROPERTY(restock_mode, int64_t);
	PROPERTY(entry_max_stocks, int64_t);
	PROPERTY(price_multiplier, double);
	PROPERTY(price_add_constant, int64_t);
	PROPERTY(warranty_multiplier, double);
	PROPERTY(warranty_add_constant, int64_t);
	PROPERTY(listings, Variant);
	PROPERTY(display_name, String);
	PROPERTY(description, String);
	PROPERTY(display_image, Texture2D);

	inline bool submit_order(Variant order_list, int64_t delivery_floor);
	inline void restock();
};


inline bool DeviceMerchant::submit_order(Variant order_list, int64_t delivery_floor) { return this->operator()("submit_order", order_list, delivery_floor); }
inline void DeviceMerchant::restock() { this->voidcall("restock"); }

#endif
