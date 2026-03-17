#ifndef TNI_API_HEADER_SOCKETGROUP
#define TNI_API_HEADER_SOCKETGROUP
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SocketGroup : public Node2D {
	using Node2D::Node2D;

	constexpr SocketGroup(Node2D base) : Node2D{base} {}
	constexpr SocketGroup(uint64_t addr) : Node2D{addr} {}
	constexpr SocketGroup(Object obj) : SocketGroup{obj.address()} {}
	SocketGroup(Variant variant) : SocketGroup{variant.as_object().address()} {}


	PROPERTY(graph_controller, GraphController);

};

#include "GraphController.hpp"


#endif
