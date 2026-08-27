#ifndef TNI_API_HEADER_SANTARGET
#define TNI_API_HEADER_SANTARGET
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Program.hpp"

struct SanTarget : public Program {
	using Program::Program;

	constexpr SanTarget(Program base) : Program{base} {}
	constexpr SanTarget(uint64_t addr) : Program{addr} {}
	constexpr SanTarget(Object obj) : SanTarget{obj.address()} {}
	SanTarget(Variant variant) : SanTarget{variant.as_object().address()} {}


	PROPERTY(san_lun_table, Variant);
	PROPERTY(connected_luns, Variant);
	PROPERTY(initiator_seen_ttl, int64_t);
	PROPERTY(exportable_storage, int64_t);
	PROPERTY(exportable_pool, int64_t);
	PROPERTY(committed_storage, int64_t);
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

	inline String volume_filekey(String volume_id);
	inline bool has_volume(String volume_id);
	inline Variant volume_row(String volume_id);
	inline String volume_owner(String volume_id);
	inline String reservation_label(String volume_id);
	inline bool provision_volume(String volume_id, Variant row);
	inline bool write_volume(String volume_id, Variant row);
	inline int64_t destroy_volume(String volume_id);
	inline Variant backed_keys();
	inline int64_t lookup_lun_size(String volume_id, String requestor);
	inline int64_t negotiate_lun(String volume_id, int64_t size, String requestor, bool authoritative);
	inline void revoke_lun(String volume_id);
	inline void tick();
	inline void reconcile_reservation();
	inline Variant volume_contents(String volume_id);
	inline void stop();
	inline String colorize_description(String ds);
	inline void start();
	inline void uninstall();
	inline void install(Variant _install_opts);
	inline int64_t process_network_packet(const PacketControlModule& pktctl, Variant packet);
	inline bool is_pkt_for_self(Variant packet);
	inline bool test_routing_exemption(Variant packet);
};

#include "PlayOptions.hpp"
#include "LogicController.hpp"
#include "PacketControlModule.hpp"

inline String SanTarget::volume_filekey(String volume_id) { return this->operator()("volume_filekey", volume_id); }
inline bool SanTarget::has_volume(String volume_id) { return this->operator()("has_volume", volume_id); }
inline Variant SanTarget::volume_row(String volume_id) { return this->operator()("volume_row", volume_id); }
inline String SanTarget::volume_owner(String volume_id) { return this->operator()("volume_owner", volume_id); }
inline String SanTarget::reservation_label(String volume_id) { return this->operator()("reservation_label", volume_id); }
inline bool SanTarget::provision_volume(String volume_id, Variant row) { return this->operator()("provision_volume", volume_id, row); }
inline bool SanTarget::write_volume(String volume_id, Variant row) { return this->operator()("write_volume", volume_id, row); }
inline int64_t SanTarget::destroy_volume(String volume_id) { return this->operator()("destroy_volume", volume_id); }
inline Variant SanTarget::backed_keys() { return this->operator()("backed_keys"); }
inline int64_t SanTarget::lookup_lun_size(String volume_id, String requestor) { return this->operator()("lookup_lun_size", volume_id, requestor); }
inline int64_t SanTarget::negotiate_lun(String volume_id, int64_t size, String requestor, bool authoritative) { return this->operator()("negotiate_lun", volume_id, size, requestor, authoritative); }
inline void SanTarget::revoke_lun(String volume_id) { this->voidcall("revoke_lun", volume_id); }
inline void SanTarget::tick() { this->voidcall("tick"); }
inline void SanTarget::reconcile_reservation() { this->voidcall("reconcile_reservation"); }
inline Variant SanTarget::volume_contents(String volume_id) { return this->operator()("volume_contents", volume_id); }
inline void SanTarget::stop() { this->voidcall("stop"); }
inline String SanTarget::colorize_description(String ds) { return this->operator()("colorize_description", ds); }
inline void SanTarget::start() { this->voidcall("start"); }
inline void SanTarget::uninstall() { this->voidcall("uninstall"); }
inline void SanTarget::install(Variant _install_opts) { this->voidcall("install", _install_opts); }
inline int64_t SanTarget::process_network_packet(const PacketControlModule& pktctl, Variant packet) { return this->operator()("process_network_packet", Object(reinterpret_cast<const Object*>(&pktctl)->address()), packet); }
inline bool SanTarget::is_pkt_for_self(Variant packet) { return this->operator()("is_pkt_for_self", packet); }
inline bool SanTarget::test_routing_exemption(Variant packet) { return this->operator()("test_routing_exemption", packet); }

#endif
