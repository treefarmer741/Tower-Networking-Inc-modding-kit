#ifndef TNI_API_HEADER_BREAKTIME
#define TNI_API_HEADER_BREAKTIME
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct Breaktime : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr Breaktime(ScreenApp base) : ScreenApp{base} {}
	constexpr Breaktime(uint64_t addr) : ScreenApp{addr} {}
	constexpr Breaktime(Object obj) : Breaktime{obj.address()} {}
	Breaktime(Variant variant) : Breaktime{variant.as_object().address()} {}

	static constexpr double CDFTIME = 3.0;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(speedup_button, Button);
	PROPERTY(slowdown_button, Button);
	PROPERTY(reset_button, Button);
	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void launch();
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
	inline void minimize();
};

#include "MainPane.hpp"

inline void Breaktime::launch() { this->voidcall("launch"); }
inline void Breaktime::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void Breaktime::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant Breaktime::get_main_pane() { return this->operator()("get_main_pane"); }
inline void Breaktime::minimize() { this->voidcall("minimize"); }

#endif
