#ifndef TNI_API_HEADER_POCOSIALOBBIES
#define TNI_API_HEADER_POCOSIALOBBIES
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PocosiaLobbies : public ScrollContainer {
	using ScrollContainer::ScrollContainer;

	constexpr PocosiaLobbies(ScrollContainer base) : ScrollContainer{base} {}
	constexpr PocosiaLobbies(uint64_t addr) : ScrollContainer{addr} {}
	constexpr PocosiaLobbies(Object obj) : PocosiaLobbies{obj.address()} {}
	PocosiaLobbies(Variant variant) : PocosiaLobbies{variant.as_object().address()} {}


	PROPERTY(search_friends_only, bool);
	PROPERTY(lobby_container_nodepath, NodePath);

	inline void refresh_lobbies();
};


inline void PocosiaLobbies::refresh_lobbies() { voidcall("refresh_lobbies"); }

#endif
