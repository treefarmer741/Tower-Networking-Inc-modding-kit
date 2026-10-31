#ifndef TNI_API_HEADER_S4DRAGCABLES
#define TNI_API_HEADER_S4DRAGCABLES
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S4DragCables : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S4DragCables(RefCounted base) : RefCounted{base} {}
	constexpr S4DragCables(uint64_t addr) : RefCounted{addr} {}
	constexpr S4DragCables(Object obj) : S4DragCables{obj.address()} {}
	S4DragCables(Variant variant) : S4DragCables{variant.as_object().address()} {}

	static constexpr double RADIUS = 400.0;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double PERIOD = 3.0;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(probe, Node);

	inline void run();
	inline Variant socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx);
};


inline void S4DragCables::run() { this->voidcall("run"); }
inline Variant S4DragCables::socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx) { return this->operator()("socket_pair_positions", from, to, span, loc_idx); }

#endif
