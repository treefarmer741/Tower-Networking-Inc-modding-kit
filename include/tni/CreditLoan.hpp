#ifndef TNI_API_HEADER_CREDITLOAN
#define TNI_API_HEADER_CREDITLOAN
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct CreditLoan : public Node {
	using Node::Node;

	constexpr CreditLoan(Node base) : Node{base} {}
	constexpr CreditLoan(uint64_t addr) : Node{addr} {}
	constexpr CreditLoan(Object obj) : CreditLoan{obj.address()} {}
	CreditLoan(Variant variant) : CreditLoan{variant.as_object().address()} {}


	PROPERTY(date, int64_t);
	PROPERTY(title, String);
	PROPERTY(amount, int64_t);
	PROPERTY(daily_interest, double);
	PROPERTY(listing_image, Texture2D);
	PROPERTY(description, String);

};



#endif
