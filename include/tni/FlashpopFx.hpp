#ifndef TNI_API_HEADER_FLASHPOPFX
#define TNI_API_HEADER_FLASHPOPFX
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "AudioVisualEffects2D.hpp"

struct FlashpopFx : public AudioVisualEffects2D {
	using AudioVisualEffects2D::AudioVisualEffects2D;

	constexpr FlashpopFx(AudioVisualEffects2D base) : AudioVisualEffects2D{base} {}
	constexpr FlashpopFx(uint64_t addr) : AudioVisualEffects2D{addr} {}
	constexpr FlashpopFx(Object obj) : FlashpopFx{obj.address()} {}
	FlashpopFx(Variant variant) : FlashpopFx{variant.as_object().address()} {}


	PROPERTY(effects_group, int64_t);

	inline void trigger();
	inline void stop();
};


inline void FlashpopFx::trigger() { this->voidcall("trigger"); }
inline void FlashpopFx::stop() { this->voidcall("stop"); }

#endif
