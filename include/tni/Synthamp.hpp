#ifndef TNI_API_HEADER_SYNTHAMP
#define TNI_API_HEADER_SYNTHAMP
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Synthamp : public Container {
	using Container::Container;

	constexpr Synthamp(Container base) : Container{base} {}
	constexpr Synthamp(uint64_t addr) : Container{addr} {}
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

inline void Synthamp::launch() { voidcall("launch"); }
inline void Synthamp::minimize() { voidcall("minimize"); }
inline Variant Synthamp::map_float_to_volume_db(double inp) { return operator()("map_float_to_volume_db", inp); }
inline void Synthamp::clear_dynamic() { voidcall("clear_dynamic"); }
inline void Synthamp::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant Synthamp::get_main_pane() { return operator()("get_main_pane"); }

#endif
