#ifndef TNI_API_HEADER_RETROKEYBOARD
#define TNI_API_HEADER_RETROKEYBOARD
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct RetroKeyboard : public Node2D {
	using Node2D::Node2D;

	constexpr RetroKeyboard(Node2D base) : Node2D{base} {}
	constexpr RetroKeyboard(uint64_t addr) : Node2D{addr} {}
	constexpr RetroKeyboard(Object obj) : RetroKeyboard{obj.address()} {}
	RetroKeyboard(Variant variant) : RetroKeyboard{variant.as_object().address()} {}

	static constexpr int64_t total_keypress_sfx_variants = 20;  // NOTE: You should recompile your mod if this value changes!
	inline static const String ALPHABET_GROUP_NAME = "alphabets";  // NOTE: You should recompile your mod if this value changes!
	inline static const String NUMSYM_GROUP_NAME = "numsyms";  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(sfx_channel, String);
	PROPERTY(depressed_depth, double);
	PROPERTY(depressed_color, Variant);
	PROPERTY(keypress_volume_db, double);
	PROPERTY(key_sfx_ptr, int64_t);
	PROPERTY(numsym_ptr, int64_t);
	PROPERTY(alphabets_ptr, int64_t);
	PROPERTY(asplayer_d, Variant);
	PROPERTY(sprite_dh, Variant);
	PROPERTY(sprite_dc, Variant);
	PROPERTY(ptr_cycle, int64_t);

	inline void press_key_from_event(InputEventKey inpev);
	inline void press_key(int64_t kc);
};


inline void RetroKeyboard::press_key_from_event(InputEventKey inpev) { voidcall("press_key_from_event", inpev); }
inline void RetroKeyboard::press_key(int64_t kc) { voidcall("press_key", kc); }

#endif
