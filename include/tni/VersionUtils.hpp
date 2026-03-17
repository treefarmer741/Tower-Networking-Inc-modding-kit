#ifndef TNI_API_HEADER_VERSIONUTILS
#define TNI_API_HEADER_VERSIONUTILS
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct VersionUtils : public Object {
	using Object::Object;

	constexpr VersionUtils(Object base) : Object{base} {}
	constexpr VersionUtils(uint64_t addr) : Object{addr} {}
	VersionUtils(Variant variant) : VersionUtils{variant.as_object().address()} {}

	inline static const String ELEVATION_KEY_FILE = "elevation.txt";  // NOTE: You should recompile your mod if this value changes!
	inline static const String BUILD_REGEX = "^\\d{6}/\\d+.\\d+.\\d+";  // NOTE: You should recompile your mod if this value changes!
	inline static const String SEMVER_REGEX = "^(\\d+)\\.(\\d+)\\.(\\d+)[a-z]?$";  // NOTE: You should recompile your mod if this value changes!


	inline String get_build_features();
	inline bool export_elevation_detected();
	inline bool is_editor_build();
	inline bool is_exported_build();
	inline bool is_multiplayer_build();
	inline bool is_lan_build();
	inline bool is_demo_build();
	inline String get_build_version();
	inline String get_semantic_version();
	inline int64_t get_semantic_version_part_number(String semvs, int64_t part_n);
	inline String test_version_incompatibility(String semvs, int64_t min_major_version, int64_t min_minor_version);
};


inline String VersionUtils::get_build_features() { return operator()("get_build_features"); }
inline bool VersionUtils::export_elevation_detected() { return operator()("export_elevation_detected"); }
inline bool VersionUtils::is_editor_build() { return operator()("is_editor_build"); }
inline bool VersionUtils::is_exported_build() { return operator()("is_exported_build"); }
inline bool VersionUtils::is_multiplayer_build() { return operator()("is_multiplayer_build"); }
inline bool VersionUtils::is_lan_build() { return operator()("is_lan_build"); }
inline bool VersionUtils::is_demo_build() { return operator()("is_demo_build"); }
inline String VersionUtils::get_build_version() { return operator()("get_build_version"); }
inline String VersionUtils::get_semantic_version() { return operator()("get_semantic_version"); }
inline int64_t VersionUtils::get_semantic_version_part_number(String semvs, int64_t part_n) { return operator()("get_semantic_version_part_number", semvs, part_n); }
inline String VersionUtils::test_version_incompatibility(String semvs, int64_t min_major_version, int64_t min_minor_version) { return operator()("test_version_incompatibility", semvs, min_major_version, min_minor_version); }

#endif
