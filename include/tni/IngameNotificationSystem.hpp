#ifndef TNI_API_HEADER_INGAMENOTIFICATIONSYSTEM
#define TNI_API_HEADER_INGAMENOTIFICATIONSYSTEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct IngameNotificationSystem : public Control {
	using Control::Control;

	constexpr IngameNotificationSystem(Control base) : Control{base} {}
	constexpr IngameNotificationSystem(uint64_t addr) : Control{addr} {}
	constexpr IngameNotificationSystem(Object obj) : IngameNotificationSystem{obj.address()} {}
	IngameNotificationSystem(Variant variant) : IngameNotificationSystem{variant.as_object().address()} {}


	PROPERTY(ign_scn, Variant);

	inline void display(String msg, int64_t linger_seconds, String style_type);
	inline void clear_notifications();
};


inline void IngameNotificationSystem::display(String msg, int64_t linger_seconds, String style_type) { voidcall("display", msg, linger_seconds, style_type); }
inline void IngameNotificationSystem::clear_notifications() { voidcall("clear_notifications"); }

#endif
