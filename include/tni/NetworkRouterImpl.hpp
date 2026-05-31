#ifndef TNI_API_HEADER_NETWORKROUTERIMPL
#define TNI_API_HEADER_NETWORKROUTERIMPL
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Program.hpp"

struct NetworkRouterImpl : public Program {
	using Program::Program;

	constexpr NetworkRouterImpl(Program base) : Program{base} {}
	constexpr NetworkRouterImpl(uint64_t addr) : Program{addr} {}
	constexpr NetworkRouterImpl(Object obj) : NetworkRouterImpl{obj.address()} {}
	NetworkRouterImpl(Variant variant) : NetworkRouterImpl{variant.as_object().address()} {}

	inline static const String SCAN_BYPASS_RDATA = "debugger scan with bypass";  // NOTE: You should recompile your mod if this value changes!

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
	inline bool process_network_packet(const PacketControlModule& pktctl, Variant packet);
	inline void update_routes_from_rip_packet(const LogicController& src_node_controller, const LogicController& hopped_node_controller, String rcpt_port_id, String src_port_id);
	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
	inline bool is_pkt_for_self(Variant packet);
};

#include "RouteControlModule.hpp"
#include "LogicController.hpp"
#include "PacketControlModule.hpp"

inline void NetworkRouterImpl::tick() { this->voidcall("tick"); }
inline Variant NetworkRouterImpl::get_longest_matched_port(Variant hc, Variant pktctl, Variant rtctl, Variant packet) { return this->operator()("get_longest_matched_port", hc, pktctl, rtctl, packet); }
inline bool NetworkRouterImpl::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline void NetworkRouterImpl::update_routes_from_rip_packet(const LogicController& src_node_controller, const LogicController& hopped_node_controller, String rcpt_port_id, String src_port_id) { this->voidcall("update_routes_from_rip_packet", Object(reinterpret_cast<const Object*>(&src_node_controller)->address()), Object(reinterpret_cast<const Object*>(&hopped_node_controller)->address()), rcpt_port_id, src_port_id); }
inline String NetworkRouterImpl::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void NetworkRouterImpl::start() { this->voidcall("start"); }
inline void NetworkRouterImpl::stop() { this->voidcall("stop"); }
inline void NetworkRouterImpl::uninstall() { this->voidcall("uninstall"); }
inline void NetworkRouterImpl::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline bool NetworkRouterImpl::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }

#endif
