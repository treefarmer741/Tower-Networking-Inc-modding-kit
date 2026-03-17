#ifndef TNI_API_HEADER_EDITORPHOTOBOOTH
#define TNI_API_HEADER_EDITORPHOTOBOOTH
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct EditorPhotobooth : public Node2D {
	using Node2D::Node2D;

	constexpr EditorPhotobooth(Node2D base) : Node2D{base} {}
	constexpr EditorPhotobooth(uint64_t addr) : Node2D{addr} {}
	constexpr EditorPhotobooth(Object obj) : EditorPhotobooth{obj.address()} {}
	EditorPhotobooth(Variant variant) : EditorPhotobooth{variant.as_object().address()} {}


	PROPERTY(print_size, Variant);
	PROPERTY(initial_setup_timer, Timer);
	PROPERTY(auto_place_child, bool);

};



#endif
