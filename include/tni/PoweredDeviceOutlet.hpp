#ifndef TNI_API_HEADER_POWEREDDEVICEOUTLET
#define TNI_API_HEADER_POWEREDDEVICEOUTLET
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PoweredDeviceOutlet : public Area2D {
	using Area2D::Area2D;

	constexpr PoweredDeviceOutlet(Area2D base) : Area2D{base} {}
	constexpr PoweredDeviceOutlet(uint64_t addr) : Area2D{addr} {}
	constexpr PoweredDeviceOutlet(Object obj) : PoweredDeviceOutlet{obj.address()} {}
	PoweredDeviceOutlet(Variant variant) : PoweredDeviceOutlet{variant.as_object().address()} {}


	PROPERTY(outlet_name, String);
	PROPERTY(logic_controller, LogicController);
	PROPERTY(device_hardware_class, int64_t);
	PROPERTY(socket, Socket);

	inline Variant debug_monitor_callback();
};

#include "LogicController.hpp"
#include "Socket.hpp"

inline Variant PoweredDeviceOutlet::debug_monitor_callback() { return operator()("debug_monitor_callback"); }

#endif
