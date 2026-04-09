#ifndef TNI_API_HEADER_TRAVERSALHISTORYPRODUCE
#define TNI_API_HEADER_TRAVERSALHISTORYPRODUCE
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "AlwaysProduce.hpp"

struct TraversalHistoryProduce : public AlwaysProduce {
	using AlwaysProduce::AlwaysProduce;

	constexpr TraversalHistoryProduce(AlwaysProduce base) : AlwaysProduce{base} {}
	constexpr TraversalHistoryProduce(uint64_t addr) : AlwaysProduce{addr} {}
	constexpr TraversalHistoryProduce(Object obj) : TraversalHistoryProduce{obj.address()} {}
	TraversalHistoryProduce(Variant variant) : TraversalHistoryProduce{variant.as_object().address()} {}


	PROPERTY(require_user_traffic, bool);
	PROPERTY(use_limit, int64_t);
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

	inline Variant filter_required_traffic(Variant thist);
	inline void tick();
	inline Variant get_produce_limit(int64_t limit_type, int64_t lfact, const LogicController& node, int64_t pfact);
	inline Variant compute_produce_limit(const LogicController& node);
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

inline Variant TraversalHistoryProduce::filter_required_traffic(Variant thist) { return this->operator()("filter_required_traffic", thist); }
inline void TraversalHistoryProduce::tick() { this->voidcall("tick"); }
inline Variant TraversalHistoryProduce::get_produce_limit(int64_t limit_type, int64_t lfact, const LogicController& node, int64_t pfact) { return this->operator()("get_produce_limit", limit_type, lfact, Object(reinterpret_cast<const Object*>(&node)->address()), pfact); }
inline Variant TraversalHistoryProduce::compute_produce_limit(const LogicController& node) { return this->operator()("compute_produce_limit", Object(reinterpret_cast<const Object*>(&node)->address())); }
inline String TraversalHistoryProduce::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void TraversalHistoryProduce::start() { this->voidcall("start"); }
inline void TraversalHistoryProduce::stop() { this->voidcall("stop"); }
inline void TraversalHistoryProduce::uninstall() { this->voidcall("uninstall"); }
inline void TraversalHistoryProduce::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline bool TraversalHistoryProduce::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline bool TraversalHistoryProduce::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }

#endif
