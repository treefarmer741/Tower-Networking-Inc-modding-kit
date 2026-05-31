#ifndef TNI_API_HEADER_GREETER
#define TNI_API_HEADER_GREETER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct Greeter : public Label {
	using Label::Label;

	constexpr Greeter(Label base) : Label{base} {}
	constexpr Greeter(uint64_t addr) : Label{addr} {}
	constexpr Greeter(Object obj) : Greeter{obj.address()} {}
	Greeter(Variant variant) : Greeter{variant.as_object().address()} {}



};



#endif
