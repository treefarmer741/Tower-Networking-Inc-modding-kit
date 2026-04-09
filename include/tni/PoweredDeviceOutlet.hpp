#ifndef TNI_API_HEADER_POWEREDDEVICEOUTLET
#define TNI_API_HEADER_POWEREDDEVICEOUTLET
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "DeviceOutlet.hpp"

struct PoweredDeviceOutlet : public DeviceOutlet {
	using DeviceOutlet::DeviceOutlet;

	constexpr PoweredDeviceOutlet(DeviceOutlet base) : DeviceOutlet{base} {}
	constexpr PoweredDeviceOutlet(uint64_t addr) : DeviceOutlet{addr} {}
	constexpr PoweredDeviceOutlet(Object obj) : PoweredDeviceOutlet{obj.address()} {}
	PoweredDeviceOutlet(Variant variant) : PoweredDeviceOutlet{variant.as_object().address()} {}


	PROPERTY(outlet_name, String);
	PROPERTY(logic_controller, LogicController);
	PROPERTY(device_hardware_class, int64_t);
	PROPERTY(socket, Socket);
	PROPERTY(floor_num, int64_t);

	inline Variant debug_monitor_callback();
};

#include "LogicController.hpp"
#include "Socket.hpp"

inline Variant PoweredDeviceOutlet::debug_monitor_callback() { return this->operator()("debug_monitor_callback"); }

#endif
