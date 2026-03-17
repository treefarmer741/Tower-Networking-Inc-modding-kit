#ifndef TNI_API_HEADER_POCOSIAANIMATEDTEXTURERECT
#define TNI_API_HEADER_POCOSIAANIMATEDTEXTURERECT
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PocosiaAnimatedTextureRect : public TextureRect {
	using TextureRect::TextureRect;

	constexpr PocosiaAnimatedTextureRect(TextureRect base) : TextureRect{base} {}
	constexpr PocosiaAnimatedTextureRect(uint64_t addr) : TextureRect{addr} {}
	constexpr PocosiaAnimatedTextureRect(Object obj) : PocosiaAnimatedTextureRect{obj.address()} {}
	PocosiaAnimatedTextureRect(Variant variant) : PocosiaAnimatedTextureRect{variant.as_object().address()} {}


	PROPERTY(sprite_frames, SpriteFrames);
	PROPERTY(animation, String);
	PROPERTY(frame_count, int64_t);
	PROPERTY(curr_frame, int64_t);
	PROPERTY(frame_delta, double);
	PROPERTY(curr_frame_duration, double);
	PROPERTY(fps, double);
	PROPERTY(autoplay_when_shown, bool);
	PROPERTY(is_playing, bool);

	inline void play(int64_t from_frame);
	inline void pause();
};


inline void PocosiaAnimatedTextureRect::play(int64_t from_frame) { voidcall("play", from_frame); }
inline void PocosiaAnimatedTextureRect::pause() { voidcall("pause"); }

#endif
