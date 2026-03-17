#ifndef TNI_API_HEADER_ALWAYSPRODUCE
#define TNI_API_HEADER_ALWAYSPRODUCE
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct AlwaysProduce : public Node {
	using Node::Node;

	constexpr AlwaysProduce(Node base) : Node{base} {}
	constexpr AlwaysProduce(uint64_t addr) : Node{addr} {}
	constexpr AlwaysProduce(Object obj) : AlwaysProduce{obj.address()} {}
	AlwaysProduce(Variant variant) : AlwaysProduce{variant.as_object().address()} {}

	enum ProduceLimitType : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		LIMITED_BY_PRODUCE_FACTOR = 0,
		LIMITED_BY_TARGET_FREE_MEMORY = 1,
		LIMITED_BY_LIMIT_FACTOR = 2,
		LIMITED_BY_TARGET_TOTAL_MEM = 3,
		LIMITED_BY_TARGET_TOTAL_CPU = 4,
		LIMITED_BY_TARGET_TOTAL_STORAGE = 5,
	};

	PROPERTY(produce_use_config, UseConfig);
	PROPERTY(produce_factor, int64_t);
	PROPERTY(produce_limit_type, int64_t);
	PROPERTY(limit_factor, int64_t);
	PROPERTY(produced_last_tick, int64_t);
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

	inline Variant get_produce_limit(int64_t limit_type, int64_t lfact, LogicController node, int64_t pfact);
	inline Variant compute_produce_limit(LogicController node);
	inline void tick();
	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
	inline bool process_network_packet(PacketControlModule pktctl, Variant packet);
};

#include "UseConfig.hpp"
#include "LogicController.hpp"
#include "PacketControlModule.hpp"

inline Variant AlwaysProduce::get_produce_limit(int64_t limit_type, int64_t lfact, LogicController node, int64_t pfact) { return operator()("get_produce_limit", limit_type, lfact, node, pfact); }
inline Variant AlwaysProduce::compute_produce_limit(LogicController node) { return operator()("compute_produce_limit", node); }
inline void AlwaysProduce::tick() { voidcall("tick"); }
inline String AlwaysProduce::colorize_description(String ds) { return operator()("colorize_description", ds); }
inline void AlwaysProduce::start() { voidcall("start"); }
inline void AlwaysProduce::stop() { voidcall("stop"); }
inline void AlwaysProduce::uninstall() { voidcall("uninstall"); }
inline void AlwaysProduce::install(Variant _install_opts) { voidcall("install", _install_opts); }
inline bool AlwaysProduce::process_network_packet(PacketControlModule pktctl, Variant packet) { return operator()("process_network_packet", pktctl, packet); }

#endif
