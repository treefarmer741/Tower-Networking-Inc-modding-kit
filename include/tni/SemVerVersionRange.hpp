#ifndef TNI_API_HEADER_SEMVERVERSIONRANGE
#define TNI_API_HEADER_SEMVERVERSIONRANGE
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct SemVerVersionRange : public RefCounted {
	using RefCounted::RefCounted;

	constexpr SemVerVersionRange(RefCounted base) : RefCounted{base} {}
	constexpr SemVerVersionRange(uint64_t addr) : RefCounted{addr} {}
	constexpr SemVerVersionRange(Object obj) : SemVerVersionRange{obj.address()} {}
	SemVerVersionRange(Variant variant) : SemVerVersionRange{variant.as_object().address()} {}



	inline void check_version(const SemVerVersion& version);
	inline void to_range_string();
	inline RefCounted parse(String raw);
};

#include "SemVerVersion.hpp"

inline void SemVerVersionRange::check_version(const SemVerVersion& version) { this->voidcall("check_version", Object(reinterpret_cast<const Object*>(&version)->address())); }
inline void SemVerVersionRange::to_range_string() { this->voidcall("to_range_string"); }
inline RefCounted SemVerVersionRange::parse(String raw) { return RefCounted(this->operator()("parse", raw).as_object().address()); }

#endif
