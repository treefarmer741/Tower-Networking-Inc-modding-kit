#ifndef TNI_API_HEADER_MODULEHOLE
#define TNI_API_HEADER_MODULEHOLE
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "BladeBay.hpp"

struct ModuleHole : public BladeBay {
	using BladeBay::BladeBay;

	constexpr ModuleHole(BladeBay base) : BladeBay{base} {}
	constexpr ModuleHole(uint64_t addr) : BladeBay{addr} {}
	constexpr ModuleHole(Object obj) : ModuleHole{obj.address()} {}
	ModuleHole(Variant variant) : ModuleHole{variant.as_object().address()} {}


	PROPERTY(cable_slot, CableSlot);
	PROPERTY(power_socket, Socket);
	PROPERTY(link_socket, LogicControllerSocket);
	PROPERTY(slot_sprite, Sprite2D);
	PROPERTY(seated, DeviceUnit);
	PROPERTY(compatible_mounting, int64_t);
	PROPERTY(sliding_sfx, NodePath);
	PROPERTY(bdr, NodePath);
	PROPERTY(hr, ColorRect);
	PROPERTY(ext_db_tracker, Variant);

	inline void play_sfx_slide_in();
	inline Variant compatible_with(const DeviceUnit& du);
	inline Variant test_containment_and_compat(const DeviceUnit& dubod);
	inline void play_sfx_slide_out();
	inline void show_hr();
	inline void hide_hr();
	inline Variant get_valid_y_bounds();
};

#include "CableSlot.hpp"
#include "Socket.hpp"
#include "LogicControllerSocket.hpp"
#include "DeviceUnit.hpp"

inline void ModuleHole::play_sfx_slide_in() { this->voidcall("play_sfx_slide_in"); }
inline Variant ModuleHole::compatible_with(const DeviceUnit& du) { return this->operator()("compatible_with", Object(reinterpret_cast<const Object*>(&du)->address())); }
inline Variant ModuleHole::test_containment_and_compat(const DeviceUnit& dubod) { return this->operator()("test_containment_and_compat", Object(reinterpret_cast<const Object*>(&dubod)->address())); }
inline void ModuleHole::play_sfx_slide_out() { this->voidcall("play_sfx_slide_out"); }
inline void ModuleHole::show_hr() { this->voidcall("show_hr"); }
inline void ModuleHole::hide_hr() { this->voidcall("hide_hr"); }
inline Variant ModuleHole::get_valid_y_bounds() { return this->operator()("get_valid_y_bounds"); }

#endif
