#ifndef TNI_API_HEADER_AUTOGRAPH
#define TNI_API_HEADER_AUTOGRAPH
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct Autograph : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr Autograph(ScreenApp base) : ScreenApp{base} {}
	constexpr Autograph(uint64_t addr) : ScreenApp{addr} {}
	constexpr Autograph(Object obj) : Autograph{obj.address()} {}
	Autograph(Variant variant) : Autograph{variant.as_object().address()} {}

	PROPERTY(white256txt, Variant);  // Const value type was not supported.
	PROPERTY(green256txt, Variant);  // Const value type was not supported.
	PROPERTY(bw_load_color, Variant);  // Const value type was not supported.

	PROPERTY(togcfgbtn, Button);
	PROPERTY(cfgpage, Container);
	PROPERTY(debugger_il, ItemList);
	PROPERTY(nodbglb, Label);
	PROPERTY(main_timer, Timer);
	PROPERTY(controlbar, Container);
	PROPERTY(lastgenindlb, Label);
	PROPERTY(manbutton, Button);
	PROPERTY(autbutton, Button);
	PROPERTY(ndbgpage, Container);
	PROPERTY(graphpage, Container);
	PROPERTY(gd2, OptionButton);
	PROPERTY(gd1, OptionButton);
	PROPERTY(scnex, OptionButton);
	PROPERTY(lblpg, Container);
	PROPERTY(lblpg_lbl, Label);
	PROPERTY(selected_dbg, DeviceUnit);
	PROPERTY(autoscan_state, bool);
	PROPERTY(graph_node_data, Variant);
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

#include "DeviceUnit.hpp"
#include "MainPane.hpp"

inline void Autograph::launch() { this->voidcall("launch"); }
inline void Autograph::minimize() { this->voidcall("minimize"); }
inline void Autograph::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void Autograph::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant Autograph::get_main_pane() { return this->operator()("get_main_pane"); }

#endif
