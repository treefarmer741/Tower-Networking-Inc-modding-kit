#ifndef TNI_API_HEADER_CAMERA
#define TNI_API_HEADER_CAMERA
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Camera : public Container {
	using Container::Container;

	constexpr Camera(Container base) : Container{base} {}
	constexpr Camera(uint64_t addr) : Container{addr} {}
	constexpr Camera(Object obj) : Camera{obj.address()} {}
	Camera(Variant variant) : Camera{variant.as_object().address()} {}


	PROPERTY(main_page, Container);
	PROPERTY(current_scn, Variant);
	PROPERTY(gallery_container, Variant);
	PROPERTY(upload_button, Variant);
	PROPERTY(timer, Variant);
	PROPERTY(taken_pic, Variant);
	PROPERTY(jpgbuff, Variant);
	PROPERTY(taken_by_player, bool);
	PROPERTY(encoded_screenshots, Variant);
	PROPERTY(response_type, Variant);
	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline Variant capture_right_portion();
	inline void hide_all();
	inline void launch();
	inline void minimize();
	inline void submit_screenshots();
	inline void display_camera_viewport();
	inline void store_latest_pic_in_gallery();
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
};

#include "MainPane.hpp"

inline Variant Camera::capture_right_portion() { return operator()("capture_right_portion"); }
inline void Camera::hide_all() { voidcall("hide_all"); }
inline void Camera::launch() { voidcall("launch"); }
inline void Camera::minimize() { voidcall("minimize"); }
inline void Camera::submit_screenshots() { voidcall("submit_screenshots"); }
inline void Camera::display_camera_viewport() { voidcall("display_camera_viewport"); }
inline void Camera::store_latest_pic_in_gallery() { voidcall("store_latest_pic_in_gallery"); }
inline void Camera::clear_dynamic() { voidcall("clear_dynamic"); }
inline void Camera::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant Camera::get_main_pane() { return operator()("get_main_pane"); }

#endif
