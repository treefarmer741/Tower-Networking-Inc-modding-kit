#ifndef TNI_API_HEADER_LAYOUTUTILS
#define TNI_API_HEADER_LAYOUTUTILS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LayoutUtils : public Object {
	using Object::Object;

	constexpr LayoutUtils(Object base) : Object{base} {}
	constexpr LayoutUtils(uint64_t addr) : Object{addr} {}
	LayoutUtils(Variant variant) : LayoutUtils{variant.as_object().address()} {}

	enum AnchorMode : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		TOP_LEFT = 0,
		TOP_CENTER = 1,
		TOP_RIGHT = 2,
		MIDDLE_LEFT = 3,
		MIDDLE_CENTER = 4,
		MIDDLE_RIGHT = 5,
		BOTTOM_LEFT = 6,
		BOTTOM_CENTER = 7,
		BOTTOM_RIGHT = 8,
	};


	inline Variant apply_anchor_mode(Variant original_vec, int64_t anchor_mode, Variant rect_size);
};


inline Variant LayoutUtils::apply_anchor_mode(Variant original_vec, int64_t anchor_mode, Variant rect_size) { return operator()("apply_anchor_mode", original_vec, anchor_mode, rect_size); }

#endif
