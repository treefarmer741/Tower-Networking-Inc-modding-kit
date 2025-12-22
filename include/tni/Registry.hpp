#ifndef TNI_API_HEADER_REGISTRY
#define TNI_API_HEADER_REGISTRY
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Registry : public Container {
	using Container::Container;

	constexpr Registry(Container base) : Container{base} {}
	constexpr Registry(uint64_t addr) : Container{addr} {}
	constexpr Registry(Object obj) : Registry{obj.address()} {}
	Registry(Variant variant) : Registry{variant.as_object().address()} {}

	PROPERTY(di_scn, Variant);  // Const value type was not supported.

	PROPERTY(reg_page, Container);
	PROPERTY(main_page, Container);
	PROPERTY(list_page, Container);
	PROPERTY(final_page, Container);
	PROPERTY(kbpage_active, bool);
	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void hide_all();
	inline void back_to_main();
	inline void show_domain_list();
	inline void launch();
	inline void minimize();
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
};

#include "MainPane.hpp"

inline void Registry::hide_all() { voidcall("hide_all"); }
inline void Registry::back_to_main() { voidcall("back_to_main"); }
inline void Registry::show_domain_list() { voidcall("show_domain_list"); }
inline void Registry::launch() { voidcall("launch"); }
inline void Registry::minimize() { voidcall("minimize"); }
inline void Registry::clear_dynamic() { voidcall("clear_dynamic"); }
inline void Registry::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant Registry::get_main_pane() { return operator()("get_main_pane"); }

#endif
