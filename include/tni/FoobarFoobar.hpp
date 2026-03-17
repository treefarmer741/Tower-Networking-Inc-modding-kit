#ifndef TNI_API_HEADER_FOOBARFOOBAR
#define TNI_API_HEADER_FOOBARFOOBAR
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct FoobarFoobar : public Container {
	using Container::Container;

	constexpr FoobarFoobar(Container base) : Container{base} {}
	constexpr FoobarFoobar(uint64_t addr) : Container{addr} {}
	constexpr FoobarFoobar(Object obj) : FoobarFoobar{obj.address()} {}
	FoobarFoobar(Variant variant) : FoobarFoobar{variant.as_object().address()} {}


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

inline void FoobarFoobar::launch() { voidcall("launch"); }
inline void FoobarFoobar::minimize() { voidcall("minimize"); }
inline void FoobarFoobar::clear_dynamic() { voidcall("clear_dynamic"); }
inline void FoobarFoobar::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant FoobarFoobar::get_main_pane() { return operator()("get_main_pane"); }

#endif
