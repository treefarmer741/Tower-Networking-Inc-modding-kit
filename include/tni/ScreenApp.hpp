#ifndef TNI_API_HEADER_SCREENAPP
#define TNI_API_HEADER_SCREENAPP
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ScreenApp : public Container {
	using Container::Container;

	constexpr ScreenApp(Container base) : Container{base} {}
	constexpr ScreenApp(uint64_t addr) : Container{addr} {}
	constexpr ScreenApp(Object obj) : ScreenApp{obj.address()} {}
	ScreenApp(Variant variant) : ScreenApp{variant.as_object().address()} {}


	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
	inline void minimize();
	inline void launch();
};

#include "MainPane.hpp"

inline void ScreenApp::clear_dynamic() { voidcall("clear_dynamic"); }
inline void ScreenApp::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant ScreenApp::get_main_pane() { return operator()("get_main_pane"); }
inline void ScreenApp::minimize() { voidcall("minimize"); }
inline void ScreenApp::launch() { voidcall("launch"); }

#endif
