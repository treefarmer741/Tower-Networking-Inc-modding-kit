#ifndef TNI_API_HEADER_DEVICESPAWNER
#define TNI_API_HEADER_DEVICESPAWNER
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DeviceSpawner : public Node2D {
	using Node2D::Node2D;

	constexpr DeviceSpawner(Node2D base) : Node2D{base} {}
	constexpr DeviceSpawner(uint64_t addr) : Node2D{addr} {}
	constexpr DeviceSpawner(Object obj) : DeviceSpawner{obj.address()} {}
	DeviceSpawner(Variant variant) : DeviceSpawner{variant.as_object().address()} {}



	inline void add_device(DeviceUnit newnode);
};

#include "DeviceUnit.hpp"

inline void DeviceSpawner::add_device(DeviceUnit newnode) { voidcall("add_device", newnode); }

#endif
