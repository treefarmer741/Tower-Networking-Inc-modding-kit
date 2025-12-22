#ifndef TNI_API_HEADER_BARRACKS
#define TNI_API_HEADER_BARRACKS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Barracks : public Container {
	using Container::Container;

	constexpr Barracks(Container base) : Container{base} {}
	constexpr Barracks(uint64_t addr) : Container{addr} {}
	constexpr Barracks(Object obj) : Barracks{obj.address()} {}
	Barracks(Variant variant) : Barracks{variant.as_object().address()} {}

	static constexpr int64_t rack_removal_price = 25;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(r_install, Container);
	PROPERTY(r_remove, Container);
	PROPERTY(cfmbutton, Button);
	PROPERTY(optcontainer, Container);
	PROPERTY(curr_ghost, StaticBody2D);
	PROPERTY(curr_rack, Container);
	PROPERTY(placed_ghost, StaticBody2D);
	PROPERTY(curr_removal_target, Rack);
	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void launch();
	inline void minimize();
	inline void make_rack(NodePath rcpath, Variant rackpos);
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
};

#include "Rack.hpp"
#include "MainPane.hpp"

inline void Barracks::launch() { voidcall("launch"); }
inline void Barracks::minimize() { voidcall("minimize"); }
inline void Barracks::make_rack(NodePath rcpath, Variant rackpos) { voidcall("make_rack", rcpath, rackpos); }
inline void Barracks::clear_dynamic() { voidcall("clear_dynamic"); }
inline void Barracks::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant Barracks::get_main_pane() { return operator()("get_main_pane"); }

#endif
