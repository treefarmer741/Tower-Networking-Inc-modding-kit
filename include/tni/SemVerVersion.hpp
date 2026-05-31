#ifndef TNI_API_HEADER_SEMVERVERSION
#define TNI_API_HEADER_SEMVERVERSION
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct SemVerVersion : public RefCounted {
	using RefCounted::RefCounted;

	constexpr SemVerVersion(RefCounted base) : RefCounted{base} {}
	constexpr SemVerVersion(uint64_t addr) : RefCounted{addr} {}
	constexpr SemVerVersion(Object obj) : SemVerVersion{obj.address()} {}
	SemVerVersion(Variant variant) : SemVerVersion{variant.as_object().address()} {}


	PROPERTY(major, int64_t);
	PROPERTY(minor, int64_t);
	PROPERTY(patch, int64_t);
	PROPERTY(prerelease, String);
	PROPERTY(buildmetadata, String);

	inline String to_version_string();
	inline bool is_definitive_version();
	inline bool matches(RefCounted other);
	inline Variant compare_parts(RefCounted other);
	inline int64_t compare(RefCounted other);
	inline RefCounted parse(String raw, bool allow_wildcard);
};


inline String SemVerVersion::to_version_string() { return this->operator()("to_version_string"); }
inline bool SemVerVersion::is_definitive_version() { return this->operator()("is_definitive_version"); }
inline bool SemVerVersion::matches(RefCounted other) { return this->operator()("matches", other); }
inline Variant SemVerVersion::compare_parts(RefCounted other) { return this->operator()("compare_parts", other); }
inline int64_t SemVerVersion::compare(RefCounted other) { return this->operator()("compare", other); }
inline RefCounted SemVerVersion::parse(String raw, bool allow_wildcard) { return RefCounted(this->operator()("parse", raw, allow_wildcard).as_object().address()); }

#endif
