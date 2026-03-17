#ifndef TNI_API_HEADER_NETWORKROUTERIMPL
#define TNI_API_HEADER_NETWORKROUTERIMPL
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct NetworkRouterImpl : public Node {
	using Node::Node;

	constexpr NetworkRouterImpl(Node base) : Node{base} {}
	constexpr NetworkRouterImpl(uint64_t addr) : Node{addr} {}
	constexpr NetworkRouterImpl(Object obj) : NetworkRouterImpl{obj.address()} {}
	NetworkRouterImpl(Variant variant) : NetworkRouterImpl{variant.as_object().address()} {}


	PROPERTY(routectl, RouteControlModule);
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

	inline void tick();
	inline Variant get_longest_matched_port(Variant hc, Variant pktctl, Variant rtctl, Variant packet);
	inline bool process_network_packet(PacketControlModule pktctl, Variant packet);
	inline void update_routes_from_rip_packet(LogicController src_node_controller, LogicController hopped_node_controller, String rcpt_port_id, String src_port_id);
	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
};

#include "RouteControlModule.hpp"
#include "LogicController.hpp"
#include "PacketControlModule.hpp"

inline void NetworkRouterImpl::tick() { voidcall("tick"); }
inline Variant NetworkRouterImpl::get_longest_matched_port(Variant hc, Variant pktctl, Variant rtctl, Variant packet) { return operator()("get_longest_matched_port", hc, pktctl, rtctl, packet); }
inline bool NetworkRouterImpl::process_network_packet(PacketControlModule pktctl, Variant packet) { return operator()("process_network_packet", pktctl, packet); }
inline void NetworkRouterImpl::update_routes_from_rip_packet(LogicController src_node_controller, LogicController hopped_node_controller, String rcpt_port_id, String src_port_id) { voidcall("update_routes_from_rip_packet", src_node_controller, hopped_node_controller, rcpt_port_id, src_port_id); }
inline String NetworkRouterImpl::colorize_description(String ds) { return operator()("colorize_description", ds); }
inline void NetworkRouterImpl::start() { voidcall("start"); }
inline void NetworkRouterImpl::stop() { voidcall("stop"); }
inline void NetworkRouterImpl::uninstall() { voidcall("uninstall"); }
inline void NetworkRouterImpl::install(Variant _install_opts) { voidcall("install", _install_opts); }

#endif
