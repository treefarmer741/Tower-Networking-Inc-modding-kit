#ifndef TNI_API_HEADER_MULTIPLAYERINPUT
#define TNI_API_HEADER_MULTIPLAYERINPUT
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct MultiplayerInput : public MultiplayerSynchronizer {
	using MultiplayerSynchronizer::MultiplayerSynchronizer;

	constexpr MultiplayerInput(MultiplayerSynchronizer base) : MultiplayerSynchronizer{base} {}
	constexpr MultiplayerInput(uint64_t addr) : MultiplayerSynchronizer{addr} {}
	constexpr MultiplayerInput(Object obj) : MultiplayerInput{obj.address()} {}
	MultiplayerInput(Variant variant) : MultiplayerInput{variant.as_object().address()} {}

	PROPERTY(dbg_console_win_scn, Variant);  // Const value type was not supported.

	PROPERTY(mouse_position, Variant);
	PROPERTY(is_idle, bool);
	PROPERTY(motion_grid_snap, bool);
	PROPERTY(input_detect_node, Node2D);

	inline void press_primary();
	inline void press_primary_double();
	inline void release_primary();
	inline void press_t();
	inline void release_t();
	inline void press_r();
	inline void release_r();
};


inline void MultiplayerInput::press_primary() { this->voidcall("press_primary"); }
inline void MultiplayerInput::press_primary_double() { this->voidcall("press_primary_double"); }
inline void MultiplayerInput::release_primary() { this->voidcall("release_primary"); }
inline void MultiplayerInput::press_t() { this->voidcall("press_t"); }
inline void MultiplayerInput::release_t() { this->voidcall("release_t"); }
inline void MultiplayerInput::press_r() { this->voidcall("press_r"); }
inline void MultiplayerInput::release_r() { this->voidcall("release_r"); }

#endif
