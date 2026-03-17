#ifndef TNI_API_HEADER_SECONDMONACTIVATOR
#define TNI_API_HEADER_SECONDMONACTIVATOR
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SecondMonActivator : public Control {
	using Control::Control;

	constexpr SecondMonActivator(Control base) : Control{base} {}
	constexpr SecondMonActivator(uint64_t addr) : Control{addr} {}
	constexpr SecondMonActivator(Object obj) : SecondMonActivator{obj.address()} {}
	SecondMonActivator(Variant variant) : SecondMonActivator{variant.as_object().address()} {}


	PROPERTY(activate_button, Button);

	inline void update();
};


inline void SecondMonActivator::update() { voidcall("update"); }

#endif
