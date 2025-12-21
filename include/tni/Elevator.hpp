#ifndef TNI_API_HEADER_ELEVATOR
#define TNI_API_HEADER_ELEVATOR
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Elevator : public Area2D {
	using Area2D::Area2D;

	constexpr Elevator(Area2D base) : Area2D{base} {}
	constexpr Elevator(uint64_t addr) : Area2D{addr} {}
	constexpr Elevator(Object obj) : Elevator{obj.address()} {}
	Elevator(Variant variant) : Elevator{variant.as_object().address()} {}


	PROPERTY(placer, DevicePlacer);
	PROPERTY(label_floor_num, int64_t);
	PROPERTY(delivery_period, double);
	PROPERTY(cargo_count_display, NodePath);
	PROPERTY(delivery_backlog, Variant);
	PROPERTY(delivery_timer, Timer);
	PROPERTY(floorbase, int64_t);
	PROPERTY(animp, AnimationPlayer);
	PROPERTY(audip, AudioStreamPlayer2D);
	PROPERTY(dst_floor_idx, int64_t);
	PROPERTY(has_dst_floor, bool);
	PROPERTY(cargo, Variant);

	inline void time_mult_updated(double _time_mult_delta);
	inline Variant debug_monitor_callback();
	inline void instant_summon(int64_t dst_idx);
	inline void add_delivery_backlog(Variant pd);
	inline void receive_delivery();
	inline void retry_delivery_attempt();
	inline void spawn_delivery_backlog();
};

#include "DevicePlacer.hpp"

inline void Elevator::time_mult_updated(double _time_mult_delta) { voidcall("time_mult_updated", _time_mult_delta); }
inline Variant Elevator::debug_monitor_callback() { return operator()("debug_monitor_callback"); }
inline void Elevator::instant_summon(int64_t dst_idx) { voidcall("instant_summon", dst_idx); }
inline void Elevator::add_delivery_backlog(Variant pd) { voidcall("add_delivery_backlog", pd); }
inline void Elevator::receive_delivery() { voidcall("receive_delivery"); }
inline void Elevator::retry_delivery_attempt() { voidcall("retry_delivery_attempt"); }
inline void Elevator::spawn_delivery_backlog() { voidcall("spawn_delivery_backlog"); }

#endif
