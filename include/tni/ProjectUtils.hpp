#ifndef TNI_API_HEADER_PROJECTUTILS
#define TNI_API_HEADER_PROJECTUTILS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ProjectUtils : public Object {
	using Object::Object;

	constexpr ProjectUtils(Object base) : Object{base} {}
	constexpr ProjectUtils(uint64_t addr) : Object{addr} {}
	ProjectUtils(Variant variant) : ProjectUtils{variant.as_object().address()} {}

	PROPERTY(POCOSIA_PROJECT_DEFAULTS, Dictionary);  // enum of non-integer type


	inline void export_pocosia_defaults(String exported_cfg_path, bool force_override, Variant skip_defaults);
};


inline void ProjectUtils::export_pocosia_defaults(String exported_cfg_path, bool force_override, Variant skip_defaults) { voidcall("export_pocosia_defaults", exported_cfg_path, force_override, skip_defaults); }

#endif
