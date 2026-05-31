#ifndef TNI_API_HEADER_MEMENTO
#define TNI_API_HEADER_MEMENTO
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct Memento : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr Memento(ScreenApp base) : ScreenApp{base} {}
	constexpr Memento(uint64_t addr) : ScreenApp{addr} {}
	constexpr Memento(Object obj) : Memento{obj.address()} {}
	Memento(Variant variant) : Memento{variant.as_object().address()} {}


	PROPERTY(main_tab, TabContainer);
	PROPERTY(dns_entries_ctl, Container);
	PROPERTY(netaddr_assigns, Container);
	PROPERTY(devunit_tracker, Container);
	PROPERTY(cntop, OptionButton);
	PROPERTY(ri_scn, PackedScene);
	PROPERTY(dut_scn, PackedScene);
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

inline void Memento::launch() { this->voidcall("launch"); }
inline void Memento::minimize() { this->voidcall("minimize"); }
inline void Memento::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void Memento::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant Memento::get_main_pane() { return this->operator()("get_main_pane"); }

#endif
