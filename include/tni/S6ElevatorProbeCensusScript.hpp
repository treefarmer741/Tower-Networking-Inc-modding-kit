#ifndef TNI_API_HEADER_S6ELEVATORPROBECENSUSSCRIPT
#define TNI_API_HEADER_S6ELEVATORPROBECENSUSSCRIPT
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S6ElevatorProbeCensusScript : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S6ElevatorProbeCensusScript(RefCounted base) : RefCounted{base} {}
	constexpr S6ElevatorProbeCensusScript(uint64_t addr) : RefCounted{addr} {}
	constexpr S6ElevatorProbeCensusScript(Object obj) : S6ElevatorProbeCensusScript{obj.address()} {}
	S6ElevatorProbeCensusScript(Variant variant) : S6ElevatorProbeCensusScript{variant.as_object().address()} {}

	static constexpr double MOVING_SPEED = 2.0;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(world, Node);
	PROPERTY(cables, Variant);
	PROPERTY(links, Variant);
	PROPERTY(devices, Variant);

	inline void refresh();
	inline Variant count();
	inline Variant physics_population();
	inline Variant moving_pieces();
	inline String end_kind(Variant e);
	inline int64_t awake_pieces(Variant subset);
	inline double max_stretch(Variant subset);
};


inline void S6ElevatorProbeCensusScript::refresh() { this->voidcall("refresh"); }
inline Variant S6ElevatorProbeCensusScript::count() { return this->operator()("count"); }
inline Variant S6ElevatorProbeCensusScript::physics_population() { return this->operator()("physics_population"); }
inline Variant S6ElevatorProbeCensusScript::moving_pieces() { return this->operator()("moving_pieces"); }
inline String S6ElevatorProbeCensusScript::end_kind(Variant e) { return this->operator()("end_kind", e); }
inline int64_t S6ElevatorProbeCensusScript::awake_pieces(Variant subset) { return this->operator()("awake_pieces", subset); }
inline double S6ElevatorProbeCensusScript::max_stretch(Variant subset) { return this->operator()("max_stretch", subset); }

#endif
