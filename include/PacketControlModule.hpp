#ifndef TNI_API_HEADER_PACKETCONTROLMODULE
#define TNI_API_HEADER_PACKETCONTROLMODULE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PacketControlModule : public Node {
	using Node::Node;

	constexpr PacketControlModule(Node base) : Node{base} {}
	constexpr PacketControlModule(uint64_t addr) : Node{addr} {}
	constexpr PacketControlModule(Object obj) : PacketControlModule{obj.address()} {}
	PacketControlModule(Variant variant) : PacketControlModule{variant.as_object().address()} {}


	PROPERTY(clk_timer, Timer);
	PROPERTY(packet_in_queue, Variant);
	PROPERTY(packet_out_queue, Variant);
	PROPERTY(host_controller, LogicController);

	inline void add_packet_to_out_queue(Variant packet, String port_id);
	inline void receive_packet(Variant new_pkt);
	inline void preprocess_packets(Variant packet, Variant next_in);
	inline void postprocess_packets(Variant packet);
	inline void create_network_request(String traffic_class, int64_t traffic_weight, String data, Variant dst_addr);
	inline void handle_save(Variant save_obj);
	inline void handle_load(Variant save_obj);
	inline Variant get_save_var_list();
};

#include "LogicController.hpp"

inline void PacketControlModule::add_packet_to_out_queue(Variant packet, String port_id) { voidcall("add_packet_to_out_queue", packet, port_id); }
inline void PacketControlModule::receive_packet(Variant new_pkt) { voidcall("receive_packet", new_pkt); }
inline void PacketControlModule::preprocess_packets(Variant packet, Variant next_in) { voidcall("preprocess_packets", packet, next_in); }
inline void PacketControlModule::postprocess_packets(Variant packet) { voidcall("postprocess_packets", packet); }
inline void PacketControlModule::create_network_request(String traffic_class, int64_t traffic_weight, String data, Variant dst_addr) { voidcall("create_network_request", traffic_class, traffic_weight, data, dst_addr); }
inline void PacketControlModule::handle_save(Variant save_obj) { voidcall("handle_save", save_obj); }
inline void PacketControlModule::handle_load(Variant save_obj) { voidcall("handle_load", save_obj); }
inline Variant PacketControlModule::get_save_var_list() { return operator()("get_save_var_list"); }

#endif
