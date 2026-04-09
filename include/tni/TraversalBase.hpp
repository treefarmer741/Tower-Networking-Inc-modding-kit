#ifndef TNI_API_HEADER_TRAVERSALBASE
#define TNI_API_HEADER_TRAVERSALBASE
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Program.hpp"

struct TraversalBase : public Program {
	using Program::Program;

	constexpr TraversalBase(Program base) : Program{base} {}
	constexpr TraversalBase(uint64_t addr) : Program{addr} {}
	constexpr TraversalBase(Object obj) : TraversalBase{obj.address()} {}
	TraversalBase(Variant variant) : TraversalBase{variant.as_object().address()} {}

	enum Context : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		SRC_CONTROLLER = 0,
		BANDWIDTH_USED = 1,
		CONSUMED_TARGET = 2,
		DST_FQDN = 3,
		DST_LADDR = 4,
		TEST = 5,
		INDEX = 6,
		TTL = 7,
	};

	PROPERTY(traffic_class, String);
	PROPERTY(traffic_weight, int64_t);
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

	inline NetworkPacketRoot make_packet_root();
	inline Variant make_traversal_packet(const NetworkPacketRoot& proot);
	inline void tick();
	inline void client_sim();
	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
	inline bool process_network_packet(const PacketControlModule& pktctl, Variant packet);
	inline bool is_pkt_for_self(Variant packet);
};

#include "LogicController.hpp"
#include "NetworkPacketRoot.hpp"
#include "PacketControlModule.hpp"

inline NetworkPacketRoot TraversalBase::make_packet_root() { return NetworkPacketRoot(this->operator()("make_packet_root").as_object().address()); }
inline Variant TraversalBase::make_traversal_packet(const NetworkPacketRoot& proot) { return this->operator()("make_traversal_packet", Object(reinterpret_cast<const Object*>(&proot)->address())); }
inline void TraversalBase::tick() { this->voidcall("tick"); }
inline void TraversalBase::client_sim() { this->voidcall("client_sim"); }
inline String TraversalBase::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void TraversalBase::start() { this->voidcall("start"); }
inline void TraversalBase::stop() { this->voidcall("stop"); }
inline void TraversalBase::uninstall() { this->voidcall("uninstall"); }
inline void TraversalBase::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline bool TraversalBase::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline bool TraversalBase::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }

#endif
