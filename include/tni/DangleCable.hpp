#ifndef TNI_API_HEADER_DANGLECABLE
#define TNI_API_HEADER_DANGLECABLE
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Cable.hpp"

struct DangleCable : public Cable {
	using Cable::Cable;

	constexpr DangleCable(Cable base) : Cable{base} {}
	constexpr DangleCable(uint64_t addr) : Cable{addr} {}
	constexpr DangleCable(Object obj) : DangleCable{obj.address()} {}
	DangleCable(Variant variant) : DangleCable{variant.as_object().address()} {}


	PROPERTY(product_name, String);
	PROPERTY(plug_scene_path, String);
	PROPERTY(plug, Plug);
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

	inline DangleCable build_and_add(Node parent_node, Variant world_anchor_pos, String p_plug_scene_path, double p_cable_length);
	inline void set_highlight(bool enabled);
	inline Variant get_other_end(Variant end);
	inline void reposition(Variant newpos);
	inline void elevator_move(Variant pos_delta);
	inline void force_cable_unidle();
	inline void remove_and_free_object();
	inline void unmake_cable();
};

#include "Plug.hpp"
#include "DangleCable.hpp"

inline DangleCable DangleCable::build_and_add(Node parent_node, Variant world_anchor_pos, String p_plug_scene_path, double p_cable_length) { return DangleCable(this->operator()("build_and_add", parent_node, world_anchor_pos, p_plug_scene_path, p_cable_length).as_object().address()); }
inline void DangleCable::set_highlight(bool enabled) { this->voidcall("set_highlight", enabled); }
inline Variant DangleCable::get_other_end(Variant end) { return this->operator()("get_other_end", end); }
inline void DangleCable::reposition(Variant newpos) { this->voidcall("reposition", newpos); }
inline void DangleCable::elevator_move(Variant pos_delta) { this->voidcall("elevator_move", pos_delta); }
inline void DangleCable::force_cable_unidle() { this->voidcall("force_cable_unidle"); }
inline void DangleCable::remove_and_free_object() { this->voidcall("remove_and_free_object"); }
inline void DangleCable::unmake_cable() { this->voidcall("unmake_cable"); }

#endif
