#ifndef TNI_API_HEADER_CCTVCAMERAOUTLET
#define TNI_API_HEADER_CCTVCAMERAOUTLET
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "DeviceOutlet.hpp"

struct CctvCameraOutlet : public DeviceOutlet {
	using DeviceOutlet::DeviceOutlet;

	constexpr CctvCameraOutlet(DeviceOutlet base) : DeviceOutlet{base} {}
	constexpr CctvCameraOutlet(uint64_t addr) : DeviceOutlet{addr} {}
	constexpr CctvCameraOutlet(Object obj) : CctvCameraOutlet{obj.address()} {}
	CctvCameraOutlet(Variant variant) : CctvCameraOutlet{variant.as_object().address()} {}

	PROPERTY(STEALABLE_CLASSES, Variant);  // Const value type was not supported.
	PROPERTY(THEFT_TECHS, Variant);  // Const value type was not supported.
	PROPERTY(DEFAULT_COVER_RECT, Variant);  // Const value type was not supported.

	PROPERTY(cover_rect, Variant);
	PROPERTY(player_installed, bool);
	PROPERTY(online, bool);
	PROPERTY(outlet_name, String);
	PROPERTY(logic_controller, LogicController);
	PROPERTY(device_hardware_class, int64_t);
	PROPERTY(socket, Socket);
	PROPERTY(sockets, Variant);
	PROPERTY(floor_num, int64_t);

	inline void remove();
	inline void remove_local();
	inline Variant get_cover_rect();
	inline Variant cover_rect_at(Variant pos, Variant local_rect, const Location& loc);
	inline bool covers(Variant point);
	inline void show_cover(bool on);
	inline bool is_theft_active();
	inline bool is_stealable(Node dev);
	inline bool is_monitored(Node2D dev);
	inline Variant debug_monitor_callback();
};

#include "LogicController.hpp"
#include "Socket.hpp"
#include "Location.hpp"

inline void CctvCameraOutlet::remove() { this->voidcall("remove"); }
inline void CctvCameraOutlet::remove_local() { this->voidcall("remove_local"); }
inline Variant CctvCameraOutlet::get_cover_rect() { return this->operator()("get_cover_rect"); }
inline Variant CctvCameraOutlet::cover_rect_at(Variant pos, Variant local_rect, const Location& loc) { return this->operator()("cover_rect_at", pos, local_rect, Object(reinterpret_cast<const Object*>(&loc)->address())); }
inline bool CctvCameraOutlet::covers(Variant point) { return this->operator()("covers", point); }
inline void CctvCameraOutlet::show_cover(bool on) { this->voidcall("show_cover", on); }
inline bool CctvCameraOutlet::is_theft_active() { return this->operator()("is_theft_active"); }
inline bool CctvCameraOutlet::is_stealable(Node dev) { return this->operator()("is_stealable", dev); }
inline bool CctvCameraOutlet::is_monitored(Node2D dev) { return this->operator()("is_monitored", dev); }
inline Variant CctvCameraOutlet::debug_monitor_callback() { return this->operator()("debug_monitor_callback"); }

#endif
