#ifndef TNI_API_HEADER_COREGAMESETTINGS
#define TNI_API_HEADER_COREGAMESETTINGS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct CoreGameSettings : public Object {
	using Object::Object;

	constexpr CoreGameSettings(Object base) : Object{base} {}
	constexpr CoreGameSettings(uint64_t addr) : Object{addr} {}
	CoreGameSettings(Variant variant) : CoreGameSettings{variant.as_object().address()} {}


	PROPERTY(mouse_pan_speed, double);
	PROPERTY(keyboard_pan_speed, double);
	PROPERTY(drag_pan_speed, double);
	PROPERTY(rgb_shift_factor, double);
	PROPERTY(perf_phy_sim_mode, int64_t);
	PROPERTY(show_announcements, bool);
	PROPERTY(shift_panning_enabled, bool);
	PROPERTY(dmarkv2sel, bool);
	PROPERTY(time_affects_phyanim, bool);
	PROPERTY(crt_filter_effect, bool);
	PROPERTY(flickering_lights_effect, bool);
	PROPERTY(show_username, bool);
	PROPERTY(show_help_guides, bool);
	PROPERTY(player_set_name, String);
	PROPERTY(last_sel_diffindex, int64_t);
	PROPERTY(has_shown_difficulty_sel, bool);
	PROPERTY(cmd_alias, Variant);
	PROPERTY(floor_unlocks, Variant);
	PROPERTY(user_stampbook, Variant);
	PROPERTY(fullscreen_mode, bool);
	PROPERTY(vsync, int64_t);
	PROPERTY(last_joined_ip, String);
	PROPERTY(locale, String);
	PROPERTY(master_volume_linear, double);
	PROPERTY(music_volume_linear, double);
	PROPERTY(sfx_volume_linear, double);
	PROPERTY(max_fps, int64_t);

	inline void apply();
	inline void engine_perfpar_sync();
	inline Variant map_float_to_volume_db(double inp);
};


inline void CoreGameSettings::apply() { voidcall("apply"); }
inline void CoreGameSettings::engine_perfpar_sync() { voidcall("engine_perfpar_sync"); }
inline Variant CoreGameSettings::map_float_to_volume_db(double inp) { return operator()("map_float_to_volume_db", inp); }

#endif
