#ifndef TNI_API_HEADER_APPDESKTOP
#define TNI_API_HEADER_APPDESKTOP
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Screen.hpp"

struct AppDesktop : public Screen {
	using Screen::Screen;

	constexpr AppDesktop(Screen base) : Screen{base} {}
	constexpr AppDesktop(uint64_t addr) : Screen{addr} {}
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


inline void AppDesktop::on_power_off() { this->voidcall("on_power_off"); }
inline void AppDesktop::on_power_restored() { this->voidcall("on_power_restored"); }
inline void AppDesktop::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }

#endif
