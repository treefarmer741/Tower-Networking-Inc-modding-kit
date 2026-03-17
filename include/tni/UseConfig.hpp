#ifndef TNI_API_HEADER_USECONFIG
#define TNI_API_HEADER_USECONFIG
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct UseConfig : public Resource {
	using Resource::Resource;

	constexpr UseConfig(Resource base) : Resource{base} {}
	constexpr UseConfig(uint64_t addr) : Resource{addr} {}
	constexpr UseConfig(Object obj) : UseConfig{obj.address()} {}
	UseConfig(Variant variant) : UseConfig{variant.as_object().address()} {}


	PROPERTY(use_descriptions, Variant);
	PROPERTY(and_compatibility, bool);
	PROPERTY(consume_config_blocks, Variant);
	PROPERTY(use_value, String);
	PROPERTY(constraint_descript, String);

	inline UseConfig create_from_string(String use_s, bool and_compatible);
	inline bool has_valid_descriptions();
	inline int64_t get_compatible_count(Variant devus);
	inline bool try_erase_compatible_uses(Variant devus, int64_t count);
	inline String render_use();
	inline String render_constraint_descript(bool ccb_newline);
	inline bool is_compatible(String use_s);
};

#include "UseConfig.hpp"

inline UseConfig UseConfig::create_from_string(String use_s, bool and_compatible) { return UseConfig(operator()("create_from_string", use_s, and_compatible).as_object().address()); }
inline bool UseConfig::has_valid_descriptions() { return operator()("has_valid_descriptions"); }
inline int64_t UseConfig::get_compatible_count(Variant devus) { return operator()("get_compatible_count", devus); }
inline bool UseConfig::try_erase_compatible_uses(Variant devus, int64_t count) { return operator()("try_erase_compatible_uses", devus, count); }
inline String UseConfig::render_use() { return operator()("render_use"); }
inline String UseConfig::render_constraint_descript(bool ccb_newline) { return operator()("render_constraint_descript", ccb_newline); }
inline bool UseConfig::is_compatible(String use_s) { return operator()("is_compatible", use_s); }

#endif
