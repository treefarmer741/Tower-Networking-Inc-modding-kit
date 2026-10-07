#ifndef TNI_API_HEADER_SANINITIATOR
#define TNI_API_HEADER_SANINITIATOR
// Generated API for game version 0.13.1
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

	PROPERTY(SHAREABLE_CONFIGS, Variant);  // Const value type was not supported.
	enum struct CONFIG_PROGRAM_MODIFIERS : int64_t {  // NOTE: You should recompile your mod if this enum changes!
	};
	inline static const String VOL_MOUNTED = "mounted";  // NOTE: You should recompile your mod if this value changes!
	inline static const String VOL_MOUNTING = "mounting";  // NOTE: You should recompile your mod if this value changes!
	inline static const String VOL_OFFLINE = "no path";  // NOTE: You should recompile your mod if this value changes!
	inline static const String VOL_NO_VOLUME = "no volume";  // NOTE: You should recompile your mod if this value changes!
	inline static const String VOL_UNBACKED = "no storage";  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(granted_capacity, int64_t);
	PROPERTY(reserved_blocks, Variant);
	PROPERTY(at_risk_preview, Variant);
	PROPERTY(requires_reprovision, Variant);
	PROPERTY(resolved_paths, Variant);
	PROPERTY(target_blocks, Variant);
	PROPERTY(lun_claims, Variant);
	PROPERTY(target_addrs, Variant);
	PROPERTY(holder_addrs, Variant);
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
	inline int64_t volume_capacity_of(String vid);
	inline int64_t volume_reserved(int64_t idx);
	inline Variant volume_claims(int64_t idx);
	inline StorageVolumeLedger volume_ledger(int64_t idx);
	inline int64_t volume_used(int64_t idx);
	inline int64_t volume_used_of(String vid);
	inline Variant volume_contents_of(int64_t idx);
	inline int64_t volume_foreign(int64_t idx);
	inline int64_t volume_free(int64_t idx);
	inline int64_t volume_free_of(String vid);
	inline int64_t volume_of(String filekey);
	inline Variant can_claim(int64_t idx, String filekey, bool ignore_current_holder);
	inline void claim_file(int64_t idx, String filekey);
	inline Variant can_release(int64_t idx, String filekey);
	inline void release_file(int64_t idx, String filekey);
	inline bool release_filekey(String filekey);
	inline void wipe_volume(int64_t idx);
	inline String volume_label(int64_t idx);
	inline bool volume_established(String vid);
	inline NetworkPacketRoot make_packet_root();
	inline void tick();
	inline String mint_volume_token(Variant taken);
	inline Variant unpack_volume(String body);
	inline Variant unreachable_configs();
	inline void recompute_grant_now();
	inline void mark_pure_adopt(String vid);
	inline void set_pending_adopt(int64_t index, String target_addr, String holder_addr, int64_t resize_to);
	inline void set_reservation(String vid, int64_t size, String target_addr, bool new_round, String holder_addr);
	inline void remove_volumes(Variant vids);
	inline void full_reset();
	inline int64_t access_traffic_weight(Variant vids);
	inline void stop();
	inline Variant make_traversal_packet(const NetworkPacketRoot& proot);
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
inline int64_t SanInitiator::volume_capacity_of(String vid) { return this->operator()("volume_capacity_of", vid); }
inline int64_t SanInitiator::volume_reserved(int64_t idx) { return this->operator()("volume_reserved", idx); }
inline Variant SanInitiator::volume_claims(int64_t idx) { return this->operator()("volume_claims", idx); }
inline StorageVolumeLedger SanInitiator::volume_ledger(int64_t idx) { return StorageVolumeLedger(this->operator()("volume_ledger", idx).as_object().address()); }
inline int64_t SanInitiator::volume_used(int64_t idx) { return this->operator()("volume_used", idx); }
inline int64_t SanInitiator::volume_used_of(String vid) { return this->operator()("volume_used_of", vid); }
inline Variant SanInitiator::volume_contents_of(int64_t idx) { return this->operator()("volume_contents_of", idx); }
inline int64_t SanInitiator::volume_foreign(int64_t idx) { return this->operator()("volume_foreign", idx); }
inline int64_t SanInitiator::volume_free(int64_t idx) { return this->operator()("volume_free", idx); }
inline int64_t SanInitiator::volume_free_of(String vid) { return this->operator()("volume_free_of", vid); }
inline int64_t SanInitiator::volume_of(String filekey) { return this->operator()("volume_of", filekey); }
inline Variant SanInitiator::can_claim(int64_t idx, String filekey, bool ignore_current_holder) { return this->operator()("can_claim", idx, filekey, ignore_current_holder); }
inline void SanInitiator::claim_file(int64_t idx, String filekey) { this->voidcall("claim_file", idx, filekey); }
inline Variant SanInitiator::can_release(int64_t idx, String filekey) { return this->operator()("can_release", idx, filekey); }
inline void SanInitiator::release_file(int64_t idx, String filekey) { this->voidcall("release_file", idx, filekey); }
inline bool SanInitiator::release_filekey(String filekey) { return this->operator()("release_filekey", filekey); }
inline void SanInitiator::wipe_volume(int64_t idx) { this->voidcall("wipe_volume", idx); }
inline String SanInitiator::volume_label(int64_t idx) { return this->operator()("volume_label", idx); }
inline bool SanInitiator::volume_established(String vid) { return this->operator()("volume_established", vid); }
inline NetworkPacketRoot SanInitiator::make_packet_root() { return NetworkPacketRoot(this->operator()("make_packet_root").as_object().address()); }
inline void SanInitiator::tick() { this->voidcall("tick"); }
inline String SanInitiator::mint_volume_token(Variant taken) { return this->operator()("mint_volume_token", taken); }
inline Variant SanInitiator::unpack_volume(String body) { return this->operator()("unpack_volume", body); }
inline Variant SanInitiator::unreachable_configs() { return this->operator()("unreachable_configs"); }
inline void SanInitiator::recompute_grant_now() { this->voidcall("recompute_grant_now"); }
inline void SanInitiator::mark_pure_adopt(String vid) { this->voidcall("mark_pure_adopt", vid); }
inline void SanInitiator::set_pending_adopt(int64_t index, String target_addr, String holder_addr, int64_t resize_to) { this->voidcall("set_pending_adopt", index, target_addr, holder_addr, resize_to); }
inline void SanInitiator::set_reservation(String vid, int64_t size, String target_addr, bool new_round, String holder_addr) { this->voidcall("set_reservation", vid, size, target_addr, new_round, holder_addr); }
inline void SanInitiator::remove_volumes(Variant vids) { this->voidcall("remove_volumes", vids); }
inline void SanInitiator::full_reset() { this->voidcall("full_reset"); }
inline int64_t SanInitiator::access_traffic_weight(Variant vids) { return this->operator()("access_traffic_weight", vids); }
inline void SanInitiator::stop() { this->voidcall("stop"); }
inline Variant SanInitiator::make_traversal_packet(const NetworkPacketRoot& proot) { return this->operator()("make_traversal_packet", Object(reinterpret_cast<const Object*>(&proot)->address())); }
inline void SanInitiator::client_sim() { this->voidcall("client_sim"); }
inline String SanInitiator::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void SanInitiator::start() { this->voidcall("start"); }
inline void SanInitiator::uninstall() { this->voidcall("uninstall"); }
inline int64_t SanInitiator::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline bool SanInitiator::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }
inline bool SanInitiator::test_routing_exemption(Variant packet) { return this->operator()("test_routing_exemption", packet); }

#endif
