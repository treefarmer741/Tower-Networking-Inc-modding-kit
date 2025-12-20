#ifndef TNI_API_HEADER_DECENTROMARKETCONTROLLER
#define TNI_API_HEADER_DECENTROMARKETCONTROLLER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DecentroMarketController : public Node {
	using Node::Node;

	constexpr DecentroMarketController(Node base) : Node{base} {}
	constexpr DecentroMarketController(uint64_t addr) : Node{addr} {}
	constexpr DecentroMarketController(Object obj) : DecentroMarketController{obj.address()} {}
	DecentroMarketController(Variant variant) : DecentroMarketController{variant.as_object().address()} {}

	static constexpr double inverse_price_per_user = 10.0;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double price_drift = 5.0;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t price_spread_min = 1;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t price_spread_max = 50;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(fair_market_price, int64_t);
	PROPERTY(buying_price, int64_t);
	PROPERTY(selling_price, int64_t);
	PROPERTY(arbitrage_price, int64_t);
	PROPERTY(volatile_heat, int64_t);

	inline void adjust_price(Variant trade_quantity);
};


inline void DecentroMarketController::adjust_price(Variant trade_quantity) { voidcall("adjust_price", trade_quantity); }

#endif
