#ifndef TNI_API_HEADER_VIRTUALMACHINE
#define TNI_API_HEADER_VIRTUALMACHINE
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Program.hpp"

struct VirtualMachine : public Program {
	using Program::Program;

	constexpr VirtualMachine(Program base) : Program{base} {}
	constexpr VirtualMachine(uint64_t addr) : Program{addr} {}
	constexpr VirtualMachine(Object obj) : VirtualMachine{obj.address()} {}
	VirtualMachine(Variant variant) : VirtualMachine{variant.as_object().address()} {}

	PROPERTY(LGCTLSCN, Variant);  // Const value type was not supported.
	PROPERTY(VSSCN, Variant);  // Const value type was not supported.

	PROPERTY(vmname, String);
	PROPERTY(virtual_machine_controller, LogicController);
	PROPERTY(host_device, DeviceUnit);
	PROPERTY(host_socket, LogicControllerSocket);
	PROPERTY(guest_socket, LogicControllerSocket);
	PROPERTY(vm_id, int64_t);
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

	inline int64_t get_new_vmid(const LogicController& controller);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant install_opts);
	inline void create_virtual_sockets();
	inline void link_virtual_sockets();
	inline void tick();
	inline Variant serialize_as_str();
	inline Variant deserialize_from_str(int64_t sz, String fdats, const LogicController& target_controller);
	inline String colorize_description(String ds);
	inline bool process_network_packet(const PacketControlModule& pktctl, Variant packet);
	inline bool is_pkt_for_self(Variant packet);
};

#include "LogicController.hpp"
#include "DeviceUnit.hpp"
#include "LogicControllerSocket.hpp"
#include "PacketControlModule.hpp"

inline int64_t VirtualMachine::get_new_vmid(const LogicController& controller) { return this->operator()("get_new_vmid", Object(reinterpret_cast<const Object*>(&controller)->address())); }
inline void VirtualMachine::start() { this->voidcall("start"); }
inline void VirtualMachine::stop() { this->voidcall("stop"); }
inline void VirtualMachine::uninstall() { this->voidcall("uninstall"); }
inline void VirtualMachine::install(Variant install_opts) { this->voidcall("install", install_opts); }
inline void VirtualMachine::create_virtual_sockets() { this->voidcall("create_virtual_sockets"); }
inline void VirtualMachine::link_virtual_sockets() { this->voidcall("link_virtual_sockets"); }
inline void VirtualMachine::tick() { this->voidcall("tick"); }
inline Variant VirtualMachine::serialize_as_str() { return this->operator()("serialize_as_str"); }
inline Variant VirtualMachine::deserialize_from_str(int64_t sz, String fdats, const LogicController& target_controller) { return this->operator()("deserialize_from_str", sz, fdats, Object(reinterpret_cast<const Object*>(&target_controller)->address())); }
inline String VirtualMachine::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline bool VirtualMachine::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline bool VirtualMachine::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }

#endif
