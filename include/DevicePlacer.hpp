#ifndef TNI_API_HEADER_DEVICEPLACER
#define TNI_API_HEADER_DEVICEPLACER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DevicePlacer : public Node2D {
	using Node2D::Node2D;

	constexpr DevicePlacer(Node2D base) : Node2D{base} {}
	constexpr DevicePlacer(uint64_t addr) : Node2D{addr} {}
	constexpr DevicePlacer(Object obj) : DevicePlacer{obj.address()} {}
	DevicePlacer(Variant variant) : DevicePlacer{variant.as_object().address()} {}

	static constexpr double MIN_HEIGHT_PER_DEVICE = 100.0;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(zone_width, double);
	PROPERTY(zone_height, double);
	PROPERTY(margin_height, double);
	PROPERTY(max_devices, int64_t);
	PROPERTY(base_spawn_point, Variant);
	PROPERTY(nominal_spawn_point, Variant);

};



#endif
