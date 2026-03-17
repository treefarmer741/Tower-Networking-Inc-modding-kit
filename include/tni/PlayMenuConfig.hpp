#ifndef TNI_API_HEADER_PLAYMENUCONFIG
#define TNI_API_HEADER_PLAYMENUCONFIG
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PlayMenuConfig : public Resource {
	using Resource::Resource;

	constexpr PlayMenuConfig(Resource base) : Resource{base} {}
	constexpr PlayMenuConfig(uint64_t addr) : Resource{addr} {}
	constexpr PlayMenuConfig(Object obj) : PlayMenuConfig{obj.address()} {}
	PlayMenuConfig(Variant variant) : PlayMenuConfig{variant.as_object().address()} {}


	PROPERTY(scenario_name, String);
	PROPERTY(locked_game_options, bool);
	PROPERTY(only_available_in_editor, bool);
	PROPERTY(deprecated, bool);
	PROPERTY(randomize_seed_on_menu, bool);
	PROPERTY(default_options, PlayOptions);
	PROPERTY(default_diffhash, int64_t);
	PROPERTY(hard_diffhash, int64_t);
	PROPERTY(mp_diffhash, int64_t);
	PROPERTY(zen_diffhash, int64_t);
	PROPERTY(hardzen_diffhash, int64_t);

};

#include "PlayOptions.hpp"


#endif
