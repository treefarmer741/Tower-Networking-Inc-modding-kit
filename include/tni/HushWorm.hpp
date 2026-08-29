#ifndef TNI_API_HEADER_HUSHWORM
#define TNI_API_HEADER_HUSHWORM
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "WormBase.hpp"

struct HushWorm : public WormBase {
	using WormBase::WormBase;

	constexpr HushWorm(WormBase base) : WormBase{base} {}
	constexpr HushWorm(uint64_t addr) : WormBase{addr} {}
	constexpr HushWorm(Object obj) : HushWorm{obj.address()} {}
	HushWorm(Variant variant) : HushWorm{variant.as_object().address()} {}


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

inline NetworkPacketRoot HushWorm::make_packet_root() { return NetworkPacketRoot(this->operator()("make_packet_root").as_object().address()); }
inline Variant HushWorm::make_traversal_packet(const NetworkPacketRoot& proot) { return this->operator()("make_traversal_packet", Object(reinterpret_cast<const Object*>(&proot)->address())); }
inline void HushWorm::tick() { this->voidcall("tick"); }
inline void HushWorm::client_sim() { this->voidcall("client_sim"); }
inline String HushWorm::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void HushWorm::start() { this->voidcall("start"); }
inline void HushWorm::stop() { this->voidcall("stop"); }
inline void HushWorm::uninstall() { this->voidcall("uninstall"); }
inline void HushWorm::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline int64_t HushWorm::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline bool HushWorm::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }
inline bool HushWorm::test_routing_exemption(Variant packet) { return this->operator()("test_routing_exemption", packet); }

#endif
