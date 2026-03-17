#ifndef TNI_API_HEADER_LOANCONTROLLER
#define TNI_API_HEADER_LOANCONTROLLER
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LoanController : public Node {
	using Node::Node;

	constexpr LoanController(Node base) : Node{base} {}
	constexpr LoanController(uint64_t addr) : Node{addr} {}
	constexpr LoanController(Object obj) : LoanController{obj.address()} {}
	LoanController(Variant variant) : LoanController{variant.as_object().address()} {}


	PROPERTY(offered_loan_packages, Variant);
	PROPERTY(maximum_active_loans, int64_t);
	PROPERTY(player_loans, Variant);
	PROPERTY(current_active_loans, int64_t);
	PROPERTY(total_owed, int64_t);
	PROPERTY(total_interest, int64_t);

	inline void populate_interest_breakdown(Variant payment_breakdown);
	inline void disburse_player_loan(int64_t pkgidx);
	inline void broadcast_financial_updates();
	inline void repay_player_loan(String loan_name);
};


inline void LoanController::populate_interest_breakdown(Variant payment_breakdown) { voidcall("populate_interest_breakdown", payment_breakdown); }
inline void LoanController::disburse_player_loan(int64_t pkgidx) { voidcall("disburse_player_loan", pkgidx); }
inline void LoanController::broadcast_financial_updates() { voidcall("broadcast_financial_updates"); }
inline void LoanController::repay_player_loan(String loan_name) { voidcall("repay_player_loan", loan_name); }

#endif
