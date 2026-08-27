#ifndef TNI_API_HEADER_CCTVVIEWPORT
#define TNI_API_HEADER_CCTVVIEWPORT
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CctvViewport : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr CctvViewport(PanelContainer base) : PanelContainer{base} {}
	constexpr CctvViewport(uint64_t addr) : PanelContainer{addr} {}
	constexpr CctvViewport(Object obj) : CctvViewport{obj.address()} {}
	CctvViewport(Variant variant) : CctvViewport{variant.as_object().address()} {}


	PROPERTY(sub_viewport, SubViewport);
	PROPERTY(sub_viewport_container, SubViewportContainer);
	PROPERTY(cctv_cam, Camera2D);
	PROPERTY(cctv_cam_status, Label);
	PROPERTY(top_bound, double);
	PROPERTY(bottom_bound, double);
	PROPERTY(left_bound, double);
	PROPERTY(right_bound, double);
	PROPERTY(pan_step, double);
	PROPERTY(top_limit_margin, double);
	PROPERTY(bottom_limit_margin, double);
	PROPERTY(zoom_enabled, bool);
	PROPERTY(target_zoom, double);
	PROPERTY(MIN_ZOOM, double);
	PROPERTY(MAX_ZOOM, double);
	PROPERTY(ZOOM_INCREMENT, double);

	inline void go_to_floor(const Location& loc);
	inline void set_camera_target(const DeviceOutlet& device);
	inline Location get_location_for_device(Node node);
	inline void pan_left();
	inline void pan_right();
	inline void pan_up();
	inline void pan_down();
	inline void zoom_in();
	inline void zoom_out();
	inline void launch();
	inline void minimize();
	inline void clear_connection();
};

#include "Location.hpp"
#include "DeviceOutlet.hpp"

inline void CctvViewport::go_to_floor(const Location& loc) { this->voidcall("go_to_floor", Object(reinterpret_cast<const Object*>(&loc)->address())); }
inline void CctvViewport::set_camera_target(const DeviceOutlet& device) { this->voidcall("set_camera_target", Object(reinterpret_cast<const Object*>(&device)->address())); }
inline Location CctvViewport::get_location_for_device(Node node) { return Location(this->operator()("get_location_for_device", node).as_object().address()); }
inline void CctvViewport::pan_left() { this->voidcall("pan_left"); }
inline void CctvViewport::pan_right() { this->voidcall("pan_right"); }
inline void CctvViewport::pan_up() { this->voidcall("pan_up"); }
inline void CctvViewport::pan_down() { this->voidcall("pan_down"); }
inline void CctvViewport::zoom_in() { this->voidcall("zoom_in"); }
inline void CctvViewport::zoom_out() { this->voidcall("zoom_out"); }
inline void CctvViewport::launch() { this->voidcall("launch"); }
inline void CctvViewport::minimize() { this->voidcall("minimize"); }
inline void CctvViewport::clear_connection() { this->voidcall("clear_connection"); }

#endif
