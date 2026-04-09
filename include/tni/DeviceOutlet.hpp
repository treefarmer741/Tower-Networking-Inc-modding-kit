#ifndef TNI_API_HEADER_DEVICEOUTLET
#define TNI_API_HEADER_DEVICEOUTLET
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "FixtureOutlet.hpp"

struct DeviceOutlet : public FixtureOutlet {
	using FixtureOutlet::FixtureOutlet;

	constexpr DeviceOutlet(FixtureOutlet base) : FixtureOutlet{base} {}
	constexpr DeviceOutlet(uint64_t addr) : FixtureOutlet{addr} {}
	constexpr DeviceOutlet(Object obj) : DeviceOutlet{obj.address()} {}
	DeviceOutlet(Variant variant) : DeviceOutlet{variant.as_object().address()} {}

	static constexpr int64_t condition = 0;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(outlet_name, String);
	PROPERTY(logic_controller, LogicController);
	PROPERTY(device_hardware_class, int64_t);
	PROPERTY(socket, Socket);
	PROPERTY(floor_num, int64_t);

	inline Variant debug_monitor_callback();
};

#include "LogicController.hpp"
#include "Socket.hpp"

inline Variant DeviceOutlet::debug_monitor_callback() { return this->operator()("debug_monitor_callback"); }

#endif
