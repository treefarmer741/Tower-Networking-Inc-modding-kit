#ifndef TNI_API_HEADER_FINALSCREEN
#define TNI_API_HEADER_FINALSCREEN
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct FinalScreen : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr FinalScreen(VBoxContainer base) : VBoxContainer{base} {}
	constexpr FinalScreen(uint64_t addr) : VBoxContainer{addr} {}
	constexpr FinalScreen(Object obj) : FinalScreen{obj.address()} {}
	FinalScreen(Variant variant) : FinalScreen{variant.as_object().address()} {}


	PROPERTY(delivery_dst, int64_t);

	inline void refresh_floorlist();
};


inline void FinalScreen::refresh_floorlist() { voidcall("refresh_floorlist"); }

#endif
