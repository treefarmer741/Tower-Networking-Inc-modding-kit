#ifndef TNI_API_HEADER_POWERMETER
#define TNI_API_HEADER_POWERMETER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PowerMeter : public Area2D {
	using Area2D::Area2D;

	constexpr PowerMeter(Area2D base) : Area2D{base} {}
	constexpr PowerMeter(uint64_t addr) : Area2D{addr} {}
	constexpr PowerMeter(Object obj) : PowerMeter{obj.address()} {}
	PowerMeter(Variant variant) : PowerMeter{variant.as_object().address()} {}


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

inline Variant PowerMeter::debug_monitor_callback() { return operator()("debug_monitor_callback"); }
inline void PowerMeter::play_surge_effects() { voidcall("play_surge_effects"); }

#endif
