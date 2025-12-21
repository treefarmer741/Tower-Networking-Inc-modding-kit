#ifndef TNI_API_HEADER_THEMECONFIG
#define TNI_API_HEADER_THEMECONFIG
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ThemeConfig : public Resource {
	using Resource::Resource;

	constexpr ThemeConfig(Resource base) : Resource{base} {}
	constexpr ThemeConfig(uint64_t addr) : Resource{addr} {}
	constexpr ThemeConfig(Object obj) : ThemeConfig{obj.address()} {}
	ThemeConfig(Variant variant) : ThemeConfig{variant.as_object().address()} {}


	PROPERTY(theme_descriptions, Variant);
	PROPERTY(and_compatibility, bool);
	PROPERTY(theme_value, String);

	inline ThemeConfig create_from_string(String thm_s, bool and_compatible);
	inline bool has_valid_descriptions();
	inline String render_theme();
	inline bool is_compatible(String thm_s);
};

#include "ThemeConfig.hpp"

inline ThemeConfig ThemeConfig::create_from_string(String thm_s, bool and_compatible) { return ThemeConfig(operator()("create_from_string", thm_s, and_compatible).as_object().address()); }
inline bool ThemeConfig::has_valid_descriptions() { return operator()("has_valid_descriptions"); }
inline String ThemeConfig::render_theme() { return operator()("render_theme"); }
inline bool ThemeConfig::is_compatible(String thm_s) { return operator()("is_compatible", thm_s); }

#endif
