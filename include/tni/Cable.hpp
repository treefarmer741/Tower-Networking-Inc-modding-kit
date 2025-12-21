#ifndef TNI_API_HEADER_CABLE
#define TNI_API_HEADER_CABLE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Cable : public Node2D {
	using Node2D::Node2D;

	constexpr Cable(Node2D base) : Node2D{base} {}
	constexpr Cable(uint64_t addr) : Node2D{addr} {}
	constexpr Cable(Object obj) : Cable{obj.address()} {}
	Cable(Variant variant) : Cable{variant.as_object().address()} {}

	static constexpr int64_t ZINDEX = 1000;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t TOUT_TICK_TOLERANCE = 10;  // NOTE: You should recompile your mod if this value changes!
	PROPERTY(CablePieceScene10, Variant);  // Const value type was not supported.
	PROPERTY(CablePieceScene30, Variant);  // Const value type was not supported.
	PROPERTY(CablePieceScene50, Variant);  // Const value type was not supported.
	PROPERTY(CablePieceScene25, Variant);  // Const value type was not supported.
	static constexpr double DELAY_TIMER_FLT = 0.3;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double LINVELT = 5.0;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(with_mouse_stretch_factor, Variant);
	PROPERTY(without_mouse_stretch_factor, Variant);
	PROPERTY(cable_width, double);
	PROPERTY(cable_color, Variant);
	PROPERTY(cable_length, double);
	PROPERTY(blacklist_nodes_as_ends, Variant);
	PROPERTY(pixels_per_cable_piece, int64_t);
	PROPERTY(piece_scn, PackedScene);
	PROPERTY(save_cable_length, bool);
	PROPERTY(end_a, Node2D);
	PROPERTY(end_b, Node2D);
	PROPERTY(cable_pieces, Variant);
	PROPERTY(cable_idle, Timer);
	PROPERTY(initial_setup_grace, Timer);
	PROPERTY(delay_timer, Timer);
	PROPERTY(smoothing_enabled, bool);
	PROPERTY(mvtwn, Tween);
	PROPERTY(smooth_positions, Variant);
	PROPERTY(smooth_factor, double);
	PROPERTY(smooth_initialized, bool);

	inline Variant get_other_end(Variant end);
	inline void reposition(Variant newpos);
	inline void elevator_move(Variant pos_delta);
	inline void force_cable_unidle();
	inline void remove_and_free_object();
	inline void unmake_cable();
};


inline Variant Cable::get_other_end(Variant end) { return operator()("get_other_end", end); }
inline void Cable::reposition(Variant newpos) { voidcall("reposition", newpos); }
inline void Cable::elevator_move(Variant pos_delta) { voidcall("elevator_move", pos_delta); }
inline void Cable::force_cable_unidle() { voidcall("force_cable_unidle"); }
inline void Cable::remove_and_free_object() { voidcall("remove_and_free_object"); }
inline void Cable::unmake_cable() { voidcall("unmake_cable"); }

#endif
