#ifndef TNI_API_HEADER_DAYCYCLE
#define TNI_API_HEADER_DAYCYCLE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Daycycle : public Node {
	using Node::Node;

	constexpr Daycycle(Node base) : Node{base} {}
	constexpr Daycycle(uint64_t addr) : Node{addr} {}
	constexpr Daycycle(Object obj) : Daycycle{obj.address()} {}
	Daycycle(Variant variant) : Daycycle{variant.as_object().address()} {}

	inline static const String RESERVED_GROUP_NAME = "pocosia_day_cyclers";  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(day_period, double);
	PROPERTY(day_offset, double);
	PROPERTY(auto_cycle, bool);
	PROPERTY(body_to_rotate, Node3D);
	PROPERTY(sample_period, double);
	PROPERTY(day_timer, Timer);
	PROPERTY(sample_timer, Timer);
	PROPERTY(sampled_day_float, double);
	PROPERTY(sampled_modulator_float, double);

	inline void set_day_float(double new_float);
	inline void start_day_cycle();
};


inline void Daycycle::set_day_float(double new_float) { voidcall("set_day_float", new_float); }
inline void Daycycle::start_day_cycle() { voidcall("start_day_cycle"); }

#endif
