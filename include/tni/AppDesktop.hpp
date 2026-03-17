#ifndef TNI_API_HEADER_APPDESKTOP
#define TNI_API_HEADER_APPDESKTOP
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct AppDesktop : public Container {
	using Container::Container;

	constexpr AppDesktop(Container base) : Container{base} {}
	constexpr AppDesktop(uint64_t addr) : Container{addr} {}
	constexpr AppDesktop(Object obj) : AppDesktop{obj.address()} {}
	AppDesktop(Variant variant) : AppDesktop{variant.as_object().address()} {}


	PROPERTY(home, Variant);
	PROPERTY(main, Variant);
	PROPERTY(header, Variant);
	PROPERTY(toast_control, Control);
	PROPERTY(main_control, Control);

	inline void on_power_off();
	inline void on_power_restored();
	inline void toast(String msg, int64_t duration);
};


inline void AppDesktop::on_power_off() { voidcall("on_power_off"); }
inline void AppDesktop::on_power_restored() { voidcall("on_power_restored"); }
inline void AppDesktop::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }

#endif
