#ifndef TNI_API_HEADER_LOBBYITEM
#define TNI_API_HEADER_LOBBYITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LobbyItem : public HBoxContainer {
	using HBoxContainer::HBoxContainer;

	constexpr LobbyItem(HBoxContainer base) : HBoxContainer{base} {}
	constexpr LobbyItem(uint64_t addr) : HBoxContainer{addr} {}
	constexpr LobbyItem(Object obj) : LobbyItem{obj.address()} {}
	LobbyItem(Variant variant) : LobbyItem{variant.as_object().address()} {}


	PROPERTY(host_name, String);
	PROPERTY(game_name, String);
	PROPERTY(stats_override, String);
	PROPERTY(num_players, int64_t);
	PROPERTY(max_players, int64_t);
	PROPERTY(join_button, Button);

	inline void hide_join_button();
	inline void disable_join_button();
};


inline void LobbyItem::hide_join_button() { voidcall("hide_join_button"); }
inline void LobbyItem::disable_join_button() { voidcall("disable_join_button"); }

#endif
