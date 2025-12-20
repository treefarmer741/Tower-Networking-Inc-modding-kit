#ifndef TNI_API_HEADER_SURVEYOR
#define TNI_API_HEADER_SURVEYOR
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Surveyor : public Container {
	using Container::Container;

	constexpr Surveyor(Container base) : Container{base} {}
	constexpr Surveyor(uint64_t addr) : Container{addr} {}
	constexpr Surveyor(Object obj) : Surveyor{obj.address()} {}
	Surveyor(Variant variant) : Surveyor{variant.as_object().address()} {}

	static constexpr double satiety_per_color_level = 3.0;  // NOTE: You should recompile your mod if this value changes!
	PROPERTY(satiety_level_color, Variant);  // Const value type was not supported.

	PROPERTY(user_list_item_scene, PackedScene);
	PROPERTY(user_detail_panel_scene, PackedScene);
	PROPERTY(floor_list_item_scene, PackedScene);
	PROPERTY(floor_detail_panel_scene, PackedScene);
	PROPERTY(user_total_lbl, Label);
	PROPERTY(main_scroll_last_vscroll, int64_t);
	PROPERTY(search_text, String);
	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline Variant get_color_on_satiety(double test_sat_ratio, double min_sat_ratio);
	inline void launch();
	inline void show_survey_page();
	inline void minimize();
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
};

#include "MainPane.hpp"

inline Variant Surveyor::get_color_on_satiety(double test_sat_ratio, double min_sat_ratio) { return operator()("get_color_on_satiety", test_sat_ratio, min_sat_ratio); }
inline void Surveyor::launch() { voidcall("launch"); }
inline void Surveyor::show_survey_page() { voidcall("show_survey_page"); }
inline void Surveyor::minimize() { voidcall("minimize"); }
inline void Surveyor::clear_dynamic() { voidcall("clear_dynamic"); }
inline void Surveyor::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant Surveyor::get_main_pane() { return operator()("get_main_pane"); }

#endif
