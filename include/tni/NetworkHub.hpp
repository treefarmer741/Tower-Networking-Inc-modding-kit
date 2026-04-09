#ifndef TNI_API_HEADER_NETWORKHUB
#define TNI_API_HEADER_NETWORKHUB
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Program.hpp"

struct NetworkHub : public Program {
	using Program::Program;

	constexpr NetworkHub(Program base) : Program{base} {}
	constexpr NetworkHub(uint64_t addr) : Program{addr} {}
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

	inline bool process_network_packet(const PacketControlModule& pktctl, Variant packet);
	inline void tick();
	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
	inline bool is_pkt_for_self(Variant packet);
};

#include "LogicController.hpp"
#include "PacketControlModule.hpp"

inline bool NetworkHub::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline void NetworkHub::tick() { this->voidcall("tick"); }
inline String NetworkHub::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void NetworkHub::start() { this->voidcall("start"); }
inline void NetworkHub::stop() { this->voidcall("stop"); }
inline void NetworkHub::uninstall() { this->voidcall("uninstall"); }
inline void NetworkHub::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline bool NetworkHub::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }

#endif
