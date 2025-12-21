#ifndef TNI_API_HEADER_HINTBOARD
#define TNI_API_HEADER_HINTBOARD
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct HintBoard : public Control {
	using Control::Control;

	constexpr HintBoard(Control base) : Control{base} {}
	constexpr HintBoard(uint64_t addr) : Control{addr} {}
	constexpr HintBoard(Object obj) : HintBoard{obj.address()} {}
	HintBoard(Variant variant) : HintBoard{variant.as_object().address()} {}


	PROPERTY(quick_reference_container, Variant);
	PROPERTY(quick_reference_minimize_button, Variant);
	PROPERTY(complete_guide_container, Variant);
	PROPERTY(complete_guide_minimize_button, Variant);

	inline void cleanup();
};


inline void HintBoard::cleanup() { voidcall("cleanup"); }

#endif
