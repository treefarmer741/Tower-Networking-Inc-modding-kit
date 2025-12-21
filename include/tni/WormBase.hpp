#ifndef TNI_API_HEADER_WORMBASE
#define TNI_API_HEADER_WORMBASE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct WormBase : public Node {
	using Node::Node;

	constexpr WormBase(Node base) : Node{base} {}
	constexpr WormBase(uint64_t addr) : Node{addr} {}
	constexpr WormBase(Object obj) : WormBase{obj.address()} {}
	WormBase(Variant variant) : WormBase{variant.as_object().address()} {}


	PROPERTY(release_name_template, String);
	PROPERTY(max_spread_per_tick, int64_t);
	PROPERTY(signature, String);
	PROPERTY(vulnerable_device_types, Variant);
	PROPERTY(incubation_cycles, int64_t);
	PROPERTY(incubation_ctr, int64_t);
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

#include "LogicController.hpp"
#include "LogicControllerSocket.hpp"
#include "TraversalContext.hpp"
#include "PacketControlModule.hpp"

inline bool WormBase::check_routability(LogicController from_node, LogicControllerSocket via_port, TraversalContext context) { return operator()("check_routability", from_node, via_port, context); }
inline Variant WormBase::check_filter_passage(LogicController next_node, TraversalContext context) { return operator()("check_filter_passage", next_node, context); }
inline bool WormBase::check_traversibility(TraversalContext context, LogicController from_node, Variant via_port, Variant current_depth) { return operator()("check_traversibility", context, from_node, via_port, current_depth); }
inline int64_t WormBase::precallback_process(TraversalContext context, LogicController node, Variant via_port, Variant current_index, Variant current_depth) { return operator()("precallback_process", context, node, via_port, current_index, current_depth); }
inline void WormBase::tick() { voidcall("tick"); }
inline String WormBase::colorize_description(String ds) { return operator()("colorize_description", ds); }
inline void WormBase::start() { voidcall("start"); }
inline void WormBase::stop() { voidcall("stop"); }
inline void WormBase::uninstall() { voidcall("uninstall"); }
inline void WormBase::install(Variant _install_opts) { voidcall("install", _install_opts); }
inline void WormBase::process_network_packet(PacketControlModule pktctl, Variant packet) { voidcall("process_network_packet", pktctl, packet); }

#endif
