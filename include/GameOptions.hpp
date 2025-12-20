#ifndef TNI_API_HEADER_GAMEOPTIONS
#define TNI_API_HEADER_GAMEOPTIONS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct GameOptions : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr GameOptions(VBoxContainer base) : VBoxContainer{base} {}
	constexpr GameOptions(uint64_t addr) : VBoxContainer{addr} {}
	constexpr GameOptions(Object obj) : GameOptions{obj.address()} {}
	GameOptions(Variant variant) : GameOptions{variant.as_object().address()} {}


	PROPERTY(startcash_in, Slider);
	PROPERTY(dayperiod_in, Slider);
	PROPERTY(freeplay_in, OptionButton);
	PROPERTY(powerfeewv_in, OptionButton);
	PROPERTY(autodns_in, OptionButton);
	PROPERTY(printch_in, OptionButton);
	PROPERTY(devinfbw_in, OptionButton);
	PROPERTY(devcollide_in, OptionButton);
	PROPERTY(dbgaccbw_in, OptionButton);
	PROPERTY(maxdaysdebt_in, Slider);
	PROPERTY(userfeemul_in, Slider);
	PROPERTY(dailyadmexp_in, Slider);
	PROPERTY(usergrcmul_in, Slider);
	PROPERTY(slabrtmul_in, Slider);
	PROPERTY(sockinst_in, Slider);
	PROPERTY(devmalfp_in, Slider);
	PROPERTY(powoutfp_in, Slider);
	PROPERTY(powsrgfp_in, Slider);
	PROPERTY(fbpermul_in, Slider);
	PROPERTY(warpermul_in, Slider);
	PROPERTY(fbblim_in, Slider);
	PROPERTY(admfs_in, Slider);
	PROPERTY(dnslocl_in, OptionButton);
	PROPERTY(progaut_in, OptionButton);
	PROPERTY(floor_mdq_in, Slider);
	PROPERTY(serhintworld_in, OptionButton);
	PROPERTY(cybatkp_in, Slider);
	PROPERTY(reqnwad_in, OptionButton);
	PROPERTY(maxnwl_in, Slider);
	PROPERTY(userhwr_in, Slider);
	PROPERTY(drdfee_in, Slider);
	PROPERTY(sttech_in, OptionButton);

	inline void do_localize();
	inline void update_playoptions(PlayOptions playopts);
	inline void set_inputs(PlayOptions playopts, bool lock_options);
};

#include "PlayOptions.hpp"

inline void GameOptions::do_localize() { voidcall("do_localize"); }
inline void GameOptions::update_playoptions(PlayOptions playopts) { voidcall("update_playoptions", playopts); }
inline void GameOptions::set_inputs(PlayOptions playopts, bool lock_options) { voidcall("set_inputs", playopts, lock_options); }

#endif
