#ifndef TNI_API_HEADER_SECRETARIATLOBBYAGAINST
#define TNI_API_HEADER_SECRETARIATLOBBYAGAINST
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "PropMod.hpp"

struct SecretariatLobbyAgainst : public PropMod {
	using PropMod::PropMod;

	constexpr SecretariatLobbyAgainst(PropMod base) : PropMod{base} {}
	constexpr SecretariatLobbyAgainst(uint64_t addr) : PropMod{addr} {}
	constexpr SecretariatLobbyAgainst(Object obj) : SecretariatLobbyAgainst{obj.address()} {}
	SecretariatLobbyAgainst(Variant variant) : SecretariatLobbyAgainst{variant.as_object().address()} {}

	static constexpr double DECENTRO_WORM_RATE_FACTOR = 0.75;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(merchant_scene, PackedScene);
	PROPERTY(spawn_floors, Variant);
	PROPERTY(submitted, bool);
	PROPERTY(locked, bool);
	PROPERTY(depends_on, PropMod);
	PROPERTY(disallow_proposal_if_depends_submitted, bool);
	PROPERTY(icon_texture, Texture2D);
	PROPERTY(can_be_proposed_beginning, int64_t);
	PROPERTY(disabled_due_to_config_errors, bool);
	PROPERTY(weight, int64_t);
	PROPERTY(proposed_on, int64_t);
	PROPERTY(force_once_on_day, int64_t);
	PROPERTY(can_be_proposed, bool);
	PROPERTY(is_active_proposal, bool);

	inline void apply_mod();
	inline void activate_local_effects();
	inline Variant test_adhoc_requirements();
	inline String get_proposal_name();
	inline String get_lore();
	inline String get_description();
	inline String get_unlock_condition_description();
	inline void submit_and_apply();
	inline void update_state();
	inline String get_tiered_display_name();
};

#include "PropMod.hpp"

inline void SecretariatLobbyAgainst::apply_mod() { this->voidcall("apply_mod"); }
inline void SecretariatLobbyAgainst::activate_local_effects() { this->voidcall("activate_local_effects"); }
inline Variant SecretariatLobbyAgainst::test_adhoc_requirements() { return this->operator()("test_adhoc_requirements"); }
inline String SecretariatLobbyAgainst::get_proposal_name() { return this->operator()("get_proposal_name"); }
inline String SecretariatLobbyAgainst::get_lore() { return this->operator()("get_lore"); }
inline String SecretariatLobbyAgainst::get_description() { return this->operator()("get_description"); }
inline String SecretariatLobbyAgainst::get_unlock_condition_description() { return this->operator()("get_unlock_condition_description"); }
inline void SecretariatLobbyAgainst::submit_and_apply() { this->voidcall("submit_and_apply"); }
inline void SecretariatLobbyAgainst::update_state() { this->voidcall("update_state"); }
inline String SecretariatLobbyAgainst::get_tiered_display_name() { return this->operator()("get_tiered_display_name"); }

#endif
