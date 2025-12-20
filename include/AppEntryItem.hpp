#ifndef TNI_API_HEADER_APPENTRYITEM
#define TNI_API_HEADER_APPENTRYITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct AppEntryItem : public Container {
	using Container::Container;

	constexpr AppEntryItem(Container base) : Container{base} {}
	constexpr AppEntryItem(uint64_t addr) : Container{addr} {}
	constexpr AppEntryItem(Object obj) : AppEntryItem{obj.address()} {}
	AppEntryItem(Variant variant) : AppEntryItem{variant.as_object().address()} {}

	PROPERTY(SAL_scene, Variant);  // Const value type was not supported.

	PROPERTY(app_scene, PackedScene);
	PROPERTY(icon_texture, Texture2D);
	PROPERTY(title, String);
	PROPERTY(description, String);
	PROPERTY(license_cost, int64_t);
	PROPERTY(main_pane, MainPane);
	PROPERTY(locally_installed, bool);

	inline void update_status();
};

#include "MainPane.hpp"

inline void AppEntryItem::update_status() { voidcall("update_status"); }

#endif
