#ifndef TNI_API_HEADER_VERLETROPEROPELABELANCHOR
#define TNI_API_HEADER_VERLETROPEROPELABELANCHOR
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct VerletRopeRopeLabelAnchor : public Node2D {
	using Node2D::Node2D;

	constexpr VerletRopeRopeLabelAnchor(Node2D base) : Node2D{base} {}
	constexpr VerletRopeRopeLabelAnchor(uint64_t addr) : Node2D{addr} {}
	constexpr VerletRopeRopeLabelAnchor(Object obj) : VerletRopeRopeLabelAnchor{obj.address()} {}
	VerletRopeRopeLabelAnchor(Variant variant) : VerletRopeRopeLabelAnchor{variant.as_object().address()} {}

	PROPERTY(PlugLabelScene, Variant);  // Const value type was not supported.

	PROPERTY(plug_label, PanelContainer);

	inline PanelContainer get_or_create_plug_label();
};


inline PanelContainer VerletRopeRopeLabelAnchor::get_or_create_plug_label() { return PanelContainer(this->operator()("get_or_create_plug_label").as_object().address()); }

#endif
