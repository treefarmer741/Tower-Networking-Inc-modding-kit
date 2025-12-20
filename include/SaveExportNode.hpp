#ifndef TNI_API_HEADER_SAVEEXPORTNODE
#define TNI_API_HEADER_SAVEEXPORTNODE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SaveExportNode : public Node {
	using Node::Node;

	constexpr SaveExportNode(Node base) : Node{base} {}
	constexpr SaveExportNode(uint64_t addr) : Node{addr} {}
	constexpr SaveExportNode(Object obj) : SaveExportNode{obj.address()} {}
	SaveExportNode(Variant variant) : SaveExportNode{variant.as_object().address()} {}



};



#endif
