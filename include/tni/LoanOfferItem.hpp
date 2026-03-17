#ifndef TNI_API_HEADER_LOANOFFERITEM
#define TNI_API_HEADER_LOANOFFERITEM
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LoanOfferItem : public Container {
	using Container::Container;

	constexpr LoanOfferItem(Container base) : Container{base} {}
	constexpr LoanOfferItem(uint64_t addr) : Container{addr} {}
	constexpr LoanOfferItem(Object obj) : LoanOfferItem{obj.address()} {}
	LoanOfferItem(Variant variant) : LoanOfferItem{variant.as_object().address()} {}


	PROPERTY(loan_package, CreditLoan);

};

#include "CreditLoan.hpp"


#endif
