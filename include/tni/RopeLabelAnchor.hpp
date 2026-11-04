#ifndef TNI_API_HEADER_ROPELABELANCHOR
#define TNI_API_HEADER_ROPELABELANCHOR
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct RopeLabelAnchor : public Node2D {
	using Node2D::Node2D;

	constexpr RopeLabelAnchor(Node2D base) : Node2D{base} {}
	constexpr RopeLabelAnchor(uint64_t addr) : Node2D{addr} {}
	constexpr RopeLabelAnchor(Object obj) : RopeLabelAnchor{obj.address()} {}
	RopeLabelAnchor(Variant variant) : RopeLabelAnchor{variant.as_object().address()} {}

	PROPERTY(PlugLabelScene, Variant);  // Const value type was not supported.

	PROPERTY(plug_label, PanelContainer);

	inline PanelContainer get_or_create_plug_label();
};


inline PanelContainer RopeLabelAnchor::get_or_create_plug_label() { return PanelContainer(this->operator()("get_or_create_plug_label").as_object().address()); }

#endif
