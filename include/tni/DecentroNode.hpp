#ifndef TNI_API_HEADER_DECENTRONODE
#define TNI_API_HEADER_DECENTRONODE
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "AlwaysProduce.hpp"

struct DecentroNode : public AlwaysProduce {
	using AlwaysProduce::AlwaysProduce;

	constexpr DecentroNode(AlwaysProduce base) : AlwaysProduce{base} {}
	constexpr DecentroNode(uint64_t addr) : AlwaysProduce{addr} {}
	constexpr DecentroNode(Object obj) : DecentroNode{obj.address()} {}
	DecentroNode(Variant variant) : DecentroNode{variant.as_object().address()} {}


	PROPERTY(decentro_currency_use_config, UseConfig);
	PROPERTY(decentro_count_last_tick, Variant);
	PROPERTY(produce_use_config, UseConfig);
	PROPERTY(produce_factor, int64_t);
	PROPERTY(produce_limit_type, int64_t);
	PROPERTY(limit_factor, int64_t);
	PROPERTY(produced_last_tick, int64_t);
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
	inline void perform_decentro_trade(int64_t intended_volume, int64_t price_per_currency, int64_t arbitrage);
	inline Variant get_produce_limit(int64_t limit_type, int64_t lfact, const LogicController& node, int64_t pfact);
	inline Variant compute_produce_limit(const LogicController& node);
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
#include "PacketControlModule.hpp"

inline void DecentroNode::tick() { this->voidcall("tick"); }
inline void DecentroNode::perform_decentro_trade(int64_t intended_volume, int64_t price_per_currency, int64_t arbitrage) { this->voidcall("perform_decentro_trade", intended_volume, price_per_currency, arbitrage); }
inline Variant DecentroNode::get_produce_limit(int64_t limit_type, int64_t lfact, const LogicController& node, int64_t pfact) { return this->operator()("get_produce_limit", limit_type, lfact, Object(reinterpret_cast<const Object*>(&node)->address()), pfact); }
inline Variant DecentroNode::compute_produce_limit(const LogicController& node) { return this->operator()("compute_produce_limit", Object(reinterpret_cast<const Object*>(&node)->address())); }
inline String DecentroNode::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void DecentroNode::start() { this->voidcall("start"); }
inline void DecentroNode::stop() { this->voidcall("stop"); }
inline void DecentroNode::uninstall() { this->voidcall("uninstall"); }
inline void DecentroNode::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline bool DecentroNode::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline bool DecentroNode::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }

#endif
