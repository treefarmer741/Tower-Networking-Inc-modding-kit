#ifndef TNI_API_HEADER_SEMVERVERSIONCOMPARATORRANGE
#define TNI_API_HEADER_SEMVERVERSIONCOMPARATORRANGE
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct SemVerVersionComparatorRange : public RefCounted {
	using RefCounted::RefCounted;

	constexpr SemVerVersionComparatorRange(RefCounted base) : RefCounted{base} {}
	constexpr SemVerVersionComparatorRange(uint64_t addr) : RefCounted{addr} {}
	constexpr SemVerVersionComparatorRange(Object obj) : SemVerVersionComparatorRange{obj.address()} {}
	SemVerVersionComparatorRange(Variant variant) : SemVerVersionComparatorRange{variant.as_object().address()} {}


	PROPERTY(left, RefCounted);
	PROPERTY(right, RefCounted);

	inline String to_range_string();
	inline bool check_version(const SemVerVersion& version);
	inline RefCounted parse(String raw);
};

#include "SemVerVersion.hpp"

inline String SemVerVersionComparatorRange::to_range_string() { return this->operator()("to_range_string"); }
inline bool SemVerVersionComparatorRange::check_version(const SemVerVersion& version) { return this->operator()("check_version", Object(reinterpret_cast<const Object*>(&version)->address())); }
inline RefCounted SemVerVersionComparatorRange::parse(String raw) { return RefCounted(this->operator()("parse", raw).as_object().address()); }

#endif
