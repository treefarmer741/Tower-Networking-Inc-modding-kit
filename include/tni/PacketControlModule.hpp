#ifndef TNI_API_HEADER_PACKETCONTROLMODULE
#define TNI_API_HEADER_PACKETCONTROLMODULE
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "LogicControlModule.hpp"

struct PacketControlModule : public LogicControlModule {
	using LogicControlModule::LogicControlModule;

	constexpr PacketControlModule(LogicControlModule base) : LogicControlModule{base} {}
	constexpr PacketControlModule(uint64_t addr) : LogicControlModule{addr} {}
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
	inline void on_os_boot();
	inline void reset();
	inline void flush_out_queue();
	inline void broadcast_pkt_as_hub(Variant pkt);
	inline bool is_pkt_for_self(Variant packet);
	inline void handle_save(Variant save_obj);
	inline void handle_load(Variant save_obj);
	inline Variant get_save_var_list();
};

#include "LogicController.hpp"

inline bool PacketControlModule::is_bandwidth_exceeded() { return this->operator()("is_bandwidth_exceeded"); }
inline bool PacketControlModule::receive_packet(Variant new_pkt) { return this->operator()("receive_packet", new_pkt); }
inline void PacketControlModule::copy_packet_to_out_queue(Variant packet, String port_id) { this->voidcall("copy_packet_to_out_queue", packet, port_id); }
inline void PacketControlModule::put_packet_to_out_queue(Variant packet, String port_id) { this->voidcall("put_packet_to_out_queue", packet, port_id); }
inline void PacketControlModule::refresh() { this->voidcall("refresh"); }
inline void PacketControlModule::stop() { this->voidcall("stop"); }
inline void PacketControlModule::on_os_boot() { this->voidcall("on_os_boot"); }
inline void PacketControlModule::reset() { this->voidcall("reset"); }
inline void PacketControlModule::flush_out_queue() { this->voidcall("flush_out_queue"); }
inline void PacketControlModule::broadcast_pkt_as_hub(Variant pkt) { this->voidcall("broadcast_pkt_as_hub", pkt); }
inline bool PacketControlModule::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }
inline void PacketControlModule::handle_save(Variant save_obj) { this->voidcall("handle_save", save_obj); }
inline void PacketControlModule::handle_load(Variant save_obj) { this->voidcall("handle_load", save_obj); }
inline Variant PacketControlModule::get_save_var_list() { return this->operator()("get_save_var_list"); }

#endif
