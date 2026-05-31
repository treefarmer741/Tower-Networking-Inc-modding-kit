#ifndef TNI_API_HEADER_PROGRAM
#define TNI_API_HEADER_PROGRAM
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct Program : public Node {
	using Node::Node;

	constexpr Program(Node base) : Node{base} {}
	constexpr Program(uint64_t addr) : Node{addr} {}
	constexpr Program(Object obj) : Program{obj.address()} {}
	Program(Variant variant) : Program{variant.as_object().address()} {}

	static constexpr int64_t CONFIG_SIZE = 1;  // NOTE: You should recompile your mod if this value changes!
	inline static const String PROG_DESCRIPT_COLOR = "FFB82F";  // NOTE: You should recompile your mod if this value changes!
	enum ControllerModifiers : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		ALLOW_REMOTE_DEBUGGING = 0,
		ALLOW_PACKET_SWITCHING = 1,
		ALLOW_PACKET_ROUTING = 2,
		ALLOW_PACKET_INSPECTION = 3,
		ALLOW_PACKET_FILTERING = 4,
		ALLOW_DOMAIN_QUERYING = 5,
		ALLOW_REMOTE_HOST_CONFIGURATION = 6,
		ALLOW_HIGH_AVAILABILITY_SETUP = 7,
		ALLOW_DECENTRO_STORAGE = 8,
		ALLOW_DECENTRO_TRADING = 9,
		ALLOW_VLAN_TAGGING = 10,
		ALLOW_TRAFFIC_SPLITTING = 11,
		ALLOW_STP_PORT_CONTROL = 12,
		ALLOW_PACKET_TRANSLATION = 13,
	};

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

	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
	inline void tick();
	inline bool process_network_packet(const PacketControlModule& pktctl, Variant packet);
	inline bool is_pkt_for_self(Variant packet);
};

#include "LogicController.hpp"
#include "PacketControlModule.hpp"

inline String Program::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void Program::start() { this->voidcall("start"); }
inline void Program::stop() { this->voidcall("stop"); }
inline void Program::uninstall() { this->voidcall("uninstall"); }
inline void Program::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline void Program::tick() { this->voidcall("tick"); }
inline bool Program::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline bool Program::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }

#endif
