#ifndef TNI_API_HEADER_SURVEYSCALEDUSERHOSTING
#define TNI_API_HEADER_SURVEYSCALEDUSERHOSTING
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "UserHosting.hpp"

struct SurveyScaledUserHosting : public UserHosting {
	using UserHosting::UserHosting;

	constexpr SurveyScaledUserHosting(UserHosting base) : UserHosting{base} {}
	constexpr SurveyScaledUserHosting(uint64_t addr) : UserHosting{addr} {}
	constexpr SurveyScaledUserHosting(Object obj) : SurveyScaledUserHosting{obj.address()} {}
	SurveyScaledUserHosting(Variant variant) : SurveyScaledUserHosting{variant.as_object().address()} {}


	PROPERTY(min_visitors, int64_t);
	PROPERTY(max_visitors, int64_t);
	PROPERTY(desired_ratio, double);
	PROPERTY(always_survey, bool);
	PROPERTY(desired_based_on_survey, int64_t);
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

	inline int64_t count_possible_users_from_surveys(bool exclude_inactive);
	inline Variant try_roll_fqdn(int64_t mix);
	inline Variant get_fqdn();
	inline void force_fqdn_reroll();
	inline void do_self_produce();
	inline void tick();
	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
	inline bool process_network_packet(const PacketControlModule& pktctl, Variant packet);
	inline bool is_pkt_for_self(Variant packet);
};

#include "LogicControllerUser.hpp"
#include "UseConfig.hpp"
#include "ThemeConfig.hpp"
#include "LogicController.hpp"
#include "PacketControlModule.hpp"

inline int64_t SurveyScaledUserHosting::count_possible_users_from_surveys(bool exclude_inactive) { return this->operator()("count_possible_users_from_surveys", exclude_inactive); }
inline Variant SurveyScaledUserHosting::try_roll_fqdn(int64_t mix) { return this->operator()("try_roll_fqdn", mix); }
inline Variant SurveyScaledUserHosting::get_fqdn() { return this->operator()("get_fqdn"); }
inline void SurveyScaledUserHosting::force_fqdn_reroll() { this->voidcall("force_fqdn_reroll"); }
inline void SurveyScaledUserHosting::do_self_produce() { this->voidcall("do_self_produce"); }
inline void SurveyScaledUserHosting::tick() { this->voidcall("tick"); }
inline String SurveyScaledUserHosting::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void SurveyScaledUserHosting::start() { this->voidcall("start"); }
inline void SurveyScaledUserHosting::stop() { this->voidcall("stop"); }
inline void SurveyScaledUserHosting::uninstall() { this->voidcall("uninstall"); }
inline void SurveyScaledUserHosting::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline bool SurveyScaledUserHosting::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline bool SurveyScaledUserHosting::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }

#endif
