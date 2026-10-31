#ifndef TNI_API_HEADER_UPSSTATUSPANEL
#define TNI_API_HEADER_UPSSTATUSPANEL
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct UpsStatusPanel : public Node2D {
	using Node2D::Node2D;

	constexpr UpsStatusPanel(Node2D base) : Node2D{base} {}
	constexpr UpsStatusPanel(uint64_t addr) : Node2D{addr} {}
	constexpr UpsStatusPanel(Object obj) : UpsStatusPanel{obj.address()} {}
	UpsStatusPanel(Variant variant) : UpsStatusPanel{variant.as_object().address()} {}


	PROPERTY(power_controller, PowerController);

};

#include "PowerController.hpp"


#endif
