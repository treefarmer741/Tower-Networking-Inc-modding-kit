#ifndef TNI_API_HEADER_PACKETPROCESSORSMIDDLEBOX
#define TNI_API_HEADER_PACKETPROCESSORSMIDDLEBOX
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Program.hpp"

struct PacketProcessorsMiddlebox : public Program {
	using Program::Program;

	constexpr PacketProcessorsMiddlebox(Program base) : Program{base} {}
	constexpr PacketProcessorsMiddlebox(uint64_t addr) : Program{addr} {}
	constexpr PacketProcessorsMiddlebox(Object obj) : PacketProcessorsMiddlebox{obj.address()} {}
	PacketProcessorsMiddlebox(Variant variant) : PacketProcessorsMiddlebox{variant.as_object().address()} {}


	PROPERTY(networkctl, NetworkControlModule);
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
	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
	inline void tick();
	inline bool is_pkt_for_self(Variant packet);
};

#include "NetworkControlModule.hpp"
#include "LogicController.hpp"
#include "PacketControlModule.hpp"

inline bool PacketProcessorsMiddlebox::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline String PacketProcessorsMiddlebox::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void PacketProcessorsMiddlebox::start() { this->voidcall("start"); }
inline void PacketProcessorsMiddlebox::stop() { this->voidcall("stop"); }
inline void PacketProcessorsMiddlebox::uninstall() { this->voidcall("uninstall"); }
inline void PacketProcessorsMiddlebox::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline void PacketProcessorsMiddlebox::tick() { this->voidcall("tick"); }
inline bool PacketProcessorsMiddlebox::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }

#endif
