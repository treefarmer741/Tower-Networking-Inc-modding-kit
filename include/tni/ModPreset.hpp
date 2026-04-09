#ifndef TNI_API_HEADER_MODPRESET
#define TNI_API_HEADER_MODPRESET
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ModPreset : public RefCounted {
	using RefCounted::RefCounted;

	constexpr ModPreset(RefCounted base) : RefCounted{base} {}
	constexpr ModPreset(uint64_t addr) : RefCounted{addr} {}
	constexpr ModPreset(Object obj) : ModPreset{obj.address()} {}
	ModPreset(Variant variant) : ModPreset{variant.as_object().address()} {}


	PROPERTY(name, String);
	PROPERTY(frozen, bool);
	PROPERTY(mods, Variant);

	inline ModPreset duplicate();
	inline Variant to_json();
	inline ModPreset from_json(Variant data);
	inline ModPreset with_minified_manifests();
	inline bool is_functionally_same(const ModPreset& other);
	inline void update_with_discovered();
	inline int64_t find(const ModManifest& mod);
	inline int64_t find_mod_id(String mod_id);
	inline bool add(const ModManifest& mod);
	inline bool remove(const ModManifest& mod);
	inline void lower_order_position(const ModManifest& mod);
	inline void reinsert_mod(const ModManifest& mod, int64_t position);
	inline void raise_order_position(const ModManifest& mod);
	inline int64_t get_actual_order_offset(const ModManifest& base, String addition_id);
	inline void auto_sort();
	inline PackedArray<std::string> get_mod_issues(const ModManifest& addition);
};

#include "ModPreset.hpp"
#include "ModManifest.hpp"

inline ModPreset ModPreset::duplicate() { return ModPreset(this->operator()("duplicate").as_object().address()); }
inline Variant ModPreset::to_json() { return this->operator()("to_json"); }
inline ModPreset ModPreset::from_json(Variant data) { return ModPreset(this->operator()("from_json", data).as_object().address()); }
inline ModPreset ModPreset::with_minified_manifests() { return ModPreset(this->operator()("with_minified_manifests").as_object().address()); }
inline bool ModPreset::is_functionally_same(const ModPreset& other) { return this->operator()("is_functionally_same", Object(reinterpret_cast<const Object*>(&other)->address())); }
inline void ModPreset::update_with_discovered() { this->voidcall("update_with_discovered"); }
inline int64_t ModPreset::find(const ModManifest& mod) { return this->operator()("find", Object(reinterpret_cast<const Object*>(&mod)->address())); }
inline int64_t ModPreset::find_mod_id(String mod_id) { return this->operator()("find_mod_id", mod_id); }
inline bool ModPreset::add(const ModManifest& mod) { return this->operator()("add", Object(reinterpret_cast<const Object*>(&mod)->address())); }
inline bool ModPreset::remove(const ModManifest& mod) { return this->operator()("remove", Object(reinterpret_cast<const Object*>(&mod)->address())); }
inline void ModPreset::lower_order_position(const ModManifest& mod) { this->voidcall("lower_order_position", Object(reinterpret_cast<const Object*>(&mod)->address())); }
inline void ModPreset::reinsert_mod(const ModManifest& mod, int64_t position) { this->voidcall("reinsert_mod", Object(reinterpret_cast<const Object*>(&mod)->address()), position); }
inline void ModPreset::raise_order_position(const ModManifest& mod) { this->voidcall("raise_order_position", Object(reinterpret_cast<const Object*>(&mod)->address())); }
inline int64_t ModPreset::get_actual_order_offset(const ModManifest& base, String addition_id) { return this->operator()("get_actual_order_offset", Object(reinterpret_cast<const Object*>(&base)->address()), addition_id); }
inline void ModPreset::auto_sort() { this->voidcall("auto_sort"); }
inline PackedArray<std::string> ModPreset::get_mod_issues(const ModManifest& addition) { return this->operator()("get_mod_issues", Object(reinterpret_cast<const Object*>(&addition)->address())); }

#endif
