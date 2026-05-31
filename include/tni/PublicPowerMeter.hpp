#ifndef TNI_API_HEADER_PUBLICPOWERMETER
#define TNI_API_HEADER_PUBLICPOWERMETER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "PowerMeter.hpp"

struct PublicPowerMeter : public PowerMeter {
	using PowerMeter::PowerMeter;

	constexpr PublicPowerMeter(PowerMeter base) : PowerMeter{base} {}
	constexpr PublicPowerMeter(uint64_t addr) : PowerMeter{addr} {}
	constexpr PublicPowerMeter(Object obj) : PublicPowerMeter{obj.address()} {}
	PublicPowerMeter(Variant variant) : PublicPowerMeter{variant.as_object().address()} {}


	PROPERTY(fine_lbl, Label);
	PROPERTY(fine_threshold_kwh, double);
	PROPERTY(metering_target, PowerController);
	PROPERTY(kwh_price_ratio_base, int64_t);
	PROPERTY(title, String);
	PROPERTY(kwh_now, double);
	PROPERTY(kwh_price_ratio, int64_t);
	PROPERTY(payment_title, String);
	PROPERTY(bill_due, int64_t);
	PROPERTY(logic_controller, LogicController);
	PROPERTY(power_controller, PowerController);

	inline Variant debug_monitor_callback();
	inline void play_surge_effects();
};

#include "PowerController.hpp"
#include "LogicController.hpp"

inline Variant PublicPowerMeter::debug_monitor_callback() { return this->operator()("debug_monitor_callback"); }
inline void PublicPowerMeter::play_surge_effects() { this->voidcall("play_surge_effects"); }

#endif
