#ifndef TNI_API_HEADER_DEVICEOUTLET
#define TNI_API_HEADER_DEVICEOUTLET
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod will with updated headers may be required!

#include <api.hpp>

struct DeviceOutlet : public Area2D {
	using Area2D::Area2D;

	static const int64_t condition = 0;  // NOTE: You may need to recompile your mod if this value changes!

	DeviceOutlet(Variant variant) : DeviceOutlet{variant.as_object().address()} {}

	PROPERTY(outlet_name, String);
	PROPERTY(logic_controller, Variant);
	PROPERTY(device_hardware_class, int64_t);
	PROPERTY(socket, Variant);

	inline Variant debug_monitor_callback() { return operator()("debug_monitor_callback"); }
};

#endif
