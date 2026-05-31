#ifndef TNI_API_HEADER_DMARKET
#define TNI_API_HEADER_DMARKET
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct Dmarket : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr Dmarket(ScreenApp base) : ScreenApp{base} {}
	constexpr Dmarket(uint64_t addr) : ScreenApp{addr} {}
	constexpr Dmarket(Object obj) : Dmarket{obj.address()} {}
	Dmarket(Variant variant) : Dmarket{variant.as_object().address()} {}


	PROPERTY(merchant_list_item_scene, PackedScene);
	PROPERTY(device_listing_cart_item_scene, PackedScene);
	PROPERTY(current_merchant, DeviceMerchant);
	PROPERTY(current_checkout, Variant);
	PROPERTY(exit_button, Button);
	PROPERTY(mrch_button, Button);
	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void launch();
	inline void display_merchants();
	inline void display_listings();
	inline void renew_cart_state();
	inline void show_final_screen();
	inline void show_pingback(Variant msg);
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
	inline void minimize();
};

#include "DeviceMerchant.hpp"
#include "MainPane.hpp"

inline void Dmarket::launch() { this->voidcall("launch"); }
inline void Dmarket::display_merchants() { this->voidcall("display_merchants"); }
inline void Dmarket::display_listings() { this->voidcall("display_listings"); }
inline void Dmarket::renew_cart_state() { this->voidcall("renew_cart_state"); }
inline void Dmarket::show_final_screen() { this->voidcall("show_final_screen"); }
inline void Dmarket::show_pingback(Variant msg) { this->voidcall("show_pingback", msg); }
inline void Dmarket::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void Dmarket::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant Dmarket::get_main_pane() { return this->operator()("get_main_pane"); }
inline void Dmarket::minimize() { this->voidcall("minimize"); }

#endif
