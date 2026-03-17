#ifndef TNI_API_HEADER_SLIDINGSFX
#define TNI_API_HEADER_SLIDINGSFX
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SlidingSfx : public Node2D {
	using Node2D::Node2D;

	constexpr SlidingSfx(Node2D base) : Node2D{base} {}
	constexpr SlidingSfx(uint64_t addr) : Node2D{addr} {}
	constexpr SlidingSfx(Object obj) : SlidingSfx{obj.address()} {}
	SlidingSfx(Variant variant) : SlidingSfx{variant.as_object().address()} {}


	PROPERTY(slide_in, Variant);
	PROPERTY(slide_out, Variant);

	inline void play_slide_in();
	inline void play_slide_out();
};


inline void SlidingSfx::play_slide_in() { voidcall("play_slide_in"); }
inline void SlidingSfx::play_slide_out() { voidcall("play_slide_out"); }

#endif
