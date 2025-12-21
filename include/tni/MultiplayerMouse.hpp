#ifndef TNI_API_HEADER_MULTIPLAYERMOUSE
#define TNI_API_HEADER_MULTIPLAYERMOUSE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MultiplayerMouse : public Node2D {
	using Node2D::Node2D;

	constexpr MultiplayerMouse(Node2D base) : Node2D{base} {}
	constexpr MultiplayerMouse(uint64_t addr) : Node2D{addr} {}
	constexpr MultiplayerMouse(Object obj) : MultiplayerMouse{obj.address()} {}
	MultiplayerMouse(Variant variant) : MultiplayerMouse{variant.as_object().address()} {}

	PROPERTY(HIGH_BLUE_COLARR, Variant);  // Const value type was not supported.

	PROPERTY(multi_double_pick, Variant);
	PROPERTY(curr_picked_original_pos, Variant);
	PROPERTY(curr_hover, Node2D);
	PROPERTY(curr_picked, Variant);
	PROPERTY(player_name, String);
	PROPERTY(camera, Camera2D);
	PROPERTY(hovertxt, RichTextLabel);
	PROPERTY(rulerlbl, Label);
	PROPERTY(grid_ov, Node2D);
	PROPERTY(mpinput, MultiplayerInput);
	PROPERTY(peer_id, int64_t);
	PROPERTY(curr_drag, Variant);
	PROPERTY(primary_double_held, bool);
	PROPERTY(draw_ruler, bool);
	PROPERTY(ruler_start, Variant);

	inline void click_selection(NodePath np);
	inline void pick_selection(NodePath np);
	inline void drop_curr_picked();
	inline void show_redcross();
	inline void hide_redcross();
	inline Variant cast_and_detect_from_self_radius();
	inline Variant cast_and_detect_from_self_position();
	inline void show_hint(String msg, Variant fontcol);
};

#include "MultiplayerInput.hpp"

inline void MultiplayerMouse::click_selection(NodePath np) { voidcall("click_selection", np); }
inline void MultiplayerMouse::pick_selection(NodePath np) { voidcall("pick_selection", np); }
inline void MultiplayerMouse::drop_curr_picked() { voidcall("drop_curr_picked"); }
inline void MultiplayerMouse::show_redcross() { voidcall("show_redcross"); }
inline void MultiplayerMouse::hide_redcross() { voidcall("hide_redcross"); }
inline Variant MultiplayerMouse::cast_and_detect_from_self_radius() { return operator()("cast_and_detect_from_self_radius"); }
inline Variant MultiplayerMouse::cast_and_detect_from_self_position() { return operator()("cast_and_detect_from_self_position"); }
inline void MultiplayerMouse::show_hint(String msg, Variant fontcol) { voidcall("show_hint", msg, fontcol); }

#endif
