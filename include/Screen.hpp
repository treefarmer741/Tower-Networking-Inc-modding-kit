#ifndef TNI_API_HEADER_SCREEN
#define TNI_API_HEADER_SCREEN
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Screen : public Container {
	using Container::Container;

	constexpr Screen(Container base) : Container{base} {}
	constexpr Screen(uint64_t addr) : Container{addr} {}
	constexpr Screen(Object obj) : Screen{obj.address()} {}
	Screen(Variant variant) : Screen{variant.as_object().address()} {}


	PROPERTY(toast_control, Control);
	PROPERTY(main_control, Control);

	inline void toast(String msg, int64_t duration);
};


inline void Screen::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }

#endif
