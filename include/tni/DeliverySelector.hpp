#ifndef TNI_API_HEADER_DELIVERYSELECTOR
#define TNI_API_HEADER_DELIVERYSELECTOR
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct DeliverySelector : public ItemList {
	using ItemList::ItemList;

	constexpr DeliverySelector(ItemList base) : ItemList{base} {}
	constexpr DeliverySelector(uint64_t addr) : ItemList{addr} {}
	constexpr DeliverySelector(Object obj) : DeliverySelector{obj.address()} {}
	DeliverySelector(Variant variant) : DeliverySelector{variant.as_object().address()} {}


	PROPERTY(dst_floor, Location);
	PROPERTY(delivery_dst, int64_t);

	inline void refresh_floorlist();
};

#include "Location.hpp"

inline void DeliverySelector::refresh_floorlist() { this->voidcall("refresh_floorlist"); }

#endif
