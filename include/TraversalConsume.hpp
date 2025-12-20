#ifndef TNI_API_HEADER_TRAVERSALCONSUME
#define TNI_API_HEADER_TRAVERSALCONSUME
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TraversalConsume : public Node {
	using Node::Node;

	constexpr TraversalConsume(Node base) : Node{base} {}
	constexpr TraversalConsume(uint64_t addr) : Node{addr} {}
	constexpr TraversalConsume(Object obj) : TraversalConsume{obj.address()} {}
	TraversalConsume(Variant variant) : TraversalConsume{variant.as_object().address()} {}

	enum ProductTarget : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		SOURCE = 0,
		DESTINATION = 1,
	};
	enum ConversionPolicy : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		SKIP_CONSUME_ON_HOST_IF_LIMIT_REACHED = 0,
		ALWAYS_CONSUME_REGARDLESS_OF_PRODUCE_LIMIT = 1,
	};
	enum ConsumptionPolicy : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		ALL_OR_NOTHING = 0,
		FRAGMENTED_USE_ALLOWED = 1,
	};

	PROPERTY(produce_use_config, UseConfig);
	PROPERTY(produce_target, int64_t);
	PROPERTY(produce_factor, int64_t);
	PROPERTY(conversion_policy, int64_t);
	PROPERTY(produce_limit_type, int64_t);
	PROPERTY(limit_factor, int64_t);
	PROPERTY(consumption_policy, int64_t);
	PROPERTY(consume_use_config, UseConfig);
	PROPERTY(consume_factor, int64_t);
	PROPERTY(allow_localhost_consumption, bool);
	PROPERTY(allow_user_consumption, bool);
	PROPERTY(produced_last_tick, int64_t);
	PROPERTY(will_produce, bool);
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

	inline Variant produce_limit_reached(LogicController node);
	inline Variant compute_produce_limit(LogicController node);
	inline bool check_routability(LogicController from_node, LogicControllerSocket via_port, TraversalContext context);
	inline Variant check_filter_passage(LogicController next_node, TraversalContext context);
	inline bool check_traversibility(TraversalContext context, LogicController from_node, Variant via_port, Variant current_depth);
	inline int64_t precallback_process(TraversalContext context, LogicController node, Variant via_port, Variant current_index, Variant current_depth);
	inline void tick();
	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
	inline void process_network_packet(PacketControlModule pktctl, Variant packet);
};

#include "UseConfig.hpp"
#include "LogicController.hpp"
#include "LogicControllerSocket.hpp"
#include "TraversalContext.hpp"
#include "PacketControlModule.hpp"

inline Variant TraversalConsume::produce_limit_reached(LogicController node) { return operator()("produce_limit_reached", node); }
inline Variant TraversalConsume::compute_produce_limit(LogicController node) { return operator()("compute_produce_limit", node); }
inline bool TraversalConsume::check_routability(LogicController from_node, LogicControllerSocket via_port, TraversalContext context) { return operator()("check_routability", from_node, via_port, context); }
inline Variant TraversalConsume::check_filter_passage(LogicController next_node, TraversalContext context) { return operator()("check_filter_passage", next_node, context); }
inline bool TraversalConsume::check_traversibility(TraversalContext context, LogicController from_node, Variant via_port, Variant current_depth) { return operator()("check_traversibility", context, from_node, via_port, current_depth); }
inline int64_t TraversalConsume::precallback_process(TraversalContext context, LogicController node, Variant via_port, Variant current_index, Variant current_depth) { return operator()("precallback_process", context, node, via_port, current_index, current_depth); }
inline void TraversalConsume::tick() { voidcall("tick"); }
inline String TraversalConsume::colorize_description(String ds) { return operator()("colorize_description", ds); }
inline void TraversalConsume::start() { voidcall("start"); }
inline void TraversalConsume::stop() { voidcall("stop"); }
inline void TraversalConsume::uninstall() { voidcall("uninstall"); }
inline void TraversalConsume::install(Variant _install_opts) { voidcall("install", _install_opts); }
inline void TraversalConsume::process_network_packet(PacketControlModule pktctl, Variant packet) { voidcall("process_network_packet", pktctl, packet); }

#endif
