#ifndef TNI_API_HEADER_FLASHPOPFX
#define TNI_API_HEADER_FLASHPOPFX
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct FlashpopFx : public Node2D {
	using Node2D::Node2D;

	constexpr FlashpopFx(Node2D base) : Node2D{base} {}
	constexpr FlashpopFx(uint64_t addr) : Node2D{addr} {}
	constexpr FlashpopFx(Object obj) : FlashpopFx{obj.address()} {}
	FlashpopFx(Variant variant) : FlashpopFx{variant.as_object().address()} {}


	PROPERTY(effects_group, int64_t);

	inline void trigger();
	inline void stop();
};


inline void FlashpopFx::trigger() { voidcall("trigger"); }
inline void FlashpopFx::stop() { voidcall("stop"); }

#endif
