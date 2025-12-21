#ifndef TNI_API_HEADER_AVRNETVIEW
#define TNI_API_HEADER_AVRNETVIEW
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct AvrNetView : public SceneTree {
	using SceneTree::SceneTree;

	constexpr AvrNetView(SceneTree base) : SceneTree{base} {}
	constexpr AvrNetView(uint64_t addr) : SceneTree{addr} {}
	constexpr AvrNetView(Object obj) : AvrNetView{obj.address()} {}
	AvrNetView(Variant variant) : AvrNetView{variant.as_object().address()} {}



	inline void setup();
};


inline void AvrNetView::setup() { voidcall("setup"); }

#endif
