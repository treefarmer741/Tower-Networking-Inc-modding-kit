#ifndef TNI_API_HEADER_TROLLEY
#define TNI_API_HEADER_TROLLEY
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Trolley : public Area2D {
	using Area2D::Area2D;

	constexpr Trolley(Area2D base) : Area2D{base} {}
	constexpr Trolley(uint64_t addr) : Area2D{addr} {}
	constexpr Trolley(Object obj) : Trolley{obj.address()} {}
	Trolley(Variant variant) : Trolley{variant.as_object().address()} {}

	static constexpr int64_t ZINDEX = 1500;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(body_tracker, Variant);
	PROPERTY(product_name, String);
	PROPERTY(rendered_description, String);
	PROPERTY(price, int64_t);
	PROPERTY(alternate_listing_image, Variant);
	PROPERTY(target_h, double);
	PROPERTY(drag_start_position, Variant);
	PROPERTY(initial_area_position, Variant);
	PROPERTY(has_blockage_on_right, bool);
	PROPERTY(has_blockage_on_left, bool);

	inline void stop_dragging();
	inline void update_drag(Variant mpos);
	inline void adjust_height_by_location();
	inline void accept_body(Variant body);
	inline void start_dragging(Variant mouse_position);
	inline void elevator_move(Variant new_pos);
	inline void do_mv(Variant new_pos);
	inline Variant debug_monitor_callback();
	inline void remove_and_free_object();
};


inline void Trolley::stop_dragging() { voidcall("stop_dragging"); }
inline void Trolley::update_drag(Variant mpos) { voidcall("update_drag", mpos); }
inline void Trolley::adjust_height_by_location() { voidcall("adjust_height_by_location"); }
inline void Trolley::accept_body(Variant body) { voidcall("accept_body", body); }
inline void Trolley::start_dragging(Variant mouse_position) { voidcall("start_dragging", mouse_position); }
inline void Trolley::elevator_move(Variant new_pos) { voidcall("elevator_move", new_pos); }
inline void Trolley::do_mv(Variant new_pos) { voidcall("do_mv", new_pos); }
inline Variant Trolley::debug_monitor_callback() { return operator()("debug_monitor_callback"); }
inline void Trolley::remove_and_free_object() { voidcall("remove_and_free_object"); }

#endif
