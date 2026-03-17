#ifndef TNI_API_HEADER_BASESETTINGS
#define TNI_API_HEADER_BASESETTINGS
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct BaseSettings : public Object {
	using Object::Object;

	constexpr BaseSettings(Object base) : Object{base} {}
	constexpr BaseSettings(uint64_t addr) : Object{addr} {}
	BaseSettings(Variant variant) : BaseSettings{variant.as_object().address()} {}


	PROPERTY(fullscreen_mode, bool);
	PROPERTY(vsync, int64_t);
	PROPERTY(last_joined_ip, String);
	PROPERTY(locale, String);
	PROPERTY(master_volume_linear, double);
	PROPERTY(music_volume_linear, double);
	PROPERTY(sfx_volume_linear, double);
	PROPERTY(max_fps, int64_t);

	inline Variant map_float_to_volume_db(double inp);
	inline void apply();
};


inline Variant BaseSettings::map_float_to_volume_db(double inp) { return operator()("map_float_to_volume_db", inp); }
inline void BaseSettings::apply() { voidcall("apply"); }

#endif
