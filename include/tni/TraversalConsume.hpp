#ifndef TNI_API_HEADER_TRAVERSALCONSUME
#define TNI_API_HEADER_TRAVERSALCONSUME
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "TraversalBase.hpp"

struct TraversalConsume : public TraversalBase {
	using TraversalBase::TraversalBase;

	constexpr TraversalConsume(TraversalBase base) : TraversalBase{base} {}
	constexpr TraversalConsume(uint64_t addr) : TraversalBase{addr} {}
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
	inline bool process_network_packet(const PacketControlModule& pktctl, Variant packet);
	inline bool is_pkt_for_self(Variant packet);
};

#include "UseConfig.hpp"
#include "LogicController.hpp"
#include "NetworkPacketRoot.hpp"
#include "PacketControlModule.hpp"

inline Variant TraversalConsume::produce_limit_reached(const LogicController& node) { return this->operator()("produce_limit_reached", Object(reinterpret_cast<const Object*>(&node)->address())); }
inline Variant TraversalConsume::compute_produce_limit(const LogicController& node) { return this->operator()("compute_produce_limit", Object(reinterpret_cast<const Object*>(&node)->address())); }
inline NetworkPacketRoot TraversalConsume::make_packet_root() { return NetworkPacketRoot(this->operator()("make_packet_root").as_object().address()); }
inline Variant TraversalConsume::make_traversal_packet(const NetworkPacketRoot& proot) { return this->operator()("make_traversal_packet", Object(reinterpret_cast<const Object*>(&proot)->address())); }
inline void TraversalConsume::tick() { this->voidcall("tick"); }
inline void TraversalConsume::client_sim() { this->voidcall("client_sim"); }
inline String TraversalConsume::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void TraversalConsume::start() { this->voidcall("start"); }
inline void TraversalConsume::stop() { this->voidcall("stop"); }
inline void TraversalConsume::uninstall() { this->voidcall("uninstall"); }
inline void TraversalConsume::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline bool TraversalConsume::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline bool TraversalConsume::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }

#endif
