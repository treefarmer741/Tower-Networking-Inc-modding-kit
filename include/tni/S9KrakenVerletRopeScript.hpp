#ifndef TNI_API_HEADER_S9KRAKENVERLETROPESCRIPT
#define TNI_API_HEADER_S9KRAKENVERLETROPESCRIPT
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S9KrakenVerletRopeScript : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S9KrakenVerletRopeScript(RefCounted base) : RefCounted{base} {}
	constexpr S9KrakenVerletRopeScript(uint64_t addr) : RefCounted{addr} {}
	constexpr S9KrakenVerletRopeScript(Object obj) : S9KrakenVerletRopeScript{obj.address()} {}
	S9KrakenVerletRopeScript(Variant variant) : S9KrakenVerletRopeScript{variant.as_object().address()} {}

//	// Inner class RopeLabelAnchor exposed as S9KrakenVerletRopeScriptRopeLabelAnchor
	// Inner class Manager exposed as S9KrakenVerletRopeScriptManager
	static constexpr double SPACING = 75.0;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t MIN_SEGMENTS = 4;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t ITERATIONS = 6;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double GRAVITY_SCALE = 0.5;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double DAMPING = 0.9;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double FLOOR_FRICTION = 0.5;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double SLEEP_SPEED = 0.5;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double SLEEP_TIME = 0.5;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double WAKE_EPS = 2.0;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double TELEPORT_FRACTION = 0.25;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double TELEPORT_MIN = 150.0;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double SUBFLOOR_TOP = 27.0;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double WALL_HALF = 25.0;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t DRAW_SUBDIV = 4;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t SHAPE_POINTS = 64;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(cable, Cable);
	PROPERTY(points, PackedArray<Vector2>);
	PROPERTY(active, bool);

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
	inline void process(double _delta);
	inline PackedArray<Vector2> get_points();
	inline Node2D get_label_anchor(Variant end);
	inline int64_t get_coil_segment_count();
	inline void wake();
	inline void on_end_moved(Variant end);
	inline bool is_still();
	inline void bake();
	inline void step(double dt);
	inline void relayout();
	inline Variant pack_shape(PackedArray<Vector2> pts, Variant xform);
	inline void set_saved_shape(Variant packed, Variant xform);
	inline void draw(const Cable& canvas);
};

#include "Cable.hpp"

inline bool S9KrakenVerletRopeScript::uses_tether() { return this->operator()("uses_tether"); }
inline Variant S9KrakenVerletRopeScript::get_pieces() { return this->operator()("get_pieces"); }
inline bool S9KrakenVerletRopeScript::is_ready() { return this->operator()("is_ready"); }
inline void S9KrakenVerletRopeScript::enter_tree() { this->voidcall("enter_tree"); }
inline void S9KrakenVerletRopeScript::ends_ready() { this->voidcall("ends_ready"); }
inline void S9KrakenVerletRopeScript::configure() { this->voidcall("configure"); }
inline void S9KrakenVerletRopeScript::make() { this->voidcall("make"); }
inline void S9KrakenVerletRopeScript::after_make() { this->voidcall("after_make"); }
inline void S9KrakenVerletRopeScript::unmake() { this->voidcall("unmake"); }
inline void S9KrakenVerletRopeScript::on_end_picked() { this->voidcall("on_end_picked"); }
inline void S9KrakenVerletRopeScript::tout_idle() { this->voidcall("tout_idle"); }
inline void S9KrakenVerletRopeScript::force_unidle() { this->voidcall("force_unidle"); }
inline void S9KrakenVerletRopeScript::elevator_hide() { this->voidcall("elevator_hide"); }
inline void S9KrakenVerletRopeScript::elevator_place(Variant pos_delta) { this->voidcall("elevator_place", pos_delta); }
inline void S9KrakenVerletRopeScript::process(double _delta) { this->voidcall("process", _delta); }
inline PackedArray<Vector2> S9KrakenVerletRopeScript::get_points() { return this->operator()("get_points"); }
inline Node2D S9KrakenVerletRopeScript::get_label_anchor(Variant end) { return Node2D(this->operator()("get_label_anchor", end).as_object().address()); }
inline int64_t S9KrakenVerletRopeScript::get_coil_segment_count() { return this->operator()("get_coil_segment_count"); }
inline void S9KrakenVerletRopeScript::wake() { this->voidcall("wake"); }
inline void S9KrakenVerletRopeScript::on_end_moved(Variant end) { this->voidcall("on_end_moved", end); }
inline bool S9KrakenVerletRopeScript::is_still() { return this->operator()("is_still"); }
inline void S9KrakenVerletRopeScript::bake() { this->voidcall("bake"); }
inline void S9KrakenVerletRopeScript::step(double dt) { this->voidcall("step", dt); }
inline void S9KrakenVerletRopeScript::relayout() { this->voidcall("relayout"); }
inline Variant S9KrakenVerletRopeScript::pack_shape(PackedArray<Vector2> pts, Variant xform) { return this->operator()("pack_shape", pts, xform); }
inline void S9KrakenVerletRopeScript::set_saved_shape(Variant packed, Variant xform) { this->voidcall("set_saved_shape", packed, xform); }
inline void S9KrakenVerletRopeScript::draw(const Cable& canvas) { this->voidcall("draw", Object(reinterpret_cast<const Object*>(&canvas)->address())); }

#endif
