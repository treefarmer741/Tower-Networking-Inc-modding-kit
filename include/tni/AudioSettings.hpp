#ifndef TNI_API_HEADER_AUDIOSETTINGS
#define TNI_API_HEADER_AUDIOSETTINGS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct AudioSettings : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr AudioSettings(VBoxContainer base) : VBoxContainer{base} {}
	constexpr AudioSettings(uint64_t addr) : VBoxContainer{addr} {}
	constexpr AudioSettings(Object obj) : AudioSettings{obj.address()} {}
	AudioSettings(Variant variant) : AudioSettings{variant.as_object().address()} {}


	PROPERTY(music_volume_slider, Variant);
	PROPERTY(master_volume_slider, Variant);
	PROPERTY(sfx_volume_slider, Variant);

	inline Variant map_float_to_volume_db(double inp);
};


inline Variant AudioSettings::map_float_to_volume_db(double inp) { return operator()("map_float_to_volume_db", inp); }

#endif
