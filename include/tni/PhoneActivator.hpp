#ifndef TNI_API_HEADER_PHONEACTIVATOR
#define TNI_API_HEADER_PHONEACTIVATOR
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PhoneActivator : public Control {
	using Control::Control;

	constexpr PhoneActivator(Control base) : Control{base} {}
	constexpr PhoneActivator(uint64_t addr) : Control{addr} {}
	constexpr PhoneActivator(Object obj) : PhoneActivator{obj.address()} {}
	PhoneActivator(Variant variant) : PhoneActivator{variant.as_object().address()} {}


	PROPERTY(activate_button, Button);

	inline void update();
};


inline void PhoneActivator::update() { voidcall("update"); }

#endif
