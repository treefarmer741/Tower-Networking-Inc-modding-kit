#ifndef TNI_API_HEADER_SECRETARIATAUDITCONTROLLER
#define TNI_API_HEADER_SECRETARIATAUDITCONTROLLER
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "RandomEvent.hpp"

struct SecretariatAuditController : public RandomEvent {
	using RandomEvent::RandomEvent;

	constexpr SecretariatAuditController(RandomEvent base) : RandomEvent{base} {}
	constexpr SecretariatAuditController(uint64_t addr) : RandomEvent{addr} {}
	constexpr SecretariatAuditController(Object obj) : SecretariatAuditController{obj.address()} {}
	SecretariatAuditController(Variant variant) : SecretariatAuditController{variant.as_object().address()} {}


	PROPERTY(base_fine, int64_t);
	PROPERTY(fine_escalation, double);
	PROPERTY(audit_share_base, double);
	PROPERTY(audit_share_per_floor, double);
	PROPERTY(audit_share_max, double);
	PROPERTY(audit_floors_per_catch, int64_t);
	PROPERTY(catch_count, int64_t);
	PROPERTY(min_trial_period_seconds, double);
	PROPERTY(max_trial_period_seconds, double);
	PROPERTY(occurence_rate, double);
	PROPERTY(enabled, bool);
	PROPERTY(trial_timer, Timer);

	inline void start();
	inline void pause();
};


inline void SecretariatAuditController::start() { this->voidcall("start"); }
inline void SecretariatAuditController::pause() { this->voidcall("pause"); }

#endif
