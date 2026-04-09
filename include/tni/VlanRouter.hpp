#ifndef TNI_API_HEADER_VLANROUTER
#define TNI_API_HEADER_VLANROUTER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Program.hpp"

struct VlanRouter : public Program {
	using Program::Program;

	constexpr VlanRouter(Program base) : Program{base} {}
	constexpr VlanRouter(uint64_t addr) : Program{addr} {}
	constexpr VlanRouter(Object obj) : VlanRouter{obj.address()} {}
	VlanRouter(Variant variant) : VlanRouter{variant.as_object().address()} {}


	PROPERTY(vlanctl, VLANControlModule);
	PROPERTY(routectl, RouteControlModule);
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

	inline bool process_network_packet(const PacketControlModule& pktctl, Variant packet);
	inline void tick();
	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
	inline bool is_pkt_for_self(Variant packet);
};

#include "VLANControlModule.hpp"
#include "RouteControlModule.hpp"
#include "LogicController.hpp"
#include "PacketControlModule.hpp"

inline bool VlanRouter::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline void VlanRouter::tick() { this->voidcall("tick"); }
inline String VlanRouter::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void VlanRouter::start() { this->voidcall("start"); }
inline void VlanRouter::stop() { this->voidcall("stop"); }
inline void VlanRouter::uninstall() { this->voidcall("uninstall"); }
inline void VlanRouter::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline bool VlanRouter::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }

#endif
