#ifndef TNI_API_HEADER_COPODATTACKTHEMECONTROLLER
#define TNI_API_HEADER_COPODATTACKTHEMECONTROLLER
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "CoPodAttackController.hpp"

struct CopodAttackThemeController : public CoPodAttackController {
	using CoPodAttackController::CoPodAttackController;

	constexpr CopodAttackThemeController(CoPodAttackController base) : CoPodAttackController{base} {}
	constexpr CopodAttackThemeController(uint64_t addr) : CoPodAttackController{addr} {}
	constexpr CopodAttackThemeController(Object obj) : CopodAttackThemeController{obj.address()} {}
	CopodAttackThemeController(Variant variant) : CopodAttackThemeController{variant.as_object().address()} {}


	PROPERTY(target_theme_affinity, ThemeConfig);
	PROPERTY(activation_tech, String);
	PROPERTY(attack_title, String);
	PROPERTY(min_warn_seconds, int64_t);
	PROPERTY(max_warn_seconds, int64_t);
	PROPERTY(min_attack_seconds, int64_t);
	PROPERTY(max_attack_seconds, int64_t);
	PROPERTY(attack_traffic_class, String);
	PROPERTY(attack_traffic_weight, int64_t);
	PROPERTY(attack_satiety_damage, double);
	PROPERTY(attack_poll_seconds, double);
	PROPERTY(discovery_poll_seconds, double);
	PROPERTY(occurrence_rate_factor, double);
	PROPERTY(min_group_size, int64_t);
	PROPERTY(max_group_size_factor, double);
	PROPERTY(max_group_size_cap, int64_t);
	PROPERTY(min_trial_period_seconds, double);
	PROPERTY(max_trial_period_seconds, double);
	PROPERTY(occurence_rate, double);
	PROPERTY(enabled, bool);
	PROPERTY(trial_timer, Timer);

	inline void time_mult_updated(double time_mult_delta);
	inline void start();
	inline void pause();
};

#include "ThemeConfig.hpp"

inline void CopodAttackThemeController::time_mult_updated(double time_mult_delta) { this->voidcall("time_mult_updated", time_mult_delta); }
inline void CopodAttackThemeController::start() { this->voidcall("start"); }
inline void CopodAttackThemeController::pause() { this->voidcall("pause"); }

#endif
