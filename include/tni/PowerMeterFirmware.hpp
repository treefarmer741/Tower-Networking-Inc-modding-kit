#ifndef TNI_API_HEADER_POWERMETERFIRMWARE
#define TNI_API_HEADER_POWERMETERFIRMWARE
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PowerMeterFirmware : public Node {
	using Node::Node;

	constexpr PowerMeterFirmware(Node base) : Node{base} {}
	constexpr PowerMeterFirmware(uint64_t addr) : Node{addr} {}
	constexpr PowerMeterFirmware(Object obj) : PowerMeterFirmware{obj.address()} {}
	PowerMeterFirmware(Variant variant) : PowerMeterFirmware{variant.as_object().address()} {}


	PROPERTY(cumulative_kwh, double);
	PROPERTY(cpu_load, int64_t);
	PROPERTY(code_size, int64_t);
	PROPERTY(stack_size, int64_t);
	PROPERTY(release_name, String);
	PROPERTY(description, String);
	PROPERTY(modifiers, Variant);
	PROPERTY(application_unlocks, Variant);
	PROPERTY(required_hardware_device, Variant);
	PROPERTY(data_size, int64_t);
	PROPERTY(install_size, int64_t);
	PROPERTY(rendered_description, String);
	PROPERTY(pkt_processing_priority, int64_t);
	PROPERTY(is_running, bool);
	PROPERTY(host_controller, LogicController);

	inline void tick();
	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
	inline bool process_network_packet(PacketControlModule pktctl, Variant packet);
};

#include "LogicController.hpp"
#include "PacketControlModule.hpp"

inline void PowerMeterFirmware::tick() { voidcall("tick"); }
inline String PowerMeterFirmware::colorize_description(String ds) { return operator()("colorize_description", ds); }
inline void PowerMeterFirmware::start() { voidcall("start"); }
inline void PowerMeterFirmware::stop() { voidcall("stop"); }
inline void PowerMeterFirmware::uninstall() { voidcall("uninstall"); }
inline void PowerMeterFirmware::install(Variant _install_opts) { voidcall("install", _install_opts); }
inline bool PowerMeterFirmware::process_network_packet(PacketControlModule pktctl, Variant packet) { return operator()("process_network_packet", pktctl, packet); }

#endif
