#ifndef TNI_API_HEADER_PANOPMOUTHPIECE
#define TNI_API_HEADER_PANOPMOUTHPIECE
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "TraversalCountUses.hpp"

struct PanopMouthpiece : public TraversalCountUses {
	using TraversalCountUses::TraversalCountUses;

	constexpr PanopMouthpiece(TraversalCountUses base) : TraversalCountUses{base} {}
	constexpr PanopMouthpiece(uint64_t addr) : TraversalCountUses{addr} {}
	constexpr PanopMouthpiece(Object obj) : PanopMouthpiece{obj.address()} {}
	PanopMouthpiece(Variant variant) : PanopMouthpiece{variant.as_object().address()} {}

	enum struct LastResult : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		NONE = 0,
		REACHED = 1,
		NOT_CONSUMER = 2,
		NO_REPLY = 3,
		NO_INFLUENCE = 4,
	};

	PROPERTY(influence_per_boost_pct, double);
	PROPERTY(target_addr, String);
	PROPERTY(last_result, int64_t);
	PROPERTY(last_boost_pct, double);
	PROPERTY(counted_use_config, UseConfig);
	PROPERTY(counted_uses_last_tick, int64_t);
	PROPERTY(counted_nodes_last_tick, int64_t);
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

	inline void set_target(String addr);
	inline String get_configstr();
	inline void set_with_configstr(String cfg);
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

inline void PanopMouthpiece::set_target(String addr) { this->voidcall("set_target", addr); }
inline String PanopMouthpiece::get_configstr() { return this->operator()("get_configstr"); }
inline void PanopMouthpiece::set_with_configstr(String cfg) { this->voidcall("set_with_configstr", cfg); }
inline NetworkPacketRoot PanopMouthpiece::make_packet_root() { return NetworkPacketRoot(this->operator()("make_packet_root").as_object().address()); }
inline Variant PanopMouthpiece::make_traversal_packet(const NetworkPacketRoot& proot) { return this->operator()("make_traversal_packet", Object(reinterpret_cast<const Object*>(&proot)->address())); }
inline void PanopMouthpiece::tick() { this->voidcall("tick"); }
inline void PanopMouthpiece::client_sim() { this->voidcall("client_sim"); }
inline String PanopMouthpiece::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void PanopMouthpiece::start() { this->voidcall("start"); }
inline void PanopMouthpiece::stop() { this->voidcall("stop"); }
inline void PanopMouthpiece::uninstall() { this->voidcall("uninstall"); }
inline void PanopMouthpiece::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline int64_t PanopMouthpiece::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline bool PanopMouthpiece::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }
inline bool PanopMouthpiece::test_routing_exemption(Variant packet) { return this->operator()("test_routing_exemption", packet); }

#endif
