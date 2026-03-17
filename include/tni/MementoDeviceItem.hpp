#ifndef TNI_API_HEADER_MEMENTODEVICEITEM
#define TNI_API_HEADER_MEMENTODEVICEITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MementoDeviceItem : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr MementoDeviceItem(PanelContainer base) : PanelContainer{base} {}
	constexpr MementoDeviceItem(uint64_t addr) : PanelContainer{addr} {}
	constexpr MementoDeviceItem(Object obj) : MementoDeviceItem{obj.address()} {}
	MementoDeviceItem(Variant variant) : MementoDeviceItem{variant.as_object().address()} {}


	PROPERTY(devunit, DeviceUnit);

	inline void refresh();
};

#include "DeviceUnit.hpp"

inline void MementoDeviceItem::refresh() { voidcall("refresh"); }

#endif
