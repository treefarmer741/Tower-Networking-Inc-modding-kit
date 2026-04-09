#ifndef TNI_API_HEADER_LIVEMUX
#define TNI_API_HEADER_LIVEMUX
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct LiveMux : public Control {
	using Control::Control;

	constexpr LiveMux(Control base) : Control{base} {}
	constexpr LiveMux(uint64_t addr) : Control{addr} {}
	constexpr LiveMux(Object obj) : LiveMux{obj.address()} {}
	LiveMux(Variant variant) : LiveMux{variant.as_object().address()} {}


	PROPERTY(monitoring_obj, Object);
	PROPERTY(rtlabel, RichTextLabel);

};



#endif
