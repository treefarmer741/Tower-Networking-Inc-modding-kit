#ifndef TNI_API_HEADER_STEAMMULTIPLAYERPEER
#define TNI_API_HEADER_STEAMMULTIPLAYERPEER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SteamMultiplayerPeer : public MultiplayerPeerExtension {
	using MultiplayerPeerExtension::MultiplayerPeerExtension;

	constexpr SteamMultiplayerPeer(MultiplayerPeerExtension base) : MultiplayerPeerExtension{base} {}
	constexpr SteamMultiplayerPeer(uint64_t addr) : MultiplayerPeerExtension{addr} {}
	constexpr SteamMultiplayerPeer(Object obj) : SteamMultiplayerPeer{obj.address()} {}
	SteamMultiplayerPeer(Variant variant) : SteamMultiplayerPeer{variant.as_object().address()} {}

	static constexpr int64_t PING_CHANNEL = 31;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t PING_INTERVAL_MS = 1000;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t MAX_MESSAGES_PER_POLL = 255;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(auth_ticket, Variant);
	PROPERTY(steam_id, int64_t);
	PROPERTY(compression_enabled, bool);
	PROPERTY(is_auth_success, bool);
	PROPERTY(lobby_owner_steam_id, int64_t);
	PROPERTY(lobby_id, int64_t);
	PROPERTY(async_lobby_create, Variant);
	PROPERTY(async_lobby_create_type, int64_t);
	PROPERTY(async_lobby_join_id, int64_t);
	PROPERTY(sync_target_peerid, int64_t);
	PROPERTY(sync_transfer_mode, int64_t);
	PROPERTY(sync_transfer_channel, int64_t);
	PROPERTY(async_transfer_channel, int64_t);
	PROPERTY(async_compression_mode, int64_t);
	PROPERTY(send_buffer, Variant);
	PROPERTY(receive_buffer, Variant);
	PROPERTY(newpeerid_buffer, PackedArray<int32_t>);
	PROPERTY(last_ping_ts_ms, int64_t);
	PROPERTY(is_public_lobby, bool);

	inline void try_authenticate_with_steam();
	inline int64_t set_public_lobby(bool enable);
	inline int64_t try_setup_lobby(Variant lobby_data, int64_t max_peers, int64_t lobby_type);
	inline int64_t try_join_lobby(int64_t steam_lobby_id);
	inline Variant get_lobby_members_steam_ids();
	inline void send_lobby_pings();
	inline void send_p2p_ping(int64_t remote_steam_id);
	inline void send_p2p_packet(int64_t remote_steam_id, PackedArray<uint8_t> packet_data, int64_t send_flags, int64_t channel);
	inline void queue_message_for_send(int64_t remote_steam_id, PackedArray<uint8_t> payload);
	inline void leave_lobby();
};


inline void SteamMultiplayerPeer::try_authenticate_with_steam() { voidcall("try_authenticate_with_steam"); }
inline int64_t SteamMultiplayerPeer::set_public_lobby(bool enable) { return operator()("set_public_lobby", enable); }
inline int64_t SteamMultiplayerPeer::try_setup_lobby(Variant lobby_data, int64_t max_peers, int64_t lobby_type) { return operator()("try_setup_lobby", lobby_data, max_peers, lobby_type); }
inline int64_t SteamMultiplayerPeer::try_join_lobby(int64_t steam_lobby_id) { return operator()("try_join_lobby", steam_lobby_id); }
inline Variant SteamMultiplayerPeer::get_lobby_members_steam_ids() { return operator()("get_lobby_members_steam_ids"); }
inline void SteamMultiplayerPeer::send_lobby_pings() { voidcall("send_lobby_pings"); }
inline void SteamMultiplayerPeer::send_p2p_ping(int64_t remote_steam_id) { voidcall("send_p2p_ping", remote_steam_id); }
inline void SteamMultiplayerPeer::send_p2p_packet(int64_t remote_steam_id, PackedArray<uint8_t> packet_data, int64_t send_flags, int64_t channel) { voidcall("send_p2p_packet", remote_steam_id, packet_data, send_flags, channel); }
inline void SteamMultiplayerPeer::queue_message_for_send(int64_t remote_steam_id, PackedArray<uint8_t> payload) { voidcall("queue_message_for_send", remote_steam_id, payload); }
inline void SteamMultiplayerPeer::leave_lobby() { voidcall("leave_lobby"); }

#endif
