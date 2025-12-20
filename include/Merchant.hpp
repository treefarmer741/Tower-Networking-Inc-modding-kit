#ifndef TNI_API_HEADER_MERCHANT
#define TNI_API_HEADER_MERCHANT
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Merchant : public Node {
	using Node::Node;

	constexpr Merchant(Node base) : Node{base} {}
	constexpr Merchant(uint64_t addr) : Node{addr} {}
	constexpr Merchant(Object obj) : Merchant{obj.address()} {}
	Merchant(Variant variant) : Merchant{variant.as_object().address()} {}


	PROPERTY(display_name, String);
	PROPERTY(description, String);
	PROPERTY(display_image, Texture2D);

};



#endif
