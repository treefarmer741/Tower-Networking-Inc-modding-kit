#ifndef TNI_API_HEADER_S0BAREPHYSICS
#define TNI_API_HEADER_S0BAREPHYSICS
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S0BarePhysics : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S0BarePhysics(RefCounted base) : RefCounted{base} {}
	constexpr S0BarePhysics(uint64_t addr) : RefCounted{addr} {}
	constexpr S0BarePhysics(Object obj) : S0BarePhysics{obj.address()} {}
	S0BarePhysics(Variant variant) : S0BarePhysics{variant.as_object().address()} {}

	static constexpr double PIECE_LEN = 25.0;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t CHAIN = 30;  // NOTE: You should recompile your mod if this value changes!
//	// Inner class IntegratingBody exposed as S0BarePhysicsIntegratingBody

	PROPERTY(probe, Node);

	inline void run();
	inline double arg_settle();
	inline Variant socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx);
};


inline void S0BarePhysics::run() { this->voidcall("run"); }
inline double S0BarePhysics::arg_settle() { return this->operator()("arg_settle"); }
inline Variant S0BarePhysics::socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx) { return this->operator()("socket_pair_positions", from, to, span, loc_idx); }

#endif
