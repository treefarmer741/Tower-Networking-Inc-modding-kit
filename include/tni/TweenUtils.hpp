#ifndef TNI_API_HEADER_TWEENUTILS
#define TNI_API_HEADER_TWEENUTILS
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TweenUtils : public Object {
	using Object::Object;

	constexpr TweenUtils(Object base) : Object{base} {}
	constexpr TweenUtils(uint64_t addr) : Object{addr} {}
	TweenUtils(Variant variant) : TweenUtils{variant.as_object().address()} {}



	inline Variant stop_and_create(Node bind_node, Tween twn1);
};


inline Variant TweenUtils::stop_and_create(Node bind_node, Tween twn1) { return operator()("stop_and_create", bind_node, twn1); }

#endif
