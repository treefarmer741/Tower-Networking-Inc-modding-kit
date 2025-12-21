#ifndef TNI_API_HEADER_USERTRAVERSALP2P
#define TNI_API_HEADER_USERTRAVERSALP2P
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct UserTraversalP2P : public Node {
	using Node::Node;

	constexpr UserTraversalP2P(Node base) : Node{base} {}
	constexpr UserTraversalP2P(uint64_t addr) : Node{addr} {}
	constexpr UserTraversalP2P(Object obj) : UserTraversalP2P{obj.address()} {}
	UserTraversalP2P(Variant variant) : UserTraversalP2P{variant.as_object().address()} {}

	enum P2PMethod : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		OUT_OF_BAND_UNIFORM_RANDOM = 0,
		PRE_CONNECT_FACILITIES = 1,
	};

	PROPERTY(p2p_method, int64_t);
	PROPERTY(facility_selection_algorithm, int64_t);
	PROPERTY(user, LogicControllerUser);
	PROPERTY(satiety_weight, int64_t);
	PROPERTY(producer_satiety_change_on_consume, int64_t);
	PROPERTY(consumer_satiety_change_on_consume, int64_t);
	PROPERTY(hidden_from_surveys, bool);
	PROPERTY(will_select_player_providers, bool);
	PROPERTY(max_acceptable_ppu, double);
	PROPERTY(surveyor_dialog_target, int64_t);
	PROPERTY(add_dialog_text_on_success, bool);
	PROPERTY(dialog_text, String);
	PROPERTY(surveyor_dialog_ptype, String);
	PROPERTY(theme_affinity, ThemeConfig);
	PROPERTY(consumption_history, Variant);
	PROPERTY(successfully_consumed_this_tick, bool);
	PROPERTY(will_manifest, bool);
	PROPERTY(reqshare_accept_hash, int64_t);
	PROPERTY(reqshare_weight_index, Variant);
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

	inline void tick();
	inline void add_surveyor_msg(String msg);
	inline Variant get_compatible_hostings();
	inline Variant filter_acceptable_hostings(Variant initial_candids);
	inline void select_host_from_hostings(Variant acceptable_candidates, int64_t selection_method);
	inline Variant produce_limit_reached(LogicController node);
	inline Variant compute_produce_limit(LogicController node);
	inline bool check_routability(LogicController from_node, LogicControllerSocket via_port, TraversalContext context);
	inline Variant check_filter_passage(LogicController next_node, TraversalContext context);
	inline bool check_traversibility(TraversalContext context, LogicController from_node, Variant via_port, Variant current_depth);
	inline int64_t precallback_process(TraversalContext context, LogicController node, Variant via_port, Variant current_index, Variant current_depth);
	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
	inline void process_network_packet(PacketControlModule pktctl, Variant packet);
};

#include "LogicControllerUser.hpp"
#include "ThemeConfig.hpp"
#include "UseConfig.hpp"
#include "LogicController.hpp"
#include "LogicControllerSocket.hpp"
#include "TraversalContext.hpp"
#include "PacketControlModule.hpp"

inline void UserTraversalP2P::tick() { voidcall("tick"); }
inline void UserTraversalP2P::add_surveyor_msg(String msg) { voidcall("add_surveyor_msg", msg); }
inline Variant UserTraversalP2P::get_compatible_hostings() { return operator()("get_compatible_hostings"); }
inline Variant UserTraversalP2P::filter_acceptable_hostings(Variant initial_candids) { return operator()("filter_acceptable_hostings", initial_candids); }
inline void UserTraversalP2P::select_host_from_hostings(Variant acceptable_candidates, int64_t selection_method) { voidcall("select_host_from_hostings", acceptable_candidates, selection_method); }
inline Variant UserTraversalP2P::produce_limit_reached(LogicController node) { return operator()("produce_limit_reached", node); }
inline Variant UserTraversalP2P::compute_produce_limit(LogicController node) { return operator()("compute_produce_limit", node); }
inline bool UserTraversalP2P::check_routability(LogicController from_node, LogicControllerSocket via_port, TraversalContext context) { return operator()("check_routability", from_node, via_port, context); }
inline Variant UserTraversalP2P::check_filter_passage(LogicController next_node, TraversalContext context) { return operator()("check_filter_passage", next_node, context); }
inline bool UserTraversalP2P::check_traversibility(TraversalContext context, LogicController from_node, Variant via_port, Variant current_depth) { return operator()("check_traversibility", context, from_node, via_port, current_depth); }
inline int64_t UserTraversalP2P::precallback_process(TraversalContext context, LogicController node, Variant via_port, Variant current_index, Variant current_depth) { return operator()("precallback_process", context, node, via_port, current_index, current_depth); }
inline String UserTraversalP2P::colorize_description(String ds) { return operator()("colorize_description", ds); }
inline void UserTraversalP2P::start() { voidcall("start"); }
inline void UserTraversalP2P::stop() { voidcall("stop"); }
inline void UserTraversalP2P::uninstall() { voidcall("uninstall"); }
inline void UserTraversalP2P::install(Variant _install_opts) { voidcall("install", _install_opts); }
inline void UserTraversalP2P::process_network_packet(PacketControlModule pktctl, Variant packet) { voidcall("process_network_packet", pktctl, packet); }

#endif
