#ifndef TNI_API_HEADER_USERTRAVERSALP2P
#define TNI_API_HEADER_USERTRAVERSALP2P
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "UserTraversal.hpp"

struct UserTraversalP2P : public UserTraversal {
	using UserTraversal::UserTraversal;

	constexpr UserTraversalP2P(UserTraversal base) : UserTraversal{base} {}
	constexpr UserTraversalP2P(uint64_t addr) : UserTraversal{addr} {}
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
	inline Variant make_traversal_packet(const NetworkPacketRoot& proot);
	inline Variant produce_limit_reached(const LogicController& node);
	inline Variant compute_produce_limit(const LogicController& node);
	inline NetworkPacketRoot make_packet_root();
	inline void client_sim();
	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
	inline bool process_network_packet(const PacketControlModule& pktctl, Variant packet);
	inline bool is_pkt_for_self(Variant packet);
};

#include "LogicControllerUser.hpp"
#include "ThemeConfig.hpp"
#include "UseConfig.hpp"
#include "LogicController.hpp"
#include "NetworkPacketRoot.hpp"
#include "PacketControlModule.hpp"

inline void UserTraversalP2P::tick() { this->voidcall("tick"); }
inline void UserTraversalP2P::add_surveyor_msg(String msg) { this->voidcall("add_surveyor_msg", msg); }
inline Variant UserTraversalP2P::get_compatible_hostings() { return this->operator()("get_compatible_hostings"); }
inline Variant UserTraversalP2P::filter_acceptable_hostings(Variant initial_candids) { return this->operator()("filter_acceptable_hostings", initial_candids); }
inline void UserTraversalP2P::select_host_from_hostings(Variant acceptable_candidates, int64_t selection_method) { this->voidcall("select_host_from_hostings", acceptable_candidates, selection_method); }
inline Variant UserTraversalP2P::make_traversal_packet(const NetworkPacketRoot& proot) { return this->operator()("make_traversal_packet", Object(reinterpret_cast<const Object*>(&proot)->address())); }
inline Variant UserTraversalP2P::produce_limit_reached(const LogicController& node) { return this->operator()("produce_limit_reached", Object(reinterpret_cast<const Object*>(&node)->address())); }
inline Variant UserTraversalP2P::compute_produce_limit(const LogicController& node) { return this->operator()("compute_produce_limit", Object(reinterpret_cast<const Object*>(&node)->address())); }
inline NetworkPacketRoot UserTraversalP2P::make_packet_root() { return NetworkPacketRoot(this->operator()("make_packet_root").as_object().address()); }
inline void UserTraversalP2P::client_sim() { this->voidcall("client_sim"); }
inline String UserTraversalP2P::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void UserTraversalP2P::start() { this->voidcall("start"); }
inline void UserTraversalP2P::stop() { this->voidcall("stop"); }
inline void UserTraversalP2P::uninstall() { this->voidcall("uninstall"); }
inline void UserTraversalP2P::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline bool UserTraversalP2P::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline bool UserTraversalP2P::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }

#endif
