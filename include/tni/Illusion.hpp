#ifndef TNI_API_HEADER_ILLUSION
#define TNI_API_HEADER_ILLUSION
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct Illusion : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr Illusion(ScreenApp base) : ScreenApp{base} {}
	constexpr Illusion(uint64_t addr) : ScreenApp{addr} {}
	constexpr Illusion(Object obj) : Illusion{obj.address()} {}
	Illusion(Variant variant) : Illusion{variant.as_object().address()} {}


	PROPERTY(curr_vw, WebView);
	PROPERTY(mouse_in_webview, bool);
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

inline void Illusion::launch() { this->voidcall("launch"); }
inline void Illusion::minimize() { this->voidcall("minimize"); }
inline void Illusion::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void Illusion::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant Illusion::get_main_pane() { return this->operator()("get_main_pane"); }

#endif
