#ifndef TNI_API_HEADER_BGMPLAYER
#define TNI_API_HEADER_BGMPLAYER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct BgmPlayer : public AudioStreamPlayer {
	using AudioStreamPlayer::AudioStreamPlayer;

	constexpr BgmPlayer(AudioStreamPlayer base) : AudioStreamPlayer{base} {}
	constexpr BgmPlayer(uint64_t addr) : AudioStreamPlayer{addr} {}
	constexpr BgmPlayer(Object obj) : BgmPlayer{obj.address()} {}
	BgmPlayer(Variant variant) : BgmPlayer{variant.as_object().address()} {}


	PROPERTY(playlist, Variant);

	inline void try_fade_out(double duration);
	inline void try_fade_in(double duration);
	inline void play_index(int64_t ind);
	inline void play_random();
	inline void play_next();
};


inline void BgmPlayer::try_fade_out(double duration) { this->voidcall("try_fade_out", duration); }
inline void BgmPlayer::try_fade_in(double duration) { this->voidcall("try_fade_in", duration); }
inline void BgmPlayer::play_index(int64_t ind) { this->voidcall("play_index", ind); }
inline void BgmPlayer::play_random() { this->voidcall("play_random"); }
inline void BgmPlayer::play_next() { this->voidcall("play_next"); }

#endif
