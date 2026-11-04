#ifndef TNI_API_HEADER_DEVICEBARROW
#define TNI_API_HEADER_DEVICEBARROW
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct DeviceBarRow : public HBoxContainer {
	using HBoxContainer::HBoxContainer;

	constexpr DeviceBarRow(HBoxContainer base) : HBoxContainer{base} {}
	constexpr DeviceBarRow(uint64_t addr) : HBoxContainer{addr} {}
	constexpr DeviceBarRow(Object obj) : DeviceBarRow{obj.address()} {}
	DeviceBarRow(Variant variant) : DeviceBarRow{variant.as_object().address()} {}


	PROPERTY(name_label, Label);
	PROPERTY(floor_label, Label);
	PROPERTY(hw_label, Label);
	PROPERTY(value_label, Label);

	inline void show_device(String device_name, int64_t floor_num, String hw, String value_text, Variant value_color);
};


inline void DeviceBarRow::show_device(String device_name, int64_t floor_num, String hw, String value_text, Variant value_color) { this->voidcall("show_device", device_name, floor_num, hw, value_text, value_color); }

#endif
