#ifndef TNI_API_HEADER_CCTVCOVERBOX
#define TNI_API_HEADER_CCTVCOVERBOX
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CctvCoverBox : public Node2D {
	using Node2D::Node2D;

	constexpr CctvCoverBox(Node2D base) : Node2D{base} {}
	constexpr CctvCoverBox(uint64_t addr) : Node2D{addr} {}
	constexpr CctvCoverBox(Object obj) : CctvCoverBox{obj.address()} {}
	CctvCoverBox(Variant variant) : CctvCoverBox{variant.as_object().address()} {}

	PROPERTY(COLOR, Variant);  // Const value type was not supported.

	PROPERTY(rect, Variant);

};



#endif
