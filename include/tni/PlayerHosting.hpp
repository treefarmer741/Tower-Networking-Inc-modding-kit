#ifndef TNI_API_HEADER_PLAYERHOSTING
#define TNI_API_HEADER_PLAYERHOSTING
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PlayerHosting : public Node {
	using Node::Node;

	constexpr PlayerHosting(Node base) : Node{base} {}
	constexpr PlayerHosting(uint64_t addr) : Node{addr} {}
	constexpr PlayerHosting(Object obj) : PlayerHosting{obj.address()} {}
	PlayerHosting(Variant variant) : PlayerHosting{variant.as_object().address()} {}


	PROPERTY(fqdn, String);
	PROPERTY(use_spec_csv, String);
	PROPERTY(ppu, double);
	PROPERTY(registration_cost, int64_t);
	PROPERTY(today_visit_count, int64_t);
	PROPERTY(historical_visit_count, int64_t);
	PROPERTY(thm_spec_csv, String);
	PROPERTY(today_payment, double);
	PROPERTY(registered_on_day, int64_t);
	PROPERTY(payment_today, int64_t);

	inline void account_visit(int64_t n);
	inline String get_fqdn();
	inline void reset_for_day();
	inline void update_ppu(double new_ppu);
};


inline void PlayerHosting::account_visit(int64_t n) { voidcall("account_visit", n); }
inline String PlayerHosting::get_fqdn() { return operator()("get_fqdn"); }
inline void PlayerHosting::reset_for_day() { voidcall("reset_for_day"); }
inline void PlayerHosting::update_ppu(double new_ppu) { voidcall("update_ppu", new_ppu); }

#endif
