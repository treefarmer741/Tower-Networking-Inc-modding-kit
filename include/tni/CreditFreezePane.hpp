#ifndef TNI_API_HEADER_CREDITFREEZEPANE
#define TNI_API_HEADER_CREDITFREEZEPANE
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CreditFreezePane : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr CreditFreezePane(VBoxContainer base) : VBoxContainer{base} {}
	constexpr CreditFreezePane(uint64_t addr) : VBoxContainer{addr} {}
	constexpr CreditFreezePane(Object obj) : CreditFreezePane{obj.address()} {}
	CreditFreezePane(Variant variant) : CreditFreezePane{variant.as_object().address()} {}

	inline static const String BEHAVIOR_KEY = "profile-user-behavior";  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(selected_behavior_total, int64_t);
	PROPERTY(payment_method, String);

	inline void refresh_devices();
	inline void start_auto_refresh();
	inline void stop_auto_refresh();
	inline Variant get_selected_device_data();
};


inline void CreditFreezePane::refresh_devices() { this->voidcall("refresh_devices"); }
inline void CreditFreezePane::start_auto_refresh() { this->voidcall("start_auto_refresh"); }
inline void CreditFreezePane::stop_auto_refresh() { this->voidcall("stop_auto_refresh"); }
inline Variant CreditFreezePane::get_selected_device_data() { return this->operator()("get_selected_device_data"); }

#endif
