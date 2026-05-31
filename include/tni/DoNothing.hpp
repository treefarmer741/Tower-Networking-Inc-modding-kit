#ifndef TNI_API_HEADER_DONOTHING
#define TNI_API_HEADER_DONOTHING
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Program.hpp"

struct DoNothing : public Program {
	using Program::Program;

	constexpr DoNothing(Program base) : Program{base} {}
	constexpr DoNothing(uint64_t addr) : Program{addr} {}
	constexpr DoNothing(Object obj) : DoNothing{obj.address()} {}
	DoNothing(Variant variant) : DoNothing{variant.as_object().address()} {}


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
	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
	inline bool process_network_packet(const PacketControlModule& pktctl, Variant packet);
	inline bool is_pkt_for_self(Variant packet);
};

#include "LogicController.hpp"
#include "PacketControlModule.hpp"

inline void DoNothing::tick() { this->voidcall("tick"); }
inline String DoNothing::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void DoNothing::start() { this->voidcall("start"); }
inline void DoNothing::stop() { this->voidcall("stop"); }
inline void DoNothing::uninstall() { this->voidcall("uninstall"); }
inline void DoNothing::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline bool DoNothing::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline bool DoNothing::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }

#endif
