#ifndef TNI_API_HEADER_PUBLICPOWERMETER
#define TNI_API_HEADER_PUBLICPOWERMETER
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PublicPowerMeter : public Area2D {
	using Area2D::Area2D;

	constexpr PublicPowerMeter(Area2D base) : Area2D{base} {}
	constexpr PublicPowerMeter(uint64_t addr) : Area2D{addr} {}
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

inline Variant PublicPowerMeter::debug_monitor_callback() { return operator()("debug_monitor_callback"); }
inline void PublicPowerMeter::play_surge_effects() { voidcall("play_surge_effects"); }

#endif
