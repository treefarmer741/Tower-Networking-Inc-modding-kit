#ifndef TNI_API_HEADER_STORAGEVOLUMELEDGER
#define TNI_API_HEADER_STORAGEVOLUMELEDGER
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct StorageVolumeLedger : public RefCounted {
	using RefCounted::RefCounted;

	constexpr StorageVolumeLedger(RefCounted base) : RefCounted{base} {}
	constexpr StorageVolumeLedger(uint64_t addr) : RefCounted{addr} {}
	constexpr StorageVolumeLedger(Object obj) : StorageVolumeLedger{obj.address()} {}
	StorageVolumeLedger(Variant variant) : StorageVolumeLedger{variant.as_object().address()} {}


	PROPERTY(ctl, LogicController);
	PROPERTY(claims, Variant);
	PROPERTY(capacity, int64_t);
	PROPERTY(used_capacity, int64_t);
	PROPERTY(free_capacity, int64_t);

	inline StorageVolumeLedger create(Variant ctl_, Variant claims_, int64_t capacity_);
	inline bool is_binary_key(String filekey);
	inline Variant ordered_keys(Variant source, bool binaries_first);
	inline bool is_storage_program(Variant p);
	inline int64_t ledger_size(String filekey);
	inline Variant spill_candidates();
	inline bool held_by_disk(String filekey);
	inline bool held_by_san_volume(String filekey);
	inline String restore_body(String filekey, Variant body);
	inline Variant check_transferable(String filekey);
};

#include "LogicController.hpp"
#include "StorageVolumeLedger.hpp"

inline StorageVolumeLedger StorageVolumeLedger::create(Variant ctl_, Variant claims_, int64_t capacity_) { return StorageVolumeLedger(this->operator()("create", ctl_, claims_, capacity_).as_object().address()); }
inline bool StorageVolumeLedger::is_binary_key(String filekey) { return this->operator()("is_binary_key", filekey); }
inline Variant StorageVolumeLedger::ordered_keys(Variant source, bool binaries_first) { return this->operator()("ordered_keys", source, binaries_first); }
inline bool StorageVolumeLedger::is_storage_program(Variant p) { return this->operator()("is_storage_program", p); }
inline int64_t StorageVolumeLedger::ledger_size(String filekey) { return this->operator()("ledger_size", filekey); }
inline Variant StorageVolumeLedger::spill_candidates() { return this->operator()("spill_candidates"); }
inline bool StorageVolumeLedger::held_by_disk(String filekey) { return this->operator()("held_by_disk", filekey); }
inline bool StorageVolumeLedger::held_by_san_volume(String filekey) { return this->operator()("held_by_san_volume", filekey); }
inline String StorageVolumeLedger::restore_body(String filekey, Variant body) { return this->operator()("restore_body", filekey, body); }
inline Variant StorageVolumeLedger::check_transferable(String filekey) { return this->operator()("check_transferable", filekey); }

#endif
