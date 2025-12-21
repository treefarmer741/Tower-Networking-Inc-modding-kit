#ifndef TNI_API_HEADER_DONOTHING
#define TNI_API_HEADER_DONOTHING
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DoNothing : public Node {
	using Node::Node;

	constexpr DoNothing(Node base) : Node{base} {}
	constexpr DoNothing(uint64_t addr) : Node{addr} {}
	constexpr DoNothing(Object obj) : DoNothing{obj.address()} {}
	DoNothing(Variant variant) : DoNothing{variant.as_object().address()} {}


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
	inline void process_network_packet(PacketControlModule pktctl, Variant packet);
};

#include "LogicController.hpp"
#include "PacketControlModule.hpp"

inline void DoNothing::tick() { voidcall("tick"); }
inline String DoNothing::colorize_description(String ds) { return operator()("colorize_description", ds); }
inline void DoNothing::start() { voidcall("start"); }
inline void DoNothing::stop() { voidcall("stop"); }
inline void DoNothing::uninstall() { voidcall("uninstall"); }
inline void DoNothing::install(Variant _install_opts) { voidcall("install", _install_opts); }
inline void DoNothing::process_network_packet(PacketControlModule pktctl, Variant packet) { voidcall("process_network_packet", pktctl, packet); }

#endif
