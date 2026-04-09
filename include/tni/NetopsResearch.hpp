#ifndef TNI_API_HEADER_NETOPSRESEARCH
#define TNI_API_HEADER_NETOPSRESEARCH
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "PropMod.hpp"

struct NetopsResearch : public PropMod {
	using PropMod::PropMod;

	constexpr NetopsResearch(PropMod base) : PropMod{base} {}
	constexpr NetopsResearch(uint64_t addr) : PropMod{addr} {}
	constexpr NetopsResearch(Object obj) : NetopsResearch{obj.address()} {}
	NetopsResearch(Variant variant) : NetopsResearch{variant.as_object().address()} {}

	inline static const String techv = "netops_v1";  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(cost, int64_t);
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
	inline String get_proposal_name();
	inline String get_lore();
	inline String get_description();
	inline Variant test_adhoc_requirements();
	inline void submit_and_apply();
	inline void update_state();
};

#include "PropMod.hpp"

inline void NetopsResearch::apply_mod() { this->voidcall("apply_mod"); }
inline void NetopsResearch::activate_local_effects() { this->voidcall("activate_local_effects"); }
inline String NetopsResearch::get_proposal_name() { return this->operator()("get_proposal_name"); }
inline String NetopsResearch::get_lore() { return this->operator()("get_lore"); }
inline String NetopsResearch::get_description() { return this->operator()("get_description"); }
inline Variant NetopsResearch::test_adhoc_requirements() { return this->operator()("test_adhoc_requirements"); }
inline void NetopsResearch::submit_and_apply() { this->voidcall("submit_and_apply"); }
inline void NetopsResearch::update_state() { this->voidcall("update_state"); }

#endif
