#ifndef TNI_API_HEADER_WHITEBOARD
#define TNI_API_HEADER_WHITEBOARD
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct Whiteboard : public Area2D {
	using Area2D::Area2D;

	constexpr Whiteboard(Area2D base) : Area2D{base} {}
	constexpr Whiteboard(uint64_t addr) : Area2D{addr} {}
	constexpr Whiteboard(Object obj) : Whiteboard{obj.address()} {}
	Whiteboard(Variant variant) : Whiteboard{variant.as_object().address()} {}

	static constexpr int64_t ZINDEX = 1500;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(product_name, String);
	PROPERTY(rendered_description, String);
	PROPERTY(price, int64_t);
	PROPERTY(alternate_listing_image, Variant);

	inline void start_dragging(Variant mpos);
	inline void update_drag(Variant mpos);
	inline void stop_dragging();
	inline void adjust_height_by_location();
	inline void try_accept_sticky_note(String content, Variant color, int64_t font_index, Variant world_pos);
	inline void elevator_move(Variant new_pos);
};


inline void Whiteboard::start_dragging(Variant mpos) { this->voidcall("start_dragging", mpos); }
inline void Whiteboard::update_drag(Variant mpos) { this->voidcall("update_drag", mpos); }
inline void Whiteboard::stop_dragging() { this->voidcall("stop_dragging"); }
inline void Whiteboard::adjust_height_by_location() { this->voidcall("adjust_height_by_location"); }
inline void Whiteboard::try_accept_sticky_note(String content, Variant color, int64_t font_index, Variant world_pos) { this->voidcall("try_accept_sticky_note", content, color, font_index, world_pos); }
inline void Whiteboard::elevator_move(Variant new_pos) { this->voidcall("elevator_move", new_pos); }

#endif
