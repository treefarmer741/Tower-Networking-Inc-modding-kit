#ifndef TNI_API_HEADER_WORMMODIFIER
#define TNI_API_HEADER_WORMMODIFIER
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "WormBase.hpp"

struct WormModifier : public WormBase {
	using WormBase::WormBase;

	constexpr WormModifier(WormBase base) : WormBase{base} {}
	constexpr WormModifier(uint64_t addr) : WormBase{addr} {}
	constexpr WormModifier(Object obj) : WormModifier{obj.address()} {}
	WormModifier(Variant variant) : WormModifier{variant.as_object().address()} {}


	PROPERTY(target_modifier, int64_t);
	PROPERTY(release_name_template, String);
	PROPERTY(max_spread_per_tick, int64_t);
	PROPERTY(signature, String);
	PROPERTY(vulnerable_device_types, Variant);
	PROPERTY(incubation_cycles, int64_t);
	PROPERTY(force_hint_hide, bool);
	PROPERTY(incubation_ctr, int64_t);
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

#include "PlayOptions.hpp"
#include "LogicController.hpp"
#include "NetworkPacketRoot.hpp"
#include "PacketControlModule.hpp"

inline NetworkPacketRoot WormModifier::make_packet_root() { return NetworkPacketRoot(this->operator()("make_packet_root").as_object().address()); }
inline Variant WormModifier::make_traversal_packet(const NetworkPacketRoot& proot) { return this->operator()("make_traversal_packet", Object(reinterpret_cast<const Object*>(&proot)->address())); }
inline void WormModifier::tick() { this->voidcall("tick"); }
inline void WormModifier::client_sim() { this->voidcall("client_sim"); }
inline String WormModifier::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void WormModifier::start() { this->voidcall("start"); }
inline void WormModifier::stop() { this->voidcall("stop"); }
inline void WormModifier::uninstall() { this->voidcall("uninstall"); }
inline void WormModifier::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline int64_t WormModifier::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline bool WormModifier::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }
inline bool WormModifier::test_routing_exemption(Variant packet) { return this->operator()("test_routing_exemption", packet); }

#endif
