#ifndef TNI_API_HEADER_MODLISTITEM
#define TNI_API_HEADER_MODLISTITEM
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ModListItem : public Panel {
	using Panel::Panel;

	constexpr ModListItem(Panel base) : Panel{base} {}
	constexpr ModListItem(uint64_t addr) : Panel{addr} {}
	constexpr ModListItem(Object obj) : ModListItem{obj.address()} {}
	ModListItem(Variant variant) : ModListItem{variant.as_object().address()} {}


	PROPERTY(manifest, ModManifest);
	PROPERTY(icon, TextureRect);
	PROPERTY(name_label, Label);
	PROPERTY(enable_check, CheckButton);
	PROPERTY(issue_label, Label);
	PROPERTY(mod_enabled, bool);
	PROPERTY(mod_manager, ModManager);
	PROPERTY(is_mouse_within, bool);
	PROPERTY(dragging, bool);
	PROPERTY(dragging_last_mouse_y, double);
	PROPERTY(mod_missing, bool);
	PROPERTY(default_index, int64_t);

	inline void update_item();
};

#include "ModManifest.hpp"
#include "ModManager.hpp"

inline void ModListItem::update_item() { this->voidcall("update_item"); }

#endif
