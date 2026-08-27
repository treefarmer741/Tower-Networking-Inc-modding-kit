#ifndef TNI_API_HEADER_MODUTILS
#define TNI_API_HEADER_MODUTILS
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ModUtils : public Object {
	using Object::Object;

	constexpr ModUtils(Object base) : Object{base} {}
	constexpr ModUtils(uint64_t addr) : Object{addr} {}
	ModUtils(Variant variant) : ModUtils{variant.as_object().address()} {}

	PROPERTY(IMAGE_EXTS, Variant);  // Const value type was not supported.


	inline Variant parse_jsonc_string(String jsonc);
	inline Variant get_or_default_error(String what_hint, Variant data, String field, Variant default_, bool is_optional, Variant enum_map);
	inline Image load_image(String path);
	inline bool script_inherits_script(Script script, Script base_script);
	inline bool instance_inherits_script(Object instance, Script base_script);
};


inline Variant ModUtils::parse_jsonc_string(String jsonc) { return this->operator()("parse_jsonc_string", jsonc); }
inline Variant ModUtils::get_or_default_error(String what_hint, Variant data, String field, Variant default_, bool is_optional, Variant enum_map) { return this->operator()("get_or_default_error", what_hint, data, field, default_, is_optional, enum_map); }
inline Image ModUtils::load_image(String path) { return Image(this->operator()("load_image", path).as_object().address()); }
inline bool ModUtils::script_inherits_script(Script script, Script base_script) { return this->operator()("script_inherits_script", script, base_script); }
inline bool ModUtils::instance_inherits_script(Object instance, Script base_script) { return this->operator()("instance_inherits_script", instance, base_script); }

#endif
