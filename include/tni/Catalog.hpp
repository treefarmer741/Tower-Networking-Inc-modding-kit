#ifndef TNI_API_HEADER_CATALOG
#define TNI_API_HEADER_CATALOG
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Catalog : public Control {
	using Control::Control;

	constexpr Catalog(Control base) : Control{base} {}
	constexpr Catalog(uint64_t addr) : Control{addr} {}
	constexpr Catalog(Object obj) : Catalog{obj.address()} {}
	Catalog(Variant variant) : Catalog{variant.as_object().address()} {}

	PROPERTY(floor_info_scn, Variant);  // Const value type was not supported.
	PROPERTY(user_info_scn, Variant);  // Const value type was not supported.

	PROPERTY(animation_player, AnimationPlayer);
	PROPERTY(ufloor_info_ctn, Container);
	PROPERTY(users_info_ctn, Container);
	PROPERTY(floor_ldlbl, Label);
	PROPERTY(user_ldlbl, Label);
	PROPERTY(is_unlockable_floor_info_ready, bool);
	PROPERTY(is_userstamp_info_ready, bool);
	PROPERTY(ea_unlockable_floors_scnpath, Variant);
	PROPERTY(ea_unlockable_floors_info, Variant);
	PROPERTY(ea_users_scnpath, Variant);
	PROPERTY(ea_users_info, Variant);

	inline void cache_ulfinfo();
	inline void fade_out();
	inline void fade_in();
};


inline void Catalog::cache_ulfinfo() { voidcall("cache_ulfinfo"); }
inline void Catalog::fade_out() { voidcall("fade_out"); }
inline void Catalog::fade_in() { voidcall("fade_in"); }

#endif
