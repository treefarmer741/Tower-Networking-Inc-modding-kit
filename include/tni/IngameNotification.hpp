#ifndef TNI_API_HEADER_INGAMENOTIFICATION
#define TNI_API_HEADER_INGAMENOTIFICATION
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct IngameNotification : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr IngameNotification(PanelContainer base) : PanelContainer{base} {}
	constexpr IngameNotification(uint64_t addr) : PanelContainer{addr} {}
	constexpr IngameNotification(Object obj) : IngameNotification{obj.address()} {}
	IngameNotification(Variant variant) : IngameNotification{variant.as_object().address()} {}


	PROPERTY(text, String);
	PROPERTY(linger_seconds, int64_t);
	PROPERTY(style_type, String);

};



#endif
