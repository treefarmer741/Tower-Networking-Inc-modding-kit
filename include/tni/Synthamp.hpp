#ifndef TNI_API_HEADER_SYNTHAMP
#define TNI_API_HEADER_SYNTHAMP
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct Synthamp : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr Synthamp(ScreenApp base) : ScreenApp{base} {}
	constexpr Synthamp(uint64_t addr) : ScreenApp{addr} {}
	constexpr Synthamp(Object obj) : Synthamp{obj.address()} {}
	Synthamp(Variant variant) : Synthamp{variant.as_object().address()} {}


	PROPERTY(avpanel, Container);
	PROPERTY(playnmlb, Label);
	PROPERTY(shuffle_btn, Button);
	PROPERTY(vol_slider, HSlider);
	PROPERTY(playlist, ItemList);
	PROPERTY(is_shuffling, bool);
	PROPERTY(bgmplkup, Variant);
	PROPERTY(bgmrvlkup, Variant);
	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void launch();
	inline void minimize();
	inline Variant map_float_to_volume_db(double inp);
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
};

#include "MainPane.hpp"

inline void Synthamp::launch() { this->voidcall("launch"); }
inline void Synthamp::minimize() { this->voidcall("minimize"); }
inline Variant Synthamp::map_float_to_volume_db(double inp) { return this->operator()("map_float_to_volume_db", inp); }
inline void Synthamp::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void Synthamp::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant Synthamp::get_main_pane() { return this->operator()("get_main_pane"); }

#endif
