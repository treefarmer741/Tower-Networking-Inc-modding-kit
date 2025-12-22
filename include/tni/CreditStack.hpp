#ifndef TNI_API_HEADER_CREDITSTACK
#define TNI_API_HEADER_CREDITSTACK
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct CreditStack : public Container {
	using Container::Container;

	constexpr CreditStack(Container base) : Container{base} {}
	constexpr CreditStack(uint64_t addr) : Container{addr} {}
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

inline void CreditStack::launch() { voidcall("launch"); }
inline void CreditStack::minimize() { voidcall("minimize"); }
inline void CreditStack::clear_dynamic() { voidcall("clear_dynamic"); }
inline void CreditStack::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant CreditStack::get_main_pane() { return operator()("get_main_pane"); }

#endif
