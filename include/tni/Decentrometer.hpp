#ifndef TNI_API_HEADER_DECENTROMETER
#define TNI_API_HEADER_DECENTROMETER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Decentrometer : public Container {
	using Container::Container;

	constexpr Decentrometer(Container base) : Container{base} {}
	constexpr Decentrometer(uint64_t addr) : Container{addr} {}
	constexpr Decentrometer(Object obj) : Decentrometer{obj.address()} {}
	Decentrometer(Variant variant) : Decentrometer{variant.as_object().address()} {}


	PROPERTY(node_item_scn, PackedScene);
	PROPERTY(an_container, Container);
	PROPERTY(sf_container, Container);
	PROPERTY(ex_amt_display, Label);
	PROPERTY(ex_tot_display, Label);
	PROPERTY(ex_buy_price_display, Label);
	PROPERTY(ex_sell_price_display, Label);
	PROPERTY(ex_arb_price_display, Label);
	PROPERTY(ex_exec_button, Button);
	PROPERTY(ex_opt_button, OptionButton);
	PROPERTY(ex_amt_slider, HSlider);
	PROPERTY(ex_refresh_tim, Timer);
	PROPERTY(ex_ordcd_tim, Timer);
	PROPERTY(ndsel_button, OptionButton);
	PROPERTY(ndtot_label, Label);
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

inline void Decentrometer::launch() { voidcall("launch"); }
inline void Decentrometer::minimize() { voidcall("minimize"); }
inline void Decentrometer::clear_dynamic() { voidcall("clear_dynamic"); }
inline void Decentrometer::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant Decentrometer::get_main_pane() { return operator()("get_main_pane"); }

#endif
