#ifndef TNI_API_HEADER_CREDITTRANSACTION
#define TNI_API_HEADER_CREDITTRANSACTION
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct CreditTransaction : public Object {
	using Object::Object;

	constexpr CreditTransaction(Object base) : Object{base} {}
	constexpr CreditTransaction(uint64_t addr) : Object{addr} {}
	CreditTransaction(Variant variant) : CreditTransaction{variant.as_object().address()} {}

	enum Category : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		UNKNOWN = 0,
		INCOME = 1,
		CAPEX = 2,
		OPEX = 3,
		PETTY = 4,
		LOAN = 5,
		INTEREST = 6,
		INVESTMENT = 7,
		DONATION = 8,
		PROPOSAL_PROCESSING = 9,
		TRADING = 10,
		AGGREGATED = 11,
		PENALTY = 12,
	};

	PROPERTY(amount, int64_t);
	PROPERTY(details, String);
	PROPERTY(date, int64_t);
	PROPERTY(category, int64_t);

	inline String serialize();
	inline CreditTransaction from_json(String jsonstr);
};

#include "CreditTransaction.hpp"

inline String CreditTransaction::serialize() { return operator()("serialize"); }
inline CreditTransaction CreditTransaction::from_json(String jsonstr) { return CreditTransaction(operator()("from_json", jsonstr).as_object().address()); }

#endif
