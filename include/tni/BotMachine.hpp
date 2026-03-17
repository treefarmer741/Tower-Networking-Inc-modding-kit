#ifndef TNI_API_HEADER_BOTMACHINE
#define TNI_API_HEADER_BOTMACHINE
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct BotMachine : public Node {
	using Node::Node;

	constexpr BotMachine(Node base) : Node{base} {}
	constexpr BotMachine(uint64_t addr) : Node{addr} {}
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

	inline int64_t get_new_botid(LogicController controller);
	inline void start();
	inline void stop();
	inline String get_operation_s();
	inline void tick();
	inline void rotate_output();
	inline void uninstall();
	inline void install(Variant install_opts);
	inline Variant serialize_as_str();
	inline Variant deserialize_from_str(int64_t _sz, String fdats, LogicController target_controller);
	inline String colorize_description(String ds);
	inline bool process_network_packet(PacketControlModule pktctl, Variant packet);
};

#include "LogicController.hpp"
#include "PacketControlModule.hpp"

inline int64_t BotMachine::get_new_botid(LogicController controller) { return operator()("get_new_botid", controller); }
inline void BotMachine::start() { voidcall("start"); }
inline void BotMachine::stop() { voidcall("stop"); }
inline String BotMachine::get_operation_s() { return operator()("get_operation_s"); }
inline void BotMachine::tick() { voidcall("tick"); }
inline void BotMachine::rotate_output() { voidcall("rotate_output"); }
inline void BotMachine::uninstall() { voidcall("uninstall"); }
inline void BotMachine::install(Variant install_opts) { voidcall("install", install_opts); }
inline Variant BotMachine::serialize_as_str() { return operator()("serialize_as_str"); }
inline Variant BotMachine::deserialize_from_str(int64_t _sz, String fdats, LogicController target_controller) { return operator()("deserialize_from_str", _sz, fdats, target_controller); }
inline String BotMachine::colorize_description(String ds) { return operator()("colorize_description", ds); }
inline bool BotMachine::process_network_packet(PacketControlModule pktctl, Variant packet) { return operator()("process_network_packet", pktctl, packet); }

#endif
