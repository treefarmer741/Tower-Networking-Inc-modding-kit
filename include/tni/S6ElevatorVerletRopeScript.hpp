#ifndef TNI_API_HEADER_S6ELEVATORVERLETROPESCRIPT
#define TNI_API_HEADER_S6ELEVATORVERLETROPESCRIPT
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S6ElevatorVerletRopeScript : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S6ElevatorVerletRopeScript(RefCounted base) : RefCounted{base} {}
	constexpr S6ElevatorVerletRopeScript(uint64_t addr) : RefCounted{addr} {}
	constexpr S6ElevatorVerletRopeScript(Object obj) : S6ElevatorVerletRopeScript{obj.address()} {}
	S6ElevatorVerletRopeScript(Variant variant) : S6ElevatorVerletRopeScript{variant.as_object().address()} {}

//	// Inner class RopeLabelAnchor exposed as S6ElevatorVerletRopeScriptRopeLabelAnchor
	// Inner class Manager exposed as S6ElevatorVerletRopeScriptManager
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

inline bool S6ElevatorVerletRopeScript::uses_tether() { return this->operator()("uses_tether"); }
inline Variant S6ElevatorVerletRopeScript::get_pieces() { return this->operator()("get_pieces"); }
inline bool S6ElevatorVerletRopeScript::is_ready() { return this->operator()("is_ready"); }
inline void S6ElevatorVerletRopeScript::enter_tree() { this->voidcall("enter_tree"); }
inline void S6ElevatorVerletRopeScript::ends_ready() { this->voidcall("ends_ready"); }
inline void S6ElevatorVerletRopeScript::configure() { this->voidcall("configure"); }
inline void S6ElevatorVerletRopeScript::make() { this->voidcall("make"); }
inline void S6ElevatorVerletRopeScript::after_make() { this->voidcall("after_make"); }
inline void S6ElevatorVerletRopeScript::unmake() { this->voidcall("unmake"); }
inline void S6ElevatorVerletRopeScript::on_end_picked() { this->voidcall("on_end_picked"); }
inline void S6ElevatorVerletRopeScript::tout_idle() { this->voidcall("tout_idle"); }
inline void S6ElevatorVerletRopeScript::force_unidle() { this->voidcall("force_unidle"); }
inline void S6ElevatorVerletRopeScript::elevator_hide() { this->voidcall("elevator_hide"); }
inline void S6ElevatorVerletRopeScript::elevator_place(Variant pos_delta) { this->voidcall("elevator_place", pos_delta); }
inline void S6ElevatorVerletRopeScript::process(double _delta) { this->voidcall("process", _delta); }
inline PackedArray<Vector2> S6ElevatorVerletRopeScript::get_points() { return this->operator()("get_points"); }
inline Node2D S6ElevatorVerletRopeScript::get_label_anchor(Variant end) { return Node2D(this->operator()("get_label_anchor", end).as_object().address()); }
inline int64_t S6ElevatorVerletRopeScript::get_coil_segment_count() { return this->operator()("get_coil_segment_count"); }
inline void S6ElevatorVerletRopeScript::wake() { this->voidcall("wake"); }
inline void S6ElevatorVerletRopeScript::on_end_moved(Variant end) { this->voidcall("on_end_moved", end); }
inline bool S6ElevatorVerletRopeScript::is_still() { return this->operator()("is_still"); }
inline void S6ElevatorVerletRopeScript::bake() { this->voidcall("bake"); }
inline void S6ElevatorVerletRopeScript::step(double dt) { this->voidcall("step", dt); }
inline void S6ElevatorVerletRopeScript::relayout() { this->voidcall("relayout"); }
inline Variant S6ElevatorVerletRopeScript::pack_shape(PackedArray<Vector2> pts, Variant xform) { return this->operator()("pack_shape", pts, xform); }
inline void S6ElevatorVerletRopeScript::set_saved_shape(Variant packed, Variant xform) { this->voidcall("set_saved_shape", packed, xform); }
inline void S6ElevatorVerletRopeScript::draw(const Cable& canvas) { this->voidcall("draw", Object(reinterpret_cast<const Object*>(&canvas)->address())); }

#endif
