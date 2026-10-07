#ifndef TNI_API_HEADER_TENABOLTPRESETROW
#define TNI_API_HEADER_TENABOLTPRESETROW
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct TenaboltPresetRow : public HBoxContainer {
	using HBoxContainer::HBoxContainer;

	constexpr TenaboltPresetRow(HBoxContainer base) : HBoxContainer{base} {}
	constexpr TenaboltPresetRow(uint64_t addr) : HBoxContainer{addr} {}
	constexpr TenaboltPresetRow(Object obj) : TenaboltPresetRow{obj.address()} {}
	TenaboltPresetRow(Variant variant) : TenaboltPresetRow{variant.as_object().address()} {}


	PROPERTY(swatch, ColorRect);
	PROPERTY(name_label, Label);
	PROPERTY(apply_button, Button);
	PROPERTY(remove_button, Button);
	PROPERTY(values_label, Label);
	PROPERTY(preset, Variant);

	inline void show_preset(int64_t num, Variant p);
	inline void show_color(const DayCycleController& dcc);
};

#include "DayCycleController.hpp"

inline void TenaboltPresetRow::show_preset(int64_t num, Variant p) { this->voidcall("show_preset", num, p); }
inline void TenaboltPresetRow::show_color(const DayCycleController& dcc) { this->voidcall("show_color", Object(reinterpret_cast<const Object*>(&dcc)->address())); }

#endif
