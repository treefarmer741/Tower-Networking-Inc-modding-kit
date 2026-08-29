#ifndef TNI_API_HEADER_SURVIVALLOAN
#define TNI_API_HEADER_SURVIVALLOAN
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct SurvivalLoan : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr SurvivalLoan(ScreenApp base) : ScreenApp{base} {}
	constexpr SurvivalLoan(uint64_t addr) : ScreenApp{addr} {}
	constexpr SurvivalLoan(Object obj) : SurvivalLoan{obj.address()} {}
	SurvivalLoan(Variant variant) : SurvivalLoan{variant.as_object().address()} {}


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

inline void SurvivalLoan::launch() { this->voidcall("launch"); }
inline void SurvivalLoan::minimize() { this->voidcall("minimize"); }
inline void SurvivalLoan::show_pingback(String msg, Variant on_confirm) { this->voidcall("show_pingback", msg, on_confirm); }
inline void SurvivalLoan::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void SurvivalLoan::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant SurvivalLoan::get_main_pane() { return this->operator()("get_main_pane"); }

#endif
