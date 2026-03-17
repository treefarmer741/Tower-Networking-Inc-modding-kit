#ifndef TNI_API_HEADER_NETWORKHUB
#define TNI_API_HEADER_NETWORKHUB
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct NetworkHub : public Node {
	using Node::Node;

	constexpr NetworkHub(Node base) : Node{base} {}
	constexpr NetworkHub(uint64_t addr) : Node{addr} {}
	constexpr NetworkHub(Object obj) : NetworkHub{obj.address()} {}
	NetworkHub(Variant variant) : NetworkHub{variant.as_object().address()} {}


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

	inline void process_network_packet(PacketControlModule pktctl, Variant packet);
	inline void tick();
	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
};

#include "LogicController.hpp"
#include "PacketControlModule.hpp"

inline void NetworkHub::process_network_packet(PacketControlModule pktctl, Variant packet) { voidcall("process_network_packet", pktctl, packet); }
inline void NetworkHub::tick() { voidcall("tick"); }
inline String NetworkHub::colorize_description(String ds) { return operator()("colorize_description", ds); }
inline void NetworkHub::start() { voidcall("start"); }
inline void NetworkHub::stop() { voidcall("stop"); }
inline void NetworkHub::uninstall() { voidcall("uninstall"); }
inline void NetworkHub::install(Variant _install_opts) { voidcall("install", _install_opts); }

#endif
