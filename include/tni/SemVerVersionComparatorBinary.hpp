#ifndef TNI_API_HEADER_SEMVERVERSIONCOMPARATORBINARY
#define TNI_API_HEADER_SEMVERVERSIONCOMPARATORBINARY
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct SemVerVersionComparatorBinary : public RefCounted {
	using RefCounted::RefCounted;

	constexpr SemVerVersionComparatorBinary(RefCounted base) : RefCounted{base} {}
	constexpr SemVerVersionComparatorBinary(uint64_t addr) : RefCounted{addr} {}
	constexpr SemVerVersionComparatorBinary(Object obj) : SemVerVersionComparatorBinary{obj.address()} {}
	SemVerVersionComparatorBinary(Variant variant) : SemVerVersionComparatorBinary{variant.as_object().address()} {}


	PROPERTY(op, int64_t);
	PROPERTY(left, RefCounted);
	PROPERTY(right, RefCounted);

	inline String to_range_string();
	inline bool check_version(const SemVerVersion& version);
	inline RefCounted parse(String raw);
};

#include "SemVerVersion.hpp"

inline String SemVerVersionComparatorBinary::to_range_string() { return this->operator()("to_range_string"); }
inline bool SemVerVersionComparatorBinary::check_version(const SemVerVersion& version) { return this->operator()("check_version", Object(reinterpret_cast<const Object*>(&version)->address())); }
inline RefCounted SemVerVersionComparatorBinary::parse(String raw) { return RefCounted(this->operator()("parse", raw).as_object().address()); }

#endif
