#ifndef TNI_API_HEADER_STICKYNOTE
#define TNI_API_HEADER_STICKYNOTE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod will with updated headers may be required!

#include <api.hpp>

struct StickyNote : public Area2D {
	using Area2D::Area2D;

	enum StickyColor : int64_t {  // NOTE: You may need to recompile your mod if this enum changes!
		YELLOW = 0,
		RED = 1,
		GREEN = 2,
		BLUE = 3,
		PURPLE = 4,
	};

	StickyNote(Variant variant) : StickyNote{variant.as_object().address()} {}

	PROPERTY(note, Variant);
	PROPERTY(sprite, Variant);
	PROPERTY(tear_sfx, Variant);
	PROPERTY(content, String);
	PROPERTY(note_color, int64_t);
	PROPERTY(height_offset, double);

	inline Variant get_color_map() { return operator()("get_color_map"); }
	inline Variant clone() { return operator()("clone"); }
	inline void tear(bool destroy) { voidcall("tear", destroy); }
	inline void update_note(String c, int64_t nc) { voidcall("update_note", c, nc); }
	inline void disable_collision() { voidcall("disable_collision"); }
	inline void enable_collision() { voidcall("enable_collision"); }
	inline void stick_to_pos(Variant global_mouse_pos) { voidcall("stick_to_pos", global_mouse_pos); }
};

#endif
