#ifndef TNI_API_HEADER_DMARKETV2
#define TNI_API_HEADER_DMARKETV2
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct Dmarketv2 : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr Dmarketv2(ScreenApp base) : ScreenApp{base} {}
	constexpr Dmarketv2(uint64_t addr) : ScreenApp{addr} {}
	constexpr Dmarketv2(Object obj) : Dmarketv2{obj.address()} {}
	Dmarketv2(Variant variant) : Dmarketv2{variant.as_object().address()} {}


	PROPERTY(lstv2scn, PackedScene);
	PROPERTY(togsrchbtn, Button);
	PROPERTY(searchdtype, OptionButton);
	PROPERTY(searchctn, Container);
	PROPERTY(mrchtype, OptionButton);
	PROPERTY(chkoctl, Container);
	PROPERTY(lstctn, Container);
	PROPERTY(keyworde, LineEdit);
	PROPERTY(merchinfopan, Container);
	PROPERTY(geneinfopan, Container);
	PROPERTY(final_screen, Container);
	PROPERTY(delivery_floor_sel, ItemList);
	PROPERTY(fwd_button, Button);
	PROPERTY(clr_button, Button);
	PROPERTY(current_local_cart, Variant);
	PROPERTY(dlist, Variant);
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

inline void Dmarketv2::launch() { this->voidcall("launch"); }
inline void Dmarketv2::minimize() { this->voidcall("minimize"); }
inline void Dmarketv2::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void Dmarketv2::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant Dmarketv2::get_main_pane() { return this->operator()("get_main_pane"); }

#endif
