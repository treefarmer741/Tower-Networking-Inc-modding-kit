#ifndef TNI_API_HEADER_CCTVGUARDITEM
#define TNI_API_HEADER_CCTVGUARDITEM
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CctvGuardItem : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr CctvGuardItem(VBoxContainer base) : VBoxContainer{base} {}
	constexpr CctvGuardItem(uint64_t addr) : VBoxContainer{addr} {}
	constexpr CctvGuardItem(Object obj) : CctvGuardItem{obj.address()} {}
	CctvGuardItem(Variant variant) : CctvGuardItem{variant.as_object().address()} {}


	PROPERTY(cam, CctvCameraOutlet);
	PROPERTY(fw, CctvFirmware);
	PROPERTY(cam_hw_lbl, Label);
	PROPERTY(cam_nw_lbl, Label);
	PROPERTY(floor_lbl, Label);
	PROPERTY(srv_hw_lbl, Label);
	PROPERTY(srv_nw_lbl, Label);
	PROPERTY(monitoring_btn, Button);
	PROPERTY(clear_btn, Button);
	PROPERTY(sep, HSeparator);

	inline void set_camera(const CctvCameraOutlet& camera, const CctvFirmware& firmware, Variant server);
};

#include "CctvCameraOutlet.hpp"
#include "CctvFirmware.hpp"

inline void CctvGuardItem::set_camera(const CctvCameraOutlet& camera, const CctvFirmware& firmware, Variant server) { this->voidcall("set_camera", Object(reinterpret_cast<const Object*>(&camera)->address()), Object(reinterpret_cast<const Object*>(&firmware)->address()), server); }

#endif
