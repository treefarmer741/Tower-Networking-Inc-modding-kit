#ifndef TNI_API_HEADER_STICKYNOTE
#define TNI_API_HEADER_STICKYNOTE
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct StickyNote : public Area2D {
	using Area2D::Area2D;

	constexpr StickyNote(Area2D base) : Area2D{base} {}
	constexpr StickyNote(uint64_t addr) : Area2D{addr} {}
	constexpr StickyNote(Object obj) : StickyNote{obj.address()} {}
	StickyNote(Variant variant) : StickyNote{variant.as_object().address()} {}

	PROPERTY(FONT_DATA, Variant);  // Const value type was not supported.

	PROPERTY(note, Label);
	PROPERTY(bg, ColorRect);
	PROPERTY(tear_sfx, AudioStreamPlayer2D);
	PROPERTY(content, String);
	PROPERTY(note_color, Variant);
	PROPERTY(font_index, int64_t);
	PROPERTY(height_offset, double);

	inline Variant clone();
	inline void tear(bool destroy);
	inline void update_note(String c, Variant nc, int64_t fi);
	inline void disable_collision();
	inline void enable_collision();
	inline void stick_to_pos(Variant global_mouse_pos);
};


inline Variant StickyNote::clone() { return this->operator()("clone"); }
inline void StickyNote::tear(bool destroy) { this->voidcall("tear", destroy); }
inline void StickyNote::update_note(String c, Variant nc, int64_t fi) { this->voidcall("update_note", c, nc, fi); }
inline void StickyNote::disable_collision() { this->voidcall("disable_collision"); }
inline void StickyNote::enable_collision() { this->voidcall("enable_collision"); }
inline void StickyNote::stick_to_pos(Variant global_mouse_pos) { this->voidcall("stick_to_pos", global_mouse_pos); }

#endif
