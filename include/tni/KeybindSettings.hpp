#ifndef TNI_API_HEADER_KEYBINDSETTINGS
#define TNI_API_HEADER_KEYBINDSETTINGS
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct KeybindSettings : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr KeybindSettings(VBoxContainer base) : VBoxContainer{base} {}
	constexpr KeybindSettings(uint64_t addr) : VBoxContainer{addr} {}
	constexpr KeybindSettings(Object obj) : KeybindSettings{obj.address()} {}
	KeybindSettings(Variant variant) : KeybindSettings{variant.as_object().address()} {}

	PROPERTY(EXCLUDE_KEYS, Dictionary);  // enum of non-integer type

	PROPERTY(pending_action, String);
	PROPERTY(pending_button, Button);

};



#endif
