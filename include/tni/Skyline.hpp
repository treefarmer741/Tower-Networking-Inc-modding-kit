#ifndef TNI_API_HEADER_SKYLINE
#define TNI_API_HEADER_SKYLINE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Skyline : public Container {
	using Container::Container;

	constexpr Skyline(Container base) : Container{base} {}
	constexpr Skyline(uint64_t addr) : Container{addr} {}
	constexpr Skyline(Object obj) : Skyline{obj.address()} {}
	Skyline(Variant variant) : Skyline{variant.as_object().address()} {}


	PROPERTY(summoned_cabin_dst, int64_t);
	PROPERTY(current_call_dst, int64_t);
	PROPERTY(current_floor, Location);
	PROPERTY(current_call_fee, int64_t);
	PROPERTY(current_call_time, double);
	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void launch();
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
	inline void minimize();
};

#include "Location.hpp"
#include "MainPane.hpp"

inline void Skyline::launch() { voidcall("launch"); }
inline void Skyline::clear_dynamic() { voidcall("clear_dynamic"); }
inline void Skyline::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant Skyline::get_main_pane() { return operator()("get_main_pane"); }
inline void Skyline::minimize() { voidcall("minimize"); }

#endif
