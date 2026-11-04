#ifndef TNI_API_HEADER_CCTV
#define TNI_API_HEADER_CCTV
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct Cctv : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr Cctv(ScreenApp base) : ScreenApp{base} {}
	constexpr Cctv(uint64_t addr) : ScreenApp{addr} {}
	constexpr Cctv(Object obj) : Cctv{obj.address()} {}
	Cctv(Variant variant) : Cctv{variant.as_object().address()} {}

	static constexpr double GUARD_LIST_HEIGHT = 100.0;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double GUARD_LIST_HEIGHT_SCALED = 70.0;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(cctv_viewport, Variant);
	PROPERTY(cctv_server_option, Variant);
	PROPERTY(cctv_camera_connection, Variant);
	PROPERTY(hint_label, Label);
	PROPERTY(connection_status_label, Variant);
	PROPERTY(confirm_button, Button);
	PROPERTY(camera_panel, PanelContainer);
	PROPERTY(maximize_button, Button);
	PROPERTY(guard_panel, VBoxContainer);
	PROPERTY(guard_scroll, ScrollContainer);
	PROPERTY(guard_rows, VBoxContainer);
	PROPERTY(installed_camera_scn, PackedScene);
	PROPERTY(camera_ghost_scn, PackedScene);
	PROPERTY(guard_item_scn, PackedScene);
	PROPERTY(selected_server, LogicController);
	PROPERTY(curr_ghost, Area2D);
	PROPERTY(placed_ghost, Area2D);
	PROPERTY(rm_target, CctvCameraOutlet);
	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline Variant find_all_device_outlets(Variant test_func);
	inline DeviceOutlet resolve_address_to_device(String addr);
	inline bool is_cctv_able_to_reach_server(String camera_nw_or_hw_addr);
	inline Variant find_monitoring_servers();
	inline void populate_cctv_server_option();
	inline void launch();
	inline void minimize();
	inline void install_camera(Variant campos);
	inline void remove_camera(NodePath campath);
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
};

#include "LogicController.hpp"
#include "CctvCameraOutlet.hpp"
#include "MainPane.hpp"
#include "DeviceOutlet.hpp"

inline Variant Cctv::find_all_device_outlets(Variant test_func) { return this->operator()("find_all_device_outlets", test_func); }
inline DeviceOutlet Cctv::resolve_address_to_device(String addr) { return DeviceOutlet(this->operator()("resolve_address_to_device", addr).as_object().address()); }
inline bool Cctv::is_cctv_able_to_reach_server(String camera_nw_or_hw_addr) { return this->operator()("is_cctv_able_to_reach_server", camera_nw_or_hw_addr); }
inline Variant Cctv::find_monitoring_servers() { return this->operator()("find_monitoring_servers"); }
inline void Cctv::populate_cctv_server_option() { this->voidcall("populate_cctv_server_option"); }
inline void Cctv::launch() { this->voidcall("launch"); }
inline void Cctv::minimize() { this->voidcall("minimize"); }
inline void Cctv::install_camera(Variant campos) { this->voidcall("install_camera", campos); }
inline void Cctv::remove_camera(NodePath campath) { this->voidcall("remove_camera", campath); }
inline void Cctv::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void Cctv::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant Cctv::get_main_pane() { return this->operator()("get_main_pane"); }

#endif
