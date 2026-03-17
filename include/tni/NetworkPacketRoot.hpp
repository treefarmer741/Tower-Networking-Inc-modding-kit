#ifndef TNI_API_HEADER_NETWORKPACKETROOT
#define TNI_API_HEADER_NETWORKPACKETROOT
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct NetworkPacketRoot : public RefCounted {
	using RefCounted::RefCounted;

	constexpr NetworkPacketRoot(RefCounted base) : RefCounted{base} {}
	constexpr NetworkPacketRoot(uint64_t addr) : RefCounted{addr} {}
	constexpr NetworkPacketRoot(Object obj) : NetworkPacketRoot{obj.address()} {}
	NetworkPacketRoot(Variant variant) : NetworkPacketRoot{variant.as_object().address()} {}

	static constexpr int64_t default_ttl = 32;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double default_request_timeout = 3.3;  // NOTE: You should recompile your mod if this value changes!
	enum Err : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		NO_ERROR = 0,
		NO_DNS_SERVER = 1,
		NO_DNS_ENTRY = 2,
		SRC_OUT_OF_BANDWIDTH = 3,
		NO_SRC_NETWORK_ADDR = 4,
		BAD_ADDRESS = 5,
		DHCP_ADDRESS_CONFLICT = 6,
		NO_COMPATIBLE_USES_LEFT = 7,
		SRC_OFFLINE = 8,
		NO_DHCP_SERVER = 9,
	};

	PROPERTY(timeout_seconds, double);
	PROPERTY(src_controller, LogicController);
	PROPERTY(src_packetctl, PacketControlModule);
	PROPERTY(src_networkctl, NetworkControlModule);
	PROPERTY(src_controller_np, NodePath);
	PROPERTY(src_hwaddr, String);
	PROPERTY(src_nwaddr, String);
	PROPERTY(allow_user_nodes, bool);
	PROPERTY(allow_link_nodes, bool);
	PROPERTY(src_request_terminated, bool);
	PROPERTY(is_from_user, bool);
	PROPERTY(first_matched_result, Variant);
	PROPERTY(matched_results, Variant);
	PROPERTY(total_bw_consumed, int64_t);
	PROPERTY(err_callback, Variant);
	PROPERTY(timeout_callback, Variant);
	PROPERTY(node_access_callback, Variant);
	PROPERTY(match_callback, Variant);
	PROPERTY(matcher_callback, Variant);
	PROPERTY(offline_callback, Variant);
	PROPERTY(adhoc_counter, int64_t);
	PROPERTY(adhoc_flag, bool);
	PROPERTY(packet_drop_reasons, Variant);

	inline NetworkPacketRoot create_packet_root(LogicController src_);
	inline Variant get_packet(String traffic_class_, int64_t traffic_weight_, String data_, String dst_laddr_, int64_t ttl_);
	inline void clear_timeout_signal();
	inline void set_synchronous_timeout(SceneTree stree, double timeout_s);
	inline void try_access_hopped_node(LogicController hopped_node, Variant curr_pkt);
	inline void reset_conn();
	inline void sync_root_termination();
	inline void set_no_termination_on_match();
	inline Variant get_packet_drop_reason_sa();
	inline void account_packet_drop_reason(String reason_str);
	inline Variant asynchronous_send_packet(Variant pkt, Variant enable_timeout);
	inline Variant send_sync_desigdns_request(String domain_name);
	inline Variant get_hop_count(Variant pkt);
	inline void set_trvtgthost(Variant pkt, Variant h);
	inline Variant send_sync_dns_request(String domain_name, String dns_srv_addr);
};

#include "LogicController.hpp"
#include "PacketControlModule.hpp"
#include "NetworkControlModule.hpp"
#include "NetworkPacketRoot.hpp"

inline NetworkPacketRoot NetworkPacketRoot::create_packet_root(LogicController src_) { return NetworkPacketRoot(operator()("create_packet_root", src_).as_object().address()); }
inline Variant NetworkPacketRoot::get_packet(String traffic_class_, int64_t traffic_weight_, String data_, String dst_laddr_, int64_t ttl_) { return operator()("get_packet", traffic_class_, traffic_weight_, data_, dst_laddr_, ttl_); }
inline void NetworkPacketRoot::clear_timeout_signal() { voidcall("clear_timeout_signal"); }
inline void NetworkPacketRoot::set_synchronous_timeout(SceneTree stree, double timeout_s) { voidcall("set_synchronous_timeout", stree, timeout_s); }
inline void NetworkPacketRoot::try_access_hopped_node(LogicController hopped_node, Variant curr_pkt) { voidcall("try_access_hopped_node", hopped_node, curr_pkt); }
inline void NetworkPacketRoot::reset_conn() { voidcall("reset_conn"); }
inline void NetworkPacketRoot::sync_root_termination() { voidcall("sync_root_termination"); }
inline void NetworkPacketRoot::set_no_termination_on_match() { voidcall("set_no_termination_on_match"); }
inline Variant NetworkPacketRoot::get_packet_drop_reason_sa() { return operator()("get_packet_drop_reason_sa"); }
inline void NetworkPacketRoot::account_packet_drop_reason(String reason_str) { voidcall("account_packet_drop_reason", reason_str); }
inline Variant NetworkPacketRoot::asynchronous_send_packet(Variant pkt, Variant enable_timeout) { return operator()("asynchronous_send_packet", pkt, enable_timeout); }
inline Variant NetworkPacketRoot::send_sync_desigdns_request(String domain_name) { return operator()("send_sync_desigdns_request", domain_name); }
inline Variant NetworkPacketRoot::get_hop_count(Variant pkt) { return operator()("get_hop_count", pkt); }
inline void NetworkPacketRoot::set_trvtgthost(Variant pkt, Variant h) { voidcall("set_trvtgthost", pkt, h); }
inline Variant NetworkPacketRoot::send_sync_dns_request(String domain_name, String dns_srv_addr) { return operator()("send_sync_dns_request", domain_name, dns_srv_addr); }

#endif
