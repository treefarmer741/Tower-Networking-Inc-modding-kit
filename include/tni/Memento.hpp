#ifndef TNI_API_HEADER_MEMENTO
#define TNI_API_HEADER_MEMENTO
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Memento : public Container {
	using Container::Container;

	constexpr Memento(Container base) : Container{base} {}
	constexpr Memento(uint64_t addr) : Container{addr} {}
	constexpr Memento(Object obj) : Memento{obj.address()} {}
	Memento(Variant variant) : Memento{variant.as_object().address()} {}


	PROPERTY(main_tab, TabContainer);
	PROPERTY(dns_entries_ctl, Container);
	PROPERTY(netaddr_assigns, Container);
	PROPERTY(devunit_tracker, Container);
	PROPERTY(ri_scn, PackedScene);
	PROPERTY(dut_scn, PackedScene);
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

inline void Memento::launch() { voidcall("launch"); }
inline void Memento::minimize() { voidcall("minimize"); }
inline void Memento::clear_dynamic() { voidcall("clear_dynamic"); }
inline void Memento::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant Memento::get_main_pane() { return operator()("get_main_pane"); }

#endif
