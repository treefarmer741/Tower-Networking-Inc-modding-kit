#ifndef TNI_API_HEADER_LIST
#define TNI_API_HEADER_LIST
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct List : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr List(VBoxContainer base) : VBoxContainer{base} {}
	constexpr List(uint64_t addr) : VBoxContainer{addr} {}
	constexpr List(Object obj) : List{obj.address()} {}
	List(Variant variant) : List{variant.as_object().address()} {}

	PROPERTY(di_scn, Variant);  // Const value type was not supported.

	PROPERTY(main_contain, Container);
	PROPERTY(nodlb, Label);

	inline void update_domains();
};


inline void List::update_domains() { voidcall("update_domains"); }

#endif
