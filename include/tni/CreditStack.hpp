#ifndef TNI_API_HEADER_CREDITSTACK
#define TNI_API_HEADER_CREDITSTACK
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct CreditStack : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr CreditStack(ScreenApp base) : ScreenApp{base} {}
	constexpr CreditStack(uint64_t addr) : ScreenApp{addr} {}
	constexpr CreditStack(Object obj) : CreditStack{obj.address()} {}
	CreditStack(Variant variant) : CreditStack{variant.as_object().address()} {}


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

inline void CreditStack::launch() { this->voidcall("launch"); }
inline void CreditStack::minimize() { this->voidcall("minimize"); }
inline void CreditStack::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void CreditStack::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant CreditStack::get_main_pane() { return this->operator()("get_main_pane"); }

#endif
