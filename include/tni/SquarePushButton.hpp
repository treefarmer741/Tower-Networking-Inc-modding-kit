#ifndef TNI_API_HEADER_SQUAREPUSHBUTTON
#define TNI_API_HEADER_SQUAREPUSHBUTTON
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SquarePushButton : public Node3D {
	using Node3D::Node3D;

	constexpr SquarePushButton(Node3D base) : Node3D{base} {}
	constexpr SquarePushButton(uint64_t addr) : Node3D{addr} {}
	constexpr SquarePushButton(Object obj) : SquarePushButton{obj.address()} {}
	SquarePushButton(Variant variant) : SquarePushButton{variant.as_object().address()} {}


	PROPERTY(state, bool);

};



#endif
