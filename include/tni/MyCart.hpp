#ifndef TNI_API_HEADER_MYCART
#define TNI_API_HEADER_MYCART
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct MyCart : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr MyCart(VBoxContainer base) : VBoxContainer{base} {}
	constexpr MyCart(uint64_t addr) : VBoxContainer{addr} {}
	constexpr MyCart(Object obj) : MyCart{obj.address()} {}
	MyCart(Variant variant) : MyCart{variant.as_object().address()} {}



	inline void update();
};


inline void MyCart::update() { this->voidcall("update"); }

#endif
