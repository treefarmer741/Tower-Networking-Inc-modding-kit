#ifndef TNI_API_HEADER_FISHLOAN
#define TNI_API_HEADER_FISHLOAN
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct FishLoan : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr FishLoan(ScreenApp base) : ScreenApp{base} {}
	constexpr FishLoan(uint64_t addr) : ScreenApp{addr} {}
	constexpr FishLoan(Object obj) : FishLoan{obj.address()} {}
	FishLoan(Variant variant) : FishLoan{variant.as_object().address()} {}


	PROPERTY(loan_offer_item_scn, PackedScene);
	PROPERTY(loan_list_item_scn, PackedScene);
	PROPERTY(showing_loanlist, bool);
	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void launch();
	inline void minimize();
	inline void show_pingback(String msg, Variant on_confirm);
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
};

#include "MainPane.hpp"

inline void FishLoan::launch() { this->voidcall("launch"); }
inline void FishLoan::minimize() { this->voidcall("minimize"); }
inline void FishLoan::show_pingback(String msg, Variant on_confirm) { this->voidcall("show_pingback", msg, on_confirm); }
inline void FishLoan::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void FishLoan::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant FishLoan::get_main_pane() { return this->operator()("get_main_pane"); }

#endif
