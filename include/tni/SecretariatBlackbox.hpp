#ifndef TNI_API_HEADER_SECRETARIATBLACKBOX
#define TNI_API_HEADER_SECRETARIATBLACKBOX
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "TraversalConsume.hpp"

struct SecretariatBlackbox : public TraversalConsume {
	using TraversalConsume::TraversalConsume;

	constexpr SecretariatBlackbox(TraversalConsume base) : TraversalConsume{base} {}
	constexpr SecretariatBlackbox(uint64_t addr) : TraversalConsume{addr} {}
	constexpr SecretariatBlackbox(Object obj) : SecretariatBlackbox{obj.address()} {}
	SecretariatBlackbox(Variant variant) : SecretariatBlackbox{variant.as_object().address()} {}


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
	PROPERTY(gpu_load, int64_t);
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
	PROPERTY(gw_playopt, PlayOptions);
	PROPERTY(host_controller, LogicController);

	inline void record_censored_visit(Variant _curr_pkt);
	inline Variant produce_limit_reached(const LogicController& node);
	inline Variant compute_produce_limit(const LogicController& node);
	inline NetworkPacketRoot make_packet_root();
	inline Variant make_traversal_packet(const NetworkPacketRoot& proot);
	inline void tick();
	inline void client_sim();
	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
	inline int64_t process_network_packet(const PacketControlModule& pktctl, Variant packet);
	inline bool is_pkt_for_self(Variant packet);
	inline bool test_routing_exemption(Variant packet);
};

#include "UseConfig.hpp"
#include "PlayOptions.hpp"
#include "LogicController.hpp"
#include "NetworkPacketRoot.hpp"
#include "PacketControlModule.hpp"

inline void SecretariatBlackbox::record_censored_visit(Variant _curr_pkt) { this->voidcall("record_censored_visit", _curr_pkt); }
inline Variant SecretariatBlackbox::produce_limit_reached(const LogicController& node) { return this->operator()("produce_limit_reached", Object(reinterpret_cast<const Object*>(&node)->address())); }
inline Variant SecretariatBlackbox::compute_produce_limit(const LogicController& node) { return this->operator()("compute_produce_limit", Object(reinterpret_cast<const Object*>(&node)->address())); }
inline NetworkPacketRoot SecretariatBlackbox::make_packet_root() { return NetworkPacketRoot(this->operator()("make_packet_root").as_object().address()); }
inline Variant SecretariatBlackbox::make_traversal_packet(const NetworkPacketRoot& proot) { return this->operator()("make_traversal_packet", Object(reinterpret_cast<const Object*>(&proot)->address())); }
inline void SecretariatBlackbox::tick() { this->voidcall("tick"); }
inline void SecretariatBlackbox::client_sim() { this->voidcall("client_sim"); }
inline String SecretariatBlackbox::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void SecretariatBlackbox::start() { this->voidcall("start"); }
inline void SecretariatBlackbox::stop() { this->voidcall("stop"); }
inline void SecretariatBlackbox::uninstall() { this->voidcall("uninstall"); }
inline void SecretariatBlackbox::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline int64_t SecretariatBlackbox::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline bool SecretariatBlackbox::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }
inline bool SecretariatBlackbox::test_routing_exemption(Variant packet) { return this->operator()("test_routing_exemption", packet); }

#endif
