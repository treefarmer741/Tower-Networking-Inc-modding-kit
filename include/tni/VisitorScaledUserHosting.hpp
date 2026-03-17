#ifndef TNI_API_HEADER_VISITORSCALEDUSERHOSTING
#define TNI_API_HEADER_VISITORSCALEDUSERHOSTING
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct VisitorScaledUserHosting : public Node {
	using Node::Node;

	constexpr VisitorScaledUserHosting(Node base) : Node{base} {}
	constexpr VisitorScaledUserHosting(uint64_t addr) : Node{addr} {}
	constexpr VisitorScaledUserHosting(Object obj) : VisitorScaledUserHosting{obj.address()} {}
	VisitorScaledUserHosting(Variant variant) : VisitorScaledUserHosting{variant.as_object().address()} {}


	PROPERTY(min_visitors, int64_t);
	PROPERTY(max_visitors, int64_t);
	PROPERTY(growth_per_tick, int64_t);
	PROPERTY(shrink_per_tick, int64_t);
	PROPERTY(greed_factor, int64_t);
	PROPERTY(min_visitor_scale_factor, double);
	PROPERTY(user, LogicControllerUser);
	PROPERTY(satiety_weight, int64_t);
	PROPERTY(advertised_use_config, UseConfig);
	PROPERTY(theme_config, ThemeConfig);
	PROPERTY(desired_visitors_per_tick, int64_t);
	PROPERTY(self_produce, bool);
	PROPERTY(tld_choice, Variant);
	PROPERTY(extra_visitor_limit, int64_t);
	PROPERTY(pou_count, int64_t);
	PROPERTY(produced_last_tick, int64_t);
	PROPERTY(produce_factor, int64_t);
	PROPERTY(required_consumes_per_tick, int64_t);
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
	inline int64_t count_possible_users_from_surveys(bool exclude_inactive);
	inline Variant try_roll_fqdn(int64_t mix);
	inline Variant get_fqdn();
	inline void force_fqdn_reroll();
	inline void do_self_produce();
	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
	inline bool process_network_packet(PacketControlModule pktctl, Variant packet);
};

#include "LogicControllerUser.hpp"
#include "UseConfig.hpp"
#include "ThemeConfig.hpp"
#include "LogicController.hpp"
#include "PacketControlModule.hpp"

inline void VisitorScaledUserHosting::tick() { voidcall("tick"); }
inline int64_t VisitorScaledUserHosting::count_possible_users_from_surveys(bool exclude_inactive) { return operator()("count_possible_users_from_surveys", exclude_inactive); }
inline Variant VisitorScaledUserHosting::try_roll_fqdn(int64_t mix) { return operator()("try_roll_fqdn", mix); }
inline Variant VisitorScaledUserHosting::get_fqdn() { return operator()("get_fqdn"); }
inline void VisitorScaledUserHosting::force_fqdn_reroll() { voidcall("force_fqdn_reroll"); }
inline void VisitorScaledUserHosting::do_self_produce() { voidcall("do_self_produce"); }
inline String VisitorScaledUserHosting::colorize_description(String ds) { return operator()("colorize_description", ds); }
inline void VisitorScaledUserHosting::start() { voidcall("start"); }
inline void VisitorScaledUserHosting::stop() { voidcall("stop"); }
inline void VisitorScaledUserHosting::uninstall() { voidcall("uninstall"); }
inline void VisitorScaledUserHosting::install(Variant _install_opts) { voidcall("install", _install_opts); }
inline bool VisitorScaledUserHosting::process_network_packet(PacketControlModule pktctl, Variant packet) { return operator()("process_network_packet", pktctl, packet); }

#endif
