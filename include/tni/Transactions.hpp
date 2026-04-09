#ifndef TNI_API_HEADER_TRANSACTIONS
#define TNI_API_HEADER_TRANSACTIONS
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct Transactions : public ScrollContainer {
	using ScrollContainer::ScrollContainer;

	constexpr Transactions(ScrollContainer base) : ScrollContainer{base} {}
	constexpr Transactions(uint64_t addr) : ScrollContainer{addr} {}
	constexpr Transactions(Object obj) : Transactions{obj.address()} {}
	Transactions(Variant variant) : Transactions{variant.as_object().address()} {}


	PROPERTY(transaction_updating, bool);

};



#endif
