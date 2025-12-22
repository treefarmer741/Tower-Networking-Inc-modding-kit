#ifndef TNI_API_HEADER_SPLASH
#define TNI_API_HEADER_SPLASH
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Splash : public Control {
	using Control::Control;

	constexpr Splash(Control base) : Control{base} {}
	constexpr Splash(uint64_t addr) : Control{addr} {}
	constexpr Splash(Object obj) : Splash{obj.address()} {}
	Splash(Variant variant) : Splash{variant.as_object().address()} {}



};



#endif
