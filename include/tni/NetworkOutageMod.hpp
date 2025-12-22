#ifndef TNI_API_HEADER_NETWORKOUTAGEMOD
#define TNI_API_HEADER_NETWORKOUTAGEMOD
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct NetworkOutageMod : public Node {
	using Node::Node;

	constexpr NetworkOutageMod(Node base) : Node{base} {}
	constexpr NetworkOutageMod(uint64_t addr) : Node{addr} {}
	constexpr NetworkOutageMod(Object obj) : NetworkOutageMod{obj.address()} {}
	NetworkOutageMod(Variant variant) : NetworkOutageMod{variant.as_object().address()} {}


	PROPERTY(start_ts, int64_t);
	PROPERTY(end_ts, int64_t);

};



#endif
