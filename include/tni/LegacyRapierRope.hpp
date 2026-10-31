#ifndef TNI_API_HEADER_LEGACYRAPIERROPE
#define TNI_API_HEADER_LEGACYRAPIERROPE
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct LegacyRapierRope : public RefCounted {
	using RefCounted::RefCounted;

	constexpr LegacyRapierRope(RefCounted base) : RefCounted{base} {}
	constexpr LegacyRapierRope(uint64_t addr) : RefCounted{addr} {}
	constexpr LegacyRapierRope(Object obj) : LegacyRapierRope{obj.address()} {}
	LegacyRapierRope(Variant variant) : LegacyRapierRope{variant.as_object().address()} {}

	PROPERTY(CablePieceScene10, Variant);  // Const value type was not supported.
	PROPERTY(CablePieceScene30, Variant);  // Const value type was not supported.
	PROPERTY(CablePieceScene50, Variant);  // Const value type was not supported.
	PROPERTY(CablePieceScene25, Variant);  // Const value type was not supported.

	PROPERTY(cable, Cable);
	PROPERTY(pixels_per_cable_piece, int64_t);
	PROPERTY(piece_scn, PackedScene);
	PROPERTY(cable_pieces, Variant);
	PROPERTY(smoothing_enabled, bool);
	PROPERTY(smooth_positions, Variant);
	PROPERTY(smooth_factor, double);
	PROPERTY(smooth_initialized, bool);

	inline bool uses_tether();
	inline Variant get_pieces();
	inline bool is_ready();
	inline void enter_tree();
	inline void ends_ready();
	inline void configure();
	inline void make();
	inline void after_make();
	inline void unmake();
	inline void on_end_picked();
	inline void tout_idle();
	inline void force_unidle();
	inline void elevator_hide();
	inline void elevator_place(Variant pos_delta);
	inline PackedArray<Vector2> get_points();
	inline Node2D get_label_anchor(Node end);
	inline int64_t get_coil_segment_count();
	inline void process(double delta);
	inline void draw(const Cable& canvas);
	inline void reset_tout_enforcement();
};

#include "Cable.hpp"

inline bool LegacyRapierRope::uses_tether() { return this->operator()("uses_tether"); }
inline Variant LegacyRapierRope::get_pieces() { return this->operator()("get_pieces"); }
inline bool LegacyRapierRope::is_ready() { return this->operator()("is_ready"); }
inline void LegacyRapierRope::enter_tree() { this->voidcall("enter_tree"); }
inline void LegacyRapierRope::ends_ready() { this->voidcall("ends_ready"); }
inline void LegacyRapierRope::configure() { this->voidcall("configure"); }
inline void LegacyRapierRope::make() { this->voidcall("make"); }
inline void LegacyRapierRope::after_make() { this->voidcall("after_make"); }
inline void LegacyRapierRope::unmake() { this->voidcall("unmake"); }
inline void LegacyRapierRope::on_end_picked() { this->voidcall("on_end_picked"); }
inline void LegacyRapierRope::tout_idle() { this->voidcall("tout_idle"); }
inline void LegacyRapierRope::force_unidle() { this->voidcall("force_unidle"); }
inline void LegacyRapierRope::elevator_hide() { this->voidcall("elevator_hide"); }
inline void LegacyRapierRope::elevator_place(Variant pos_delta) { this->voidcall("elevator_place", pos_delta); }
inline PackedArray<Vector2> LegacyRapierRope::get_points() { return this->operator()("get_points"); }
inline Node2D LegacyRapierRope::get_label_anchor(Node end) { return Node2D(this->operator()("get_label_anchor", end).as_object().address()); }
inline int64_t LegacyRapierRope::get_coil_segment_count() { return this->operator()("get_coil_segment_count"); }
inline void LegacyRapierRope::process(double delta) { this->voidcall("process", delta); }
inline void LegacyRapierRope::draw(const Cable& canvas) { this->voidcall("draw", Object(reinterpret_cast<const Object*>(&canvas)->address())); }
inline void LegacyRapierRope::reset_tout_enforcement() { this->voidcall("reset_tout_enforcement"); }

#endif
