#ifndef TNI_API_HEADER_UISCALEZOOM
#define TNI_API_HEADER_UISCALEZOOM
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct UiScaleZoom : public Node {
	using Node::Node;

	constexpr UiScaleZoom(Node base) : Node{base} {}
	constexpr UiScaleZoom(uint64_t addr) : Node{addr} {}
	constexpr UiScaleZoom(Object obj) : UiScaleZoom{obj.address()} {}
	UiScaleZoom(Variant variant) : UiScaleZoom{variant.as_object().address()} {}

	enum struct Mode : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		PANEL = 0,
		FILL = 1,
	};

	PROPERTY(mode, int64_t);
	PROPERTY(target, Control);

};



#endif
