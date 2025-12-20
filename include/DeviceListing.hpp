#ifndef TNI_API_HEADER_DEVICELISTING
#define TNI_API_HEADER_DEVICELISTING
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DeviceListing : public Node {
	using Node::Node;

	constexpr DeviceListing(Node base) : Node{base} {}
	constexpr DeviceListing(uint64_t addr) : Node{addr} {}
	constexpr DeviceListing(Object obj) : DeviceListing{obj.address()} {}
	DeviceListing(Variant variant) : DeviceListing{variant.as_object().address()} {}

	enum VariantType : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		NO_VARIANT = 0,
		CABLE_COLOR_MODULATION_VARIANT = 1,
	};

	PROPERTY(device_scn, PackedScene);
	PROPERTY(listed_on_day, int64_t);
	PROPERTY(delisted_on_day, int64_t);
	PROPERTY(warranty_period, int64_t);
	PROPERTY(allowed_variant, int64_t);
	PROPERTY(listing_title, String);
	PROPERTY(description, String);
	PROPERTY(price, int64_t);
	PROPERTY(listing_image, Texture2D);
	PROPERTY(device_catalog_vptexture, ViewportTexture);
	PROPERTY(previous_availability, bool);
	PROPERTY(available, bool);
	PROPERTY(max_stock_override, int64_t);
	PROPERTY(max_stock, int64_t);
	PROPERTY(stock, int64_t);
	PROPERTY(sample_ref, Variant);
	PROPERTY(merchant, DeviceMerchant);
	PROPERTY(CABLE_COLOR_MODULATE_VARIANTS, Variant);

	inline void update_availability(Variant eval_day);
	inline Variant destock(int64_t n);
	inline void restock(int64_t n);
	inline void apply_variants(Variant items, String variantkey);
};

#include "DeviceMerchant.hpp"

inline void DeviceListing::update_availability(Variant eval_day) { voidcall("update_availability", eval_day); }
inline Variant DeviceListing::destock(int64_t n) { return operator()("destock", n); }
inline void DeviceListing::restock(int64_t n) { voidcall("restock", n); }
inline void DeviceListing::apply_variants(Variant items, String variantkey) { voidcall("apply_variants", items, variantkey); }

#endif
