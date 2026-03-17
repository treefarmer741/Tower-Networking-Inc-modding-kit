#ifndef TNI_API_HEADER_PACKETCONTROLMODULE
#define TNI_API_HEADER_PACKETCONTROLMODULE
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PacketControlModule : public Node {
	using Node::Node;

	constexpr PacketControlModule(Node base) : Node{base} {}
	constexpr PacketControlModule(uint64_t addr) : Node{addr} {}
	constexpr PacketControlModule(Object obj) : PacketControlModule{obj.address()} {}
	PacketControlModule(Variant variant) : PacketControlModule{variant.as_object().address()} {}

	static constexpr double default_clock_period = 0.1;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(clk_timer, Timer);
	PROPERTY(packet_in_queue, Variant);
	PROPERTY(packet_out_queue, Variant);
	PROPERTY(nbw_consumed_this_tick, int64_t);
	PROPERTY(nwaddr_required_for_sending, bool);
	PROPERTY(local_dns_mapping, bool);
	PROPERTY(parent_controller, LogicController);
	PROPERTY(host_controller, LogicController);

	inline bool is_bandwidth_exceeded();
	inline bool receive_packet(Variant new_pkt);
	inline void copy_packet_to_out_queue(Variant packet, String port_id);
	inline void put_packet_to_out_queue(Variant packet, String port_id);
	inline void refresh();
	inline void stop();
	inline void reset();
	inline void flush_out_queue();
	inline void broadcast_pkt_as_hub(Variant pkt);
	inline void handle_save(Variant save_obj);
	inline void handle_load(Variant save_obj);
	inline Variant get_save_var_list();
};

#include "LogicController.hpp"

inline bool PacketControlModule::is_bandwidth_exceeded() { return operator()("is_bandwidth_exceeded"); }
inline bool PacketControlModule::receive_packet(Variant new_pkt) { return operator()("receive_packet", new_pkt); }
inline void PacketControlModule::copy_packet_to_out_queue(Variant packet, String port_id) { voidcall("copy_packet_to_out_queue", packet, port_id); }
inline void PacketControlModule::put_packet_to_out_queue(Variant packet, String port_id) { voidcall("put_packet_to_out_queue", packet, port_id); }
inline void PacketControlModule::refresh() { voidcall("refresh"); }
inline void PacketControlModule::stop() { voidcall("stop"); }
inline void PacketControlModule::reset() { voidcall("reset"); }
inline void PacketControlModule::flush_out_queue() { voidcall("flush_out_queue"); }
inline void PacketControlModule::broadcast_pkt_as_hub(Variant pkt) { voidcall("broadcast_pkt_as_hub", pkt); }
inline void PacketControlModule::handle_save(Variant save_obj) { voidcall("handle_save", save_obj); }
inline void PacketControlModule::handle_load(Variant save_obj) { voidcall("handle_load", save_obj); }
inline Variant PacketControlModule::get_save_var_list() { return operator()("get_save_var_list"); }

#endif
