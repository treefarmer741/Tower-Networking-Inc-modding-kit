#ifndef TNI_API_HEADER_DEVICEOUTLET
#define TNI_API_HEADER_DEVICEOUTLET
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DeviceOutlet : public Area2D {
	using Area2D::Area2D;

	constexpr DeviceOutlet(Area2D base) : Area2D{base} {}
	constexpr DeviceOutlet(uint64_t addr) : Area2D{addr} {}
	constexpr DeviceOutlet(Object obj) : DeviceOutlet{obj.address()} {}
	DeviceOutlet(Variant variant) : DeviceOutlet{variant.as_object().address()} {}

	static constexpr int64_t condition = 0;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(outlet_name, String);
	PROPERTY(logic_controller, LogicController);
	PROPERTY(device_hardware_class, int64_t);
	PROPERTY(socket, Socket);

	inline Variant debug_monitor_callback();
};

#include "LogicController.hpp"
#include "Socket.hpp"

inline Variant DeviceOutlet::debug_monitor_callback() { return operator()("debug_monitor_callback"); }

#endif
