#ifndef TNI_API_HEADER_TOWERLINK
#define TNI_API_HEADER_TOWERLINK
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct TowerLink : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr TowerLink(ScreenApp base) : ScreenApp{base} {}
	constexpr TowerLink(uint64_t addr) : ScreenApp{addr} {}
	constexpr TowerLink(Object obj) : TowerLink{obj.address()} {}
	TowerLink(Variant variant) : TowerLink{variant.as_object().address()} {}


	PROPERTY(tower_link_itm_scn, PackedScene);
	PROPERTY(create_page, Container);
	PROPERTY(view_page, Container);
	PROPERTY(floorsel_a, ItemList);
	PROPERTY(floorsel_b, ItemList);
	PROPERTY(socksel_a, ItemList);
	PROPERTY(socksel_b, ItemList);
	PROPERTY(link_sz_sel, OptionButton);
	PROPERTY(link_bw_lbl, Label);
	PROPERTY(link_ty_lbl, Label);
	PROPERTY(setup_cost_quote_lbl, Label);
	PROPERTY(daily_cost_quote_lbl, Label);
	PROPERTY(link_req_btn, Button);
	PROPERTY(quote_descript, Label);
	PROPERTY(view_selector, OptionButton);
	PROPERTY(view_root_container, Container);
	PROPERTY(view_link_container, Container);
	PROPERTY(view_tower_container, Container);
	PROPERTY(link_view_item_container, Container);
	PROPERTY(view_refresh_timer, Timer);
	PROPERTY(view_search, TextEdit);
	PROPERTY(view_sortsel, OptionButton);
	PROPERTY(same_floor_warning, Label);
	PROPERTY(a_link_sock, LinkOutlet);
	PROPERTY(b_link_sock, LinkOutlet);
	PROPERTY(selected_link_outlets, Variant);
	PROPERTY(tower_view_handler, Variant);
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

#include "LinkOutlet.hpp"
#include "MainPane.hpp"

inline void TowerLink::launch() { this->voidcall("launch"); }
inline void TowerLink::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void TowerLink::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant TowerLink::get_main_pane() { return this->operator()("get_main_pane"); }
inline void TowerLink::minimize() { this->voidcall("minimize"); }

#endif
