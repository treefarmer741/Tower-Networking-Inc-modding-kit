#ifndef TNI_API_HEADER_TRANSACTIONLISTITEM
#define TNI_API_HEADER_TRANSACTIONLISTITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TransactionListItem : public Container {
	using Container::Container;

	constexpr TransactionListItem(Container base) : Container{base} {}
	constexpr TransactionListItem(uint64_t addr) : Container{addr} {}
	constexpr TransactionListItem(Object obj) : TransactionListItem{obj.address()} {}
	TransactionListItem(Variant variant) : TransactionListItem{variant.as_object().address()} {}


	PROPERTY(transaction, CreditTransaction);

};

#include "CreditTransaction.hpp"


#endif
