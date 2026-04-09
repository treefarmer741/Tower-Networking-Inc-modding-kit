#ifndef TNI_API_HEADER_FOOBARFOOBAR
#define TNI_API_HEADER_FOOBARFOOBAR
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct FoobarFoobar : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr FoobarFoobar(ScreenApp base) : ScreenApp{base} {}
	constexpr FoobarFoobar(uint64_t addr) : ScreenApp{addr} {}
	constexpr FoobarFoobar(Object obj) : FoobarFoobar{obj.address()} {}
	FoobarFoobar(Variant variant) : FoobarFoobar{variant.as_object().address()} {}


	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void launch();
	inline void minimize();
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
};

#include "MainPane.hpp"

inline void FoobarFoobar::launch() { this->voidcall("launch"); }
inline void FoobarFoobar::minimize() { this->voidcall("minimize"); }
inline void FoobarFoobar::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void FoobarFoobar::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant FoobarFoobar::get_main_pane() { return this->operator()("get_main_pane"); }

#endif
