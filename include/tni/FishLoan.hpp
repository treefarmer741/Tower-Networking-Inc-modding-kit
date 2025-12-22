#ifndef TNI_API_HEADER_FISHLOAN
#define TNI_API_HEADER_FISHLOAN
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct FishLoan : public Container {
	using Container::Container;

	constexpr FishLoan(Container base) : Container{base} {}
	constexpr FishLoan(uint64_t addr) : Container{addr} {}
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

inline void FishLoan::launch() { voidcall("launch"); }
inline void FishLoan::minimize() { voidcall("minimize"); }
inline void FishLoan::show_pingback(String msg, Variant on_confirm) { voidcall("show_pingback", msg, on_confirm); }
inline void FishLoan::clear_dynamic() { voidcall("clear_dynamic"); }
inline void FishLoan::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant FishLoan::get_main_pane() { return operator()("get_main_pane"); }

#endif
