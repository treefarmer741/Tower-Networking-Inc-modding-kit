#ifndef TNI_API_HEADER_BALANCECALC
#define TNI_API_HEADER_BALANCECALC
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct BalanceCalc : public Object {
	using Object::Object;

	constexpr BalanceCalc(Object base) : Object{base} {}
	constexpr BalanceCalc(uint64_t addr) : Object{addr} {}
	BalanceCalc(Variant variant) : BalanceCalc{variant.as_object().address()} {}

	static constexpr double GLOBAL_USER_DAILY_RATE_MULTIPLIER = 1.3;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t GLOBAL_WARRANTY_PERIOD_DAYS_PER_CYCLE = 7;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t GLOBAL_HWGENERATION_DAYS_PER_CYCLE = 7;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t GLOBAL_SLOTPACK_MIN = 3;  // NOTE: You should recompile your mod if this value changes!


	inline int64_t auto_calculate_logic_controller_powerload(int64_t device_hardware_class, LogicController target_controller);
	inline int64_t auto_calculate_device_installed_bw(DeviceUnit du_with_lgctl);
};

#include "LogicController.hpp"
#include "DeviceUnit.hpp"

inline int64_t BalanceCalc::auto_calculate_logic_controller_powerload(int64_t device_hardware_class, LogicController target_controller) { return operator()("auto_calculate_logic_controller_powerload", device_hardware_class, target_controller); }
inline int64_t BalanceCalc::auto_calculate_device_installed_bw(DeviceUnit du_with_lgctl) { return operator()("auto_calculate_device_installed_bw", du_with_lgctl); }

#endif
