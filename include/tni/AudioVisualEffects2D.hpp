#ifndef TNI_API_HEADER_AUDIOVISUALEFFECTS2D
#define TNI_API_HEADER_AUDIOVISUALEFFECTS2D
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct AudioVisualEffects2D : public Node2D {
	using Node2D::Node2D;

	constexpr AudioVisualEffects2D(Node2D base) : Node2D{base} {}
	constexpr AudioVisualEffects2D(uint64_t addr) : Node2D{addr} {}
	constexpr AudioVisualEffects2D(Object obj) : AudioVisualEffects2D{obj.address()} {}
	AudioVisualEffects2D(Variant variant) : AudioVisualEffects2D{variant.as_object().address()} {}

	enum EffectsGroup : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		UNGROUPED = 0,
		FAILURE = 1,
	};

	PROPERTY(effects_group, int64_t);

	inline void trigger();
	inline void stop();
};


inline void AudioVisualEffects2D::trigger() { voidcall("trigger"); }
inline void AudioVisualEffects2D::stop() { voidcall("stop"); }

#endif
