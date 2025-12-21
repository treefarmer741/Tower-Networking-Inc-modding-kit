#ifndef TNI_API_HEADER_STICKYNOTE
#define TNI_API_HEADER_STICKYNOTE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct StickyNote : public Area2D {
	using Area2D::Area2D;

	constexpr StickyNote(Area2D base) : Area2D{base} {}
	constexpr StickyNote(uint64_t addr) : Area2D{addr} {}
	constexpr StickyNote(Object obj) : StickyNote{obj.address()} {}
	StickyNote(Variant variant) : StickyNote{variant.as_object().address()} {}

	enum StickyColor : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		YELLOW = 0,
		RED = 1,
		GREEN = 2,
		BLUE = 3,
		PURPLE = 4,
	};

	PROPERTY(note, Label);
	PROPERTY(sprite, Sprite2D);
	PROPERTY(tear_sfx, AudioStreamPlayer2D);
	PROPERTY(content, String);
	PROPERTY(note_color, int64_t);
	PROPERTY(height_offset, double);

	inline Variant get_color_map();
	inline Variant clone();
	inline void tear(bool destroy);
	inline void update_note(String c, int64_t nc);
	inline void disable_collision();
	inline void enable_collision();
	inline void stick_to_pos(Variant global_mouse_pos);
};


inline Variant StickyNote::get_color_map() { return operator()("get_color_map"); }
inline Variant StickyNote::clone() { return operator()("clone"); }
inline void StickyNote::tear(bool destroy) { voidcall("tear", destroy); }
inline void StickyNote::update_note(String c, int64_t nc) { voidcall("update_note", c, nc); }
inline void StickyNote::disable_collision() { voidcall("disable_collision"); }
inline void StickyNote::enable_collision() { voidcall("enable_collision"); }
inline void StickyNote::stick_to_pos(Variant global_mouse_pos) { voidcall("stick_to_pos", global_mouse_pos); }

#endif
