#ifndef TNI_API_HEADER_SANINITIATOR
#define TNI_API_HEADER_SANINITIATOR
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "TraversalBase.hpp"

struct SanInitiator : public TraversalBase {
	using TraversalBase::TraversalBase;

	constexpr SanInitiator(TraversalBase base) : TraversalBase{base} {}
	constexpr SanInitiator(uint64_t addr) : TraversalBase{addr} {}
	constexpr SanInitiator(Object obj) : SanInitiator{obj.address()} {}
	SanInitiator(Variant variant) : SanInitiator{variant.as_object().address()} {}

	inline static const String VOL_MOUNTED = "mounted";  // NOTE: You should recompile your mod if this value changes!
	inline static const String VOL_MOUNTING = "mounting";  // NOTE: You should recompile your mod if this value changes!
	inline static const String VOL_OFFLINE = "offline";  // NOTE: You should recompile your mod if this value changes!
	inline static const String VOL_NO_VOLUME = "no volume";  // NOTE: You should recompile your mod if this value changes!
	inline static const String VOL_UNBACKED = "no storage";  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(granted_capacity, int64_t);
	PROPERTY(reserved_blocks, Variant);
	PROPERTY(at_risk_preview, Variant);
	PROPERTY(requires_reprovision, Variant);
	PROPERTY(resolved_paths, Variant);
	PROPERTY(target_blocks, Variant);
	PROPERTY(lun_claims, Variant);
	PROPERTY(seed_addrs, Variant);
	PROPERTY(volume_states, Variant);
	PROPERTY(storage_per_bw_unit, int64_t);
	PROPERTY(traffic_class, String);
	PROPERTY(traffic_weight, int64_t);
	PROPERTY(cpu_load, int64_t);
	PROPERTY(gpu_load, int64_t);
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
	PROPERTY(gw_playopt, PlayOptions);
	PROPERTY(host_controller, LogicController);

	inline String get_configstr();
	inline void set_with_configstr(String cfgs);
	inline String volume_for_addr(String addr);
	inline void install(Variant _install_opts);
	inline int64_t volume_count();
	inline String volume_vid(int64_t idx);
	inline String volume_addr(int64_t idx);
	inline String volume_state(int64_t idx);
	inline int64_t volume_capacity(int64_t idx);
	inline int64_t volume_reserved(int64_t idx);
	inline Variant volume_claims(int64_t idx);
	inline StorageVolumeLedger volume_ledger(int64_t idx);
	inline int64_t volume_used(int64_t idx);
	inline int64_t volume_used_of(String vid);
	inline int64_t volume_free(int64_t idx);
	inline int64_t volume_of(String filekey);
	inline Variant can_claim(int64_t idx, String filekey, bool ignore_current_holder);
	inline void claim_file(int64_t idx, String filekey);
	inline Variant can_release(int64_t idx, String filekey);
	inline void release_file(int64_t idx, String filekey);
	inline bool release_filekey(String filekey);
	inline void wipe_volume(int64_t idx);
	inline String volume_label(int64_t idx);
	inline int64_t parse_volume_label(String token);
	inline bool volume_established(String vid);
	inline NetworkPacketRoot make_packet_root();
	inline void tick();
	inline String mint_volume_token(Variant taken);
	inline Variant unpack_volume(String body);
	inline void recompute_grant_now();
	inline void set_reservation(String vid, int64_t size, String seed_addr, bool new_round);
	inline void remove_volumes(Variant vids);
	inline void full_reset();
	inline int64_t total_established_blocks();
	inline int64_t access_traffic_weight();
	inline Variant make_traversal_packet(const NetworkPacketRoot& proot);
	inline void stop();
	inline void client_sim();
	inline String colorize_description(String ds);
	inline void start();
	inline void uninstall();
	inline int64_t process_network_packet(const PacketControlModule& pktctl, Variant packet);
	inline bool is_pkt_for_self(Variant packet);
	inline bool test_routing_exemption(Variant packet);
};

#include "PlayOptions.hpp"
#include "LogicController.hpp"
#include "StorageVolumeLedger.hpp"
#include "NetworkPacketRoot.hpp"
#include "PacketControlModule.hpp"

inline String SanInitiator::get_configstr() { return this->operator()("get_configstr"); }
inline void SanInitiator::set_with_configstr(String cfgs) { this->voidcall("set_with_configstr", cfgs); }
inline String SanInitiator::volume_for_addr(String addr) { return this->operator()("volume_for_addr", addr); }
inline void SanInitiator::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline int64_t SanInitiator::volume_count() { return this->operator()("volume_count"); }
inline String SanInitiator::volume_vid(int64_t idx) { return this->operator()("volume_vid", idx); }
inline String SanInitiator::volume_addr(int64_t idx) { return this->operator()("volume_addr", idx); }
inline String SanInitiator::volume_state(int64_t idx) { return this->operator()("volume_state", idx); }
inline int64_t SanInitiator::volume_capacity(int64_t idx) { return this->operator()("volume_capacity", idx); }
inline int64_t SanInitiator::volume_reserved(int64_t idx) { return this->operator()("volume_reserved", idx); }
inline Variant SanInitiator::volume_claims(int64_t idx) { return this->operator()("volume_claims", idx); }
inline StorageVolumeLedger SanInitiator::volume_ledger(int64_t idx) { return StorageVolumeLedger(this->operator()("volume_ledger", idx).as_object().address()); }
inline int64_t SanInitiator::volume_used(int64_t idx) { return this->operator()("volume_used", idx); }
inline int64_t SanInitiator::volume_used_of(String vid) { return this->operator()("volume_used_of", vid); }
inline int64_t SanInitiator::volume_free(int64_t idx) { return this->operator()("volume_free", idx); }
inline int64_t SanInitiator::volume_of(String filekey) { return this->operator()("volume_of", filekey); }
inline Variant SanInitiator::can_claim(int64_t idx, String filekey, bool ignore_current_holder) { return this->operator()("can_claim", idx, filekey, ignore_current_holder); }
inline void SanInitiator::claim_file(int64_t idx, String filekey) { this->voidcall("claim_file", idx, filekey); }
inline Variant SanInitiator::can_release(int64_t idx, String filekey) { return this->operator()("can_release", idx, filekey); }
inline void SanInitiator::release_file(int64_t idx, String filekey) { this->voidcall("release_file", idx, filekey); }
inline bool SanInitiator::release_filekey(String filekey) { return this->operator()("release_filekey", filekey); }
inline void SanInitiator::wipe_volume(int64_t idx) { this->voidcall("wipe_volume", idx); }
inline String SanInitiator::volume_label(int64_t idx) { return this->operator()("volume_label", idx); }
inline int64_t SanInitiator::parse_volume_label(String token) { return this->operator()("parse_volume_label", token); }
inline bool SanInitiator::volume_established(String vid) { return this->operator()("volume_established", vid); }
inline NetworkPacketRoot SanInitiator::make_packet_root() { return NetworkPacketRoot(this->operator()("make_packet_root").as_object().address()); }
inline void SanInitiator::tick() { this->voidcall("tick"); }
inline String SanInitiator::mint_volume_token(Variant taken) { return this->operator()("mint_volume_token", taken); }
inline Variant SanInitiator::unpack_volume(String body) { return this->operator()("unpack_volume", body); }
inline void SanInitiator::recompute_grant_now() { this->voidcall("recompute_grant_now"); }
inline void SanInitiator::set_reservation(String vid, int64_t size, String seed_addr, bool new_round) { this->voidcall("set_reservation", vid, size, seed_addr, new_round); }
inline void SanInitiator::remove_volumes(Variant vids) { this->voidcall("remove_volumes", vids); }
inline void SanInitiator::full_reset() { this->voidcall("full_reset"); }
inline int64_t SanInitiator::total_established_blocks() { return this->operator()("total_established_blocks"); }
inline int64_t SanInitiator::access_traffic_weight() { return this->operator()("access_traffic_weight"); }
inline Variant SanInitiator::make_traversal_packet(const NetworkPacketRoot& proot) { return this->operator()("make_traversal_packet", Object(reinterpret_cast<const Object*>(&proot)->address())); }
inline void SanInitiator::stop() { this->voidcall("stop"); }
inline void SanInitiator::client_sim() { this->voidcall("client_sim"); }
inline String SanInitiator::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void SanInitiator::start() { this->voidcall("start"); }
inline void SanInitiator::uninstall() { this->voidcall("uninstall"); }
inline int64_t SanInitiator::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline bool SanInitiator::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }
inline bool SanInitiator::test_routing_exemption(Variant packet) { return this->operator()("test_routing_exemption", packet); }

#endif
