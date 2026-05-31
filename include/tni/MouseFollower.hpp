#ifndef TNI_API_HEADER_MOUSEFOLLOWER
#define TNI_API_HEADER_MOUSEFOLLOWER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct MouseFollower : public Control {
	using Control::Control;

	constexpr MouseFollower(Control base) : Control{base} {}
	constexpr MouseFollower(uint64_t addr) : Control{addr} {}
	constexpr MouseFollower(Object obj) : MouseFollower{obj.address()} {}
	MouseFollower(Variant variant) : MouseFollower{variant.as_object().address()} {}



};



#endif
