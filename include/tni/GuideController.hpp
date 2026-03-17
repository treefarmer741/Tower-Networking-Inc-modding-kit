#ifndef TNI_API_HEADER_GUIDECONTROLLER
#define TNI_API_HEADER_GUIDECONTROLLER
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct GuideController : public Node {
	using Node::Node;

	constexpr GuideController(Node base) : Node{base} {}
	constexpr GuideController(uint64_t addr) : Node{addr} {}
	constexpr GuideController(Object obj) : GuideController{obj.address()} {}
	GuideController(Variant variant) : GuideController{variant.as_object().address()} {}


	PROPERTY(static_watch, Variant);
	PROPERTY(globally_disabled, bool);

	inline void cleanup();
	inline void mark_guide_complete(String guide_name);
};


inline void GuideController::cleanup() { voidcall("cleanup"); }
inline void GuideController::mark_guide_complete(String guide_name) { voidcall("mark_guide_complete", guide_name); }

#endif
