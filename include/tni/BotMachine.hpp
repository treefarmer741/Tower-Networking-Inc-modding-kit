#ifndef TNI_API_HEADER_BOTMACHINE
#define TNI_API_HEADER_BOTMACHINE
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Program.hpp"

struct BotMachine : public Program {
	using Program::Program;

	constexpr BotMachine(Program base) : Program{base} {}
	constexpr BotMachine(uint64_t addr) : Program{addr} {}
	constexpr BotMachine(Object obj) : BotMachine{obj.address()} {}
	BotMachine(Variant variant) : BotMachine{variant.as_object().address()} {}

	inline static const String VISIT_TRAFFIC = "tcp/80";  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(opcode, String);
	PROPERTY(oparg, String);
	PROPERTY(oplogs, Variant);
	PROPERTY(bot_id, int64_t);
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

	inline int64_t get_new_botid(const LogicController& controller);
	inline void start();
	inline void stop();
	inline String get_operation_s();
	inline void tick();
	inline void rotate_output();
	inline void uninstall();
	inline void install(Variant install_opts);
	inline Variant serialize_as_str();
	inline Variant deserialize_from_str(int64_t _sz, String fdats, const LogicController& target_controller);
	inline String colorize_description(String ds);
	inline bool process_network_packet(const PacketControlModule& pktctl, Variant packet);
	inline bool is_pkt_for_self(Variant packet);
};

#include "LogicController.hpp"
#include "PacketControlModule.hpp"

inline int64_t BotMachine::get_new_botid(const LogicController& controller) { return this->operator()("get_new_botid", Object(reinterpret_cast<const Object*>(&controller)->address())); }
inline void BotMachine::start() { this->voidcall("start"); }
inline void BotMachine::stop() { this->voidcall("stop"); }
inline String BotMachine::get_operation_s() { return this->operator()("get_operation_s"); }
inline void BotMachine::tick() { this->voidcall("tick"); }
inline void BotMachine::rotate_output() { this->voidcall("rotate_output"); }
inline void BotMachine::uninstall() { this->voidcall("uninstall"); }
inline void BotMachine::install(Variant install_opts) { this->voidcall("install", install_opts); }
inline Variant BotMachine::serialize_as_str() { return this->operator()("serialize_as_str"); }
inline Variant BotMachine::deserialize_from_str(int64_t _sz, String fdats, const LogicController& target_controller) { return this->operator()("deserialize_from_str", _sz, fdats, Object(reinterpret_cast<const Object*>(&target_controller)->address())); }
inline String BotMachine::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline bool BotMachine::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline bool BotMachine::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }

#endif
