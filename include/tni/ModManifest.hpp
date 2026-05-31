#ifndef TNI_API_HEADER_MODMANIFEST
#define TNI_API_HEADER_MODMANIFEST
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ModManifest : public RefCounted {
	using RefCounted::RefCounted;

	constexpr ModManifest(RefCounted base) : RefCounted{base} {}
	constexpr ModManifest(uint64_t addr) : RefCounted{addr} {}
	constexpr ModManifest(Object obj) : ModManifest{obj.address()} {}
	ModManifest(Variant variant) : ModManifest{variant.as_object().address()} {}


	PROPERTY(raw_data, Variant);
	PROPERTY(icon, Image);
	PROPERTY(mod_path, String);
	PROPERTY(id, String);
	PROPERTY(name, String);
	PROPERTY(authors, PackedArray<std::string>);
	PROPERTY(version, SemVerVersion);
	PROPERTY(description, PackedArray<std::string>);
	PROPERTY(links, Variant);
	PROPERTY(dependencies, Variant);
	PROPERTY(dependencies_optional, Variant);
	PROPERTY(incompatibilities, Variant);
	PROPERTY(load_before, PackedArray<std::string>);
	PROPERTY(load_after, PackedArray<std::string>);

	inline ModManifest from_jsonc_string(String mod_id, String jsonc);
	inline bool is_functionally_same(const ModManifest& other);
	inline void try_load_icon();
	inline ModManifest as_minified_manifest();
	inline bool is_dependency_satisfied(const ModManifest& other);
	inline bool is_incompatible(const ModManifest& other);
	inline int64_t get_expected_order(String addition_id);
	inline PackedArray<std::string> get_issues_with_preset(const ModPreset& preset, bool check_dependencies);
};

#include "SemVerVersion.hpp"
#include "ModManifest.hpp"
#include "ModPreset.hpp"

inline ModManifest ModManifest::from_jsonc_string(String mod_id, String jsonc) { return ModManifest(this->operator()("from_jsonc_string", mod_id, jsonc).as_object().address()); }
inline bool ModManifest::is_functionally_same(const ModManifest& other) { return this->operator()("is_functionally_same", Object(reinterpret_cast<const Object*>(&other)->address())); }
inline void ModManifest::try_load_icon() { this->voidcall("try_load_icon"); }
inline ModManifest ModManifest::as_minified_manifest() { return ModManifest(this->operator()("as_minified_manifest").as_object().address()); }
inline bool ModManifest::is_dependency_satisfied(const ModManifest& other) { return this->operator()("is_dependency_satisfied", Object(reinterpret_cast<const Object*>(&other)->address())); }
inline bool ModManifest::is_incompatible(const ModManifest& other) { return this->operator()("is_incompatible", Object(reinterpret_cast<const Object*>(&other)->address())); }
inline int64_t ModManifest::get_expected_order(String addition_id) { return this->operator()("get_expected_order", addition_id); }
inline PackedArray<std::string> ModManifest::get_issues_with_preset(const ModPreset& preset, bool check_dependencies) { return this->operator()("get_issues_with_preset", Object(reinterpret_cast<const Object*>(&preset)->address()), check_dependencies); }

#endif
