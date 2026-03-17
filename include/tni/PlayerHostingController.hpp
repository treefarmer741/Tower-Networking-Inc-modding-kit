#ifndef TNI_API_HEADER_PLAYERHOSTINGCONTROLLER
#define TNI_API_HEADER_PLAYERHOSTINGCONTROLLER
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PlayerHostingController : public Node {
	using Node::Node;

	constexpr PlayerHostingController(Node base) : Node{base} {}
	constexpr PlayerHostingController(uint64_t addr) : Node{addr} {}
	constexpr PlayerHostingController(Object obj) : PlayerHostingController{obj.address()} {}
	PlayerHostingController(Variant variant) : PlayerHostingController{variant.as_object().address()} {}

	PROPERTY(ph_scn, Variant);  // Const value type was not supported.

	PROPERTY(mpspawn, MultiplayerSpawner);
	PROPERTY(registered_fqdns, Variant);
	PROPERTY(player_hostings, Variant);

	inline PlayerHosting get_ph(String fqdn);
	inline void reset_for_day();
	inline void populate_bill_breakdown(Variant breakdown);
	inline int64_t get_projected_domain_registration_cost(double _ppu, String use_spec_csv);
	inline void register_player_hosting(String fqdn, String use_spec_csv, double ppu);
	inline void deregister_player_hosting(Variant fqdn);
};

#include "PlayerHosting.hpp"

inline PlayerHosting PlayerHostingController::get_ph(String fqdn) { return PlayerHosting(operator()("get_ph", fqdn).as_object().address()); }
inline void PlayerHostingController::reset_for_day() { voidcall("reset_for_day"); }
inline void PlayerHostingController::populate_bill_breakdown(Variant breakdown) { voidcall("populate_bill_breakdown", breakdown); }
inline int64_t PlayerHostingController::get_projected_domain_registration_cost(double _ppu, String use_spec_csv) { return operator()("get_projected_domain_registration_cost", _ppu, use_spec_csv); }
inline void PlayerHostingController::register_player_hosting(String fqdn, String use_spec_csv, double ppu) { voidcall("register_player_hosting", fqdn, use_spec_csv, ppu); }
inline void PlayerHostingController::deregister_player_hosting(Variant fqdn) { voidcall("deregister_player_hosting", fqdn); }

#endif
