#ifndef TNI_API_HEADER_NODEITEM
#define TNI_API_HEADER_NODEITEM
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct NodeItem : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr NodeItem(PanelContainer base) : PanelContainer{base} {}
	constexpr NodeItem(uint64_t addr) : PanelContainer{addr} {}
	constexpr NodeItem(Object obj) : NodeItem{obj.address()} {}
	NodeItem(Variant variant) : NodeItem{variant.as_object().address()} {}


	PROPERTY(node_prog, Program);

};

#include "Program.hpp"


#endif
