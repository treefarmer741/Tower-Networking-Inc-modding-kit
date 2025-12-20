#ifndef TNI_API_HEADER_VIRTUALMACHINE
#define TNI_API_HEADER_VIRTUALMACHINE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct VirtualMachine : public Node {
	using Node::Node;

	constexpr VirtualMachine(Node base) : Node{base} {}
	constexpr VirtualMachine(uint64_t addr) : Node{addr} {}
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

	inline int64_t get_new_vmid(LogicController controller);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant install_opts);
	inline void create_virtual_sockets();
	inline void link_virtual_sockets();
	inline void tick();
	inline Variant serialize_as_str();
	inline Variant deserialize_from_str(int64_t sz, String fdats, LogicController target_controller);
	inline String colorize_description(String ds);
	inline void process_network_packet(PacketControlModule pktctl, Variant packet);
};

#include "LogicController.hpp"
#include "DeviceUnit.hpp"
#include "LogicControllerSocket.hpp"
#include "PacketControlModule.hpp"

inline int64_t VirtualMachine::get_new_vmid(LogicController controller) { return operator()("get_new_vmid", controller); }
inline void VirtualMachine::start() { voidcall("start"); }
inline void VirtualMachine::stop() { voidcall("stop"); }
inline void VirtualMachine::uninstall() { voidcall("uninstall"); }
inline void VirtualMachine::install(Variant install_opts) { voidcall("install", install_opts); }
inline void VirtualMachine::create_virtual_sockets() { voidcall("create_virtual_sockets"); }
inline void VirtualMachine::link_virtual_sockets() { voidcall("link_virtual_sockets"); }
inline void VirtualMachine::tick() { voidcall("tick"); }
inline Variant VirtualMachine::serialize_as_str() { return operator()("serialize_as_str"); }
inline Variant VirtualMachine::deserialize_from_str(int64_t sz, String fdats, LogicController target_controller) { return operator()("deserialize_from_str", sz, fdats, target_controller); }
inline String VirtualMachine::colorize_description(String ds) { return operator()("colorize_description", ds); }
inline void VirtualMachine::process_network_packet(PacketControlModule pktctl, Variant packet) { voidcall("process_network_packet", pktctl, packet); }

#endif
