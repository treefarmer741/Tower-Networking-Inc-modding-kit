#ifndef TNI_API_HEADER_TRAVERSALBASE
#define TNI_API_HEADER_TRAVERSALBASE
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TraversalBase : public Node {
	using Node::Node;

	constexpr TraversalBase(Node base) : Node{base} {}
	constexpr TraversalBase(uint64_t addr) : Node{addr} {}
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

	inline bool check_routability(LogicController from_node, LogicControllerSocket via_port, TraversalContext context);
	inline Variant check_filter_passage(LogicController next_node, TraversalContext context);
	inline bool check_traversibility(TraversalContext context, LogicController from_node, Variant via_port, Variant current_depth);
	inline int64_t precallback_process(TraversalContext context, LogicController node, Variant via_port, Variant current_index, Variant current_depth);
	inline NetworkPacketRoot make_packet_root();
	inline Variant make_traversal_packet(NetworkPacketRoot proot);
	inline void tick();
	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
	inline bool process_network_packet(PacketControlModule pktctl, Variant packet);
};

#include "LogicController.hpp"
#include "LogicControllerSocket.hpp"
#include "TraversalContext.hpp"
#include "NetworkPacketRoot.hpp"
#include "PacketControlModule.hpp"

inline bool TraversalBase::check_routability(LogicController from_node, LogicControllerSocket via_port, TraversalContext context) { return operator()("check_routability", from_node, via_port, context); }
inline Variant TraversalBase::check_filter_passage(LogicController next_node, TraversalContext context) { return operator()("check_filter_passage", next_node, context); }
inline bool TraversalBase::check_traversibility(TraversalContext context, LogicController from_node, Variant via_port, Variant current_depth) { return operator()("check_traversibility", context, from_node, via_port, current_depth); }
inline int64_t TraversalBase::precallback_process(TraversalContext context, LogicController node, Variant via_port, Variant current_index, Variant current_depth) { return operator()("precallback_process", context, node, via_port, current_index, current_depth); }
inline NetworkPacketRoot TraversalBase::make_packet_root() { return NetworkPacketRoot(operator()("make_packet_root").as_object().address()); }
inline Variant TraversalBase::make_traversal_packet(NetworkPacketRoot proot) { return operator()("make_traversal_packet", proot); }
inline void TraversalBase::tick() { voidcall("tick"); }
inline String TraversalBase::colorize_description(String ds) { return operator()("colorize_description", ds); }
inline void TraversalBase::start() { voidcall("start"); }
inline void TraversalBase::stop() { voidcall("stop"); }
inline void TraversalBase::uninstall() { voidcall("uninstall"); }
inline void TraversalBase::install(Variant _install_opts) { voidcall("install", _install_opts); }
inline bool TraversalBase::process_network_packet(PacketControlModule pktctl, Variant packet) { return operator()("process_network_packet", pktctl, packet); }

#endif
