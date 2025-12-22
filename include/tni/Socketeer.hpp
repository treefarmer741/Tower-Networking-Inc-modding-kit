#ifndef TNI_API_HEADER_SOCKETEER
#define TNI_API_HEADER_SOCKETEER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Socketeer : public Container {
	using Container::Container;

	constexpr Socketeer(Container base) : Container{base} {}
	constexpr Socketeer(uint64_t addr) : Container{addr} {}
	constexpr Socketeer(Object obj) : Socketeer{obj.address()} {}
	Socketeer(Variant variant) : Socketeer{variant.as_object().address()} {}


	PROPERTY(placeable_outlets, Variant);
	PROPERTY(socketsel, OptionButton);
	PROPERTY(cfmbutton, Button);
	PROPERTY(placebutton, Button);
	PROPERTY(sviewport, SubViewport);
	PROPERTY(cfmrmbutton, Button);
	PROPERTY(curr_ghost, LinkOutlet);
	PROPERTY(placed_ghost, LinkOutlet);
	PROPERTY(rm_target, LinkOutlet);
	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void launch();
	inline void minimize();
	inline void make_socket(int64_t sockind, Variant sockpos);
	inline void remove_socket(NodePath sockpath);
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
};

#include "LinkOutlet.hpp"
#include "MainPane.hpp"

inline void Socketeer::launch() { voidcall("launch"); }
inline void Socketeer::minimize() { voidcall("minimize"); }
inline void Socketeer::make_socket(int64_t sockind, Variant sockpos) { voidcall("make_socket", sockind, sockpos); }
inline void Socketeer::remove_socket(NodePath sockpath) { voidcall("remove_socket", sockpath); }
inline void Socketeer::clear_dynamic() { voidcall("clear_dynamic"); }
inline void Socketeer::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant Socketeer::get_main_pane() { return operator()("get_main_pane"); }

#endif
