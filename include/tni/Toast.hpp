#ifndef TNI_API_HEADER_TOAST
#define TNI_API_HEADER_TOAST
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct Toast : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr Toast(PanelContainer base) : PanelContainer{base} {}
	constexpr Toast(uint64_t addr) : PanelContainer{addr} {}
	constexpr Toast(Object obj) : Toast{obj.address()} {}
	Toast(Variant variant) : Toast{variant.as_object().address()} {}



	inline void toast(String msg, int64_t duration);
	inline void clear_toast();
};


inline void Toast::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline void Toast::clear_toast() { this->voidcall("clear_toast"); }

#endif
