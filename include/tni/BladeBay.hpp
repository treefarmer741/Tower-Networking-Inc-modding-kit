#ifndef TNI_API_HEADER_BLADEBAY
#define TNI_API_HEADER_BLADEBAY
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "MountingArea.hpp"

struct BladeBay : public MountingArea {
	using MountingArea::MountingArea;

	constexpr BladeBay(MountingArea base) : MountingArea{base} {}
	constexpr BladeBay(uint64_t addr) : MountingArea{addr} {}
	constexpr BladeBay(Object obj) : BladeBay{obj.address()} {}
	BladeBay(Variant variant) : BladeBay{variant.as_object().address()} {}


	PROPERTY(power_socket, Socket);
	PROPERTY(link_socket, LogicControllerSocket);
	PROPERTY(slot_sprite, Sprite2D);
	PROPERTY(seated, DeviceUnit);
	PROPERTY(compatible_mounting, int64_t);
	PROPERTY(sliding_sfx, NodePath);
	PROPERTY(bdr, NodePath);
	PROPERTY(hr, ColorRect);
	PROPERTY(ext_db_tracker, Variant);

	inline Variant compatible_with(const DeviceUnit& du);
	inline Variant test_containment_and_compat(const DeviceUnit& dubod);
	inline void play_sfx_slide_in();
	inline void play_sfx_slide_out();
	inline void show_hr();
	inline void hide_hr();
	inline Variant get_valid_y_bounds();
};

#include "Socket.hpp"
#include "LogicControllerSocket.hpp"
#include "DeviceUnit.hpp"

inline Variant BladeBay::compatible_with(const DeviceUnit& du) { return this->operator()("compatible_with", Object(reinterpret_cast<const Object*>(&du)->address())); }
inline Variant BladeBay::test_containment_and_compat(const DeviceUnit& dubod) { return this->operator()("test_containment_and_compat", Object(reinterpret_cast<const Object*>(&dubod)->address())); }
inline void BladeBay::play_sfx_slide_in() { this->voidcall("play_sfx_slide_in"); }
inline void BladeBay::play_sfx_slide_out() { this->voidcall("play_sfx_slide_out"); }
inline void BladeBay::show_hr() { this->voidcall("show_hr"); }
inline void BladeBay::hide_hr() { this->voidcall("hide_hr"); }
inline Variant BladeBay::get_valid_y_bounds() { return this->operator()("get_valid_y_bounds"); }

#endif
