#ifndef TNI_API_HEADER_STICKYPRINT
#define TNI_API_HEADER_STICKYPRINT
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Stickyprint : public Container {
	using Container::Container;

	constexpr Stickyprint(Container base) : Container{base} {}
	constexpr Stickyprint(uint64_t addr) : Container{addr} {}
	constexpr Stickyprint(Object obj) : Stickyprint{obj.address()} {}
	Stickyprint(Variant variant) : Stickyprint{variant.as_object().address()} {}

	static constexpr int64_t COST_PER_PRINT = 6;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(labeledit, TextEdit);
	PROPERTY(colorsel, OptionButton);
	PROPERTY(printbut, Button);
	PROPERTY(fineprint, Label);
	PROPERTY(quitbut, Button);
	PROPERTY(sticky_ghost, Node2D);
	PROPERTY(sticky_scn, PackedScene);
	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void launch();
	inline void minimize();
	inline void spawn_sticky(Variant lblc, Variant nc, Variant global_pos, Variant parent_path);
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
};

#include "MainPane.hpp"

inline void Stickyprint::launch() { voidcall("launch"); }
inline void Stickyprint::minimize() { voidcall("minimize"); }
inline void Stickyprint::spawn_sticky(Variant lblc, Variant nc, Variant global_pos, Variant parent_path) { voidcall("spawn_sticky", lblc, nc, global_pos, parent_path); }
inline void Stickyprint::clear_dynamic() { voidcall("clear_dynamic"); }
inline void Stickyprint::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant Stickyprint::get_main_pane() { return operator()("get_main_pane"); }

#endif
