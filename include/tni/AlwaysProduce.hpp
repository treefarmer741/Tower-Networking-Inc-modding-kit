#ifndef TNI_API_HEADER_ALWAYSPRODUCE
#define TNI_API_HEADER_ALWAYSPRODUCE
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Program.hpp"

struct AlwaysProduce : public Program {
	using Program::Program;

	constexpr AlwaysProduce(Program base) : Program{base} {}
	constexpr AlwaysProduce(uint64_t addr) : Program{addr} {}
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

	inline Variant get_produce_limit(int64_t limit_type, int64_t lfact, const LogicController& node, int64_t pfact);
	inline Variant compute_produce_limit(const LogicController& node);
	inline void tick();
	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
	inline bool process_network_packet(const PacketControlModule& pktctl, Variant packet);
	inline bool is_pkt_for_self(Variant packet);
};

#include "UseConfig.hpp"
#include "LogicController.hpp"
#include "PacketControlModule.hpp"

inline Variant AlwaysProduce::get_produce_limit(int64_t limit_type, int64_t lfact, const LogicController& node, int64_t pfact) { return this->operator()("get_produce_limit", limit_type, lfact, Object(reinterpret_cast<const Object*>(&node)->address()), pfact); }
inline Variant AlwaysProduce::compute_produce_limit(const LogicController& node) { return this->operator()("compute_produce_limit", Object(reinterpret_cast<const Object*>(&node)->address())); }
inline void AlwaysProduce::tick() { this->voidcall("tick"); }
inline String AlwaysProduce::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void AlwaysProduce::start() { this->voidcall("start"); }
inline void AlwaysProduce::stop() { this->voidcall("stop"); }
inline void AlwaysProduce::uninstall() { this->voidcall("uninstall"); }
inline void AlwaysProduce::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline bool AlwaysProduce::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline bool AlwaysProduce::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }

#endif
