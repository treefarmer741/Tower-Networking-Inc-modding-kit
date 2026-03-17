#ifndef TNI_API_HEADER_TRAVERSALHISTORYPRODUCE
#define TNI_API_HEADER_TRAVERSALHISTORYPRODUCE
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TraversalHistoryProduce : public Node {
	using Node::Node;

	constexpr TraversalHistoryProduce(Node base) : Node{base} {}
	constexpr TraversalHistoryProduce(uint64_t addr) : Node{addr} {}
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
	inline Variant get_produce_limit(int64_t limit_type, int64_t lfact, LogicController node, int64_t pfact);
	inline Variant compute_produce_limit(LogicController node);
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

inline Variant TraversalHistoryProduce::filter_required_traffic(Variant thist) { return operator()("filter_required_traffic", thist); }
inline void TraversalHistoryProduce::tick() { voidcall("tick"); }
inline Variant TraversalHistoryProduce::get_produce_limit(int64_t limit_type, int64_t lfact, LogicController node, int64_t pfact) { return operator()("get_produce_limit", limit_type, lfact, node, pfact); }
inline Variant TraversalHistoryProduce::compute_produce_limit(LogicController node) { return operator()("compute_produce_limit", node); }
inline String TraversalHistoryProduce::colorize_description(String ds) { return operator()("colorize_description", ds); }
inline void TraversalHistoryProduce::start() { voidcall("start"); }
inline void TraversalHistoryProduce::stop() { voidcall("stop"); }
inline void TraversalHistoryProduce::uninstall() { voidcall("uninstall"); }
inline void TraversalHistoryProduce::install(Variant _install_opts) { voidcall("install", _install_opts); }
inline bool TraversalHistoryProduce::process_network_packet(PacketControlModule pktctl, Variant packet) { return operator()("process_network_packet", pktctl, packet); }

#endif
