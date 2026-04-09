#ifndef TNI_API_HEADER_SMOKEFX
#define TNI_API_HEADER_SMOKEFX
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "AudioVisualEffects2D.hpp"

struct SmokeFx : public AudioVisualEffects2D {
	using AudioVisualEffects2D::AudioVisualEffects2D;

	constexpr SmokeFx(AudioVisualEffects2D base) : AudioVisualEffects2D{base} {}
	constexpr SmokeFx(uint64_t addr) : AudioVisualEffects2D{addr} {}
	constexpr SmokeFx(Object obj) : SmokeFx{obj.address()} {}
	SmokeFx(Variant variant) : SmokeFx{variant.as_object().address()} {}


	PROPERTY(effects_group, int64_t);

	inline void trigger();
	inline void stop();
};


inline void SmokeFx::trigger() { this->voidcall("trigger"); }
inline void SmokeFx::stop() { this->voidcall("stop"); }

#endif
