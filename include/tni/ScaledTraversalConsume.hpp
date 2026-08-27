#ifndef TNI_API_HEADER_SCALEDTRAVERSALCONSUME
#define TNI_API_HEADER_SCALEDTRAVERSALCONSUME
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "TraversalConsume.hpp"

struct ScaledTraversalConsume : public TraversalConsume {
	using TraversalConsume::TraversalConsume;

	constexpr ScaledTraversalConsume(TraversalConsume base) : TraversalConsume{base} {}
	constexpr ScaledTraversalConsume(uint64_t addr) : TraversalConsume{addr} {}
	constexpr ScaledTraversalConsume(Object obj) : ScaledTraversalConsume{obj.address()} {}
	ScaledTraversalConsume(Variant variant) : ScaledTraversalConsume{variant.as_object().address()} {}

	enum struct ConsumeMode : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		PER_NODE_UNITS = 0,
		AGGREGATE_ARRAY = 1,
	};

	PROPERTY(disconnect_grace_ticks, int64_t);
	PROPERTY(consume_mode, int64_t);
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

	inline NetworkPacketRoot make_packet_root();
	inline void tick();
	inline void stop();
	inline Variant produce_limit_reached(const LogicController& node);
	inline Variant compute_produce_limit(const LogicController& node);
	inline Variant make_traversal_packet(const NetworkPacketRoot& proot);
	inline void client_sim();
	inline String colorize_description(String ds);
	inline void start();
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

inline NetworkPacketRoot ScaledTraversalConsume::make_packet_root() { return NetworkPacketRoot(this->operator()("make_packet_root").as_object().address()); }
inline void ScaledTraversalConsume::tick() { this->voidcall("tick"); }
inline void ScaledTraversalConsume::stop() { this->voidcall("stop"); }
inline Variant ScaledTraversalConsume::produce_limit_reached(const LogicController& node) { return this->operator()("produce_limit_reached", Object(reinterpret_cast<const Object*>(&node)->address())); }
inline Variant ScaledTraversalConsume::compute_produce_limit(const LogicController& node) { return this->operator()("compute_produce_limit", Object(reinterpret_cast<const Object*>(&node)->address())); }
inline Variant ScaledTraversalConsume::make_traversal_packet(const NetworkPacketRoot& proot) { return this->operator()("make_traversal_packet", Object(reinterpret_cast<const Object*>(&proot)->address())); }
inline void ScaledTraversalConsume::client_sim() { this->voidcall("client_sim"); }
inline String ScaledTraversalConsume::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void ScaledTraversalConsume::start() { this->voidcall("start"); }
inline void ScaledTraversalConsume::uninstall() { this->voidcall("uninstall"); }
inline void ScaledTraversalConsume::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline int64_t ScaledTraversalConsume::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline bool ScaledTraversalConsume::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }
inline bool ScaledTraversalConsume::test_routing_exemption(Variant packet) { return this->operator()("test_routing_exemption", packet); }

#endif
