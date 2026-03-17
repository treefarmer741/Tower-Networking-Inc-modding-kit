#ifndef TNI_API_HEADER_TRAVERSALENUMRESULT
#define TNI_API_HEADER_TRAVERSALENUMRESULT
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TraversalEnumResult : public RefCounted {
	using RefCounted::RefCounted;

	constexpr TraversalEnumResult(RefCounted base) : RefCounted{base} {}
	constexpr TraversalEnumResult(uint64_t addr) : RefCounted{addr} {}
	constexpr TraversalEnumResult(Object obj) : TraversalEnumResult{obj.address()} {}
	TraversalEnumResult(Variant variant) : TraversalEnumResult{variant.as_object().address()} {}


	PROPERTY(node_controller, LogicController);
	PROPERTY(hops, int64_t);
	PROPERTY(parent, Variant);
	PROPERTY(port, LogicControllerSocket);
	PROPERTY(previous_node, LogicController);
	PROPERTY(print_name, String);

};

#include "LogicController.hpp"
#include "LogicControllerSocket.hpp"


#endif
