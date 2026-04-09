#ifndef TNI_API_HEADER_BARRACKS
#define TNI_API_HEADER_BARRACKS
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct Barracks : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr Barracks(ScreenApp base) : ScreenApp{base} {}
	constexpr Barracks(uint64_t addr) : ScreenApp{addr} {}
	constexpr Barracks(Object obj) : Barracks{obj.address()} {}
	Barracks(Variant variant) : Barracks{variant.as_object().address()} {}

	static constexpr int64_t rack_removal_price = 25;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(r_install, Container);
	PROPERTY(r_remove, Container);
	PROPERTY(cfmbutton, Button);
	PROPERTY(optcontainer, Container);
	PROPERTY(curr_ghost, CollisionObject2D);
	PROPERTY(curr_rack, Container);
	PROPERTY(placed_ghost, CollisionObject2D);
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

inline void Barracks::launch() { this->voidcall("launch"); }
inline void Barracks::minimize() { this->voidcall("minimize"); }
inline void Barracks::make_rack(NodePath rcpath, Variant rackpos) { this->voidcall("make_rack", rcpath, rackpos); }
inline void Barracks::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void Barracks::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant Barracks::get_main_pane() { return this->operator()("get_main_pane"); }

#endif
